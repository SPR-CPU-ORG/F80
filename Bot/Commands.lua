package.path = package.path .. ';.luarocks/share/lua/5.2/?.lua'
  .. ';.luarocks/share/lua/5.2/?/init.lua'
package.cpath = package.cpath .. ';.luarocks/lib/lua/5.2/?.so'
--
-------------- Packages
function RedisDb()
local Redis require 'redis'
local FakeRedis = require 'fakeredis'
local params = {
  host = os.getenv('REDIS_HOST') or '127.0.0.1',
  port = tonumber(os.getenv('REDIS_PORT') or 6379)
}
local database = os.getenv('REDIS_DB')
local password = os.getenv('REDIS_PASSWORD')
-- Overwrite HGETALL
Redis.commands.hgetall = Redis.command('hgetall', {
  response = function(reply, command, ...)
    local new_reply = { }
    for i = 1, #reply, 2 do new_reply[reply[i]] = reply[i + 1] end
    return new_reply
  end
})
local redis = nil
-- Won't launch an error if fails
local ok = pcall(function()
  redis = Redis.connect(params)
end)
if not ok then
  local fake_func = function()
    print('\27[31mCan\'t connect with Redis, install/configure it!\27[39m')
  end
  fake_func()
  fake = FakeRedis.new()
  print('\27[31mRedis addr: '..params.host..'\27[39m')
  print('\27[31mRedis port: '..params.port..'\27[39m')
  redis = setmetatable({fakeredis=true}, {
  __index = function(a, b)
    if b ~= 'data' and fake[b] then
      fake_func(b)
    end
    return fake[b] or fake_func
  end })
else
  if password then
    redis:auth(password)
  end
  if database then
    redis:select(database)
  end
end
return redis
end


--
--
https = require "ssl.https"
ltn12 = require "ltn12"
json = require "cjson"
serpent = require "serpent"
curl = require 'cURL'
URL = require 'socket.url'
JSON = require 'dkjson'
clr = require 'term.colors'
redis = RedisDb() --(loadfile "./Bot/libs/redis.lua")()
cli = (loadfile './Bot/TgLib/cliLIBS.lua')()
api = (loadfile './Bot/TgLib/apiLIBS.lua')()
utils = './Bot/Utils/'
------
append_ids_to_msg = false
-------------------- Ranks
------
rank = (loadfile utils .. 'Ranks.lua')()
lang = (loadfile utils .. 'Lang.lua')()
-----------------------------------
Upgrade_User = (loadfile utils .. 'UpGrade_User.lua')()
----------------------------------------
Message_Checks = (loadfile utils .. 'Message_Checks.lua')()
----------------------------------------
ApiErrors = {
	[101] = 'Not enough rights to kick/unban chat member', --SUPERGROUP: bot is not admin
	[102] = 'USER_ADMIN_INVALID', --SUPERGROUP: trying to kick an admin
	[103] = 'method is available for supergroup chats only', --NORMAL: trying to unban
	[104] = 'Only creator of the group can kick administrators from the group', --NORMAL: trying to kick an admin
	[105] = 'Bad Request: Need to be inviter of the user to kick it from the group', --NORMAL: bot is not an admin or everyone is an admin
	[106] = 'USER_NOT_PARTICIPANT', --NORMAL: trying to kick an user that is not in the group
	[107] = 'CHAT_ADMIN_REQUIRED', --NORMAL: bot is not an admin or everyone is an admin
	[108] = 'there is no administrators in the private chat', --something asked in a private chat with the api methods 2.1
	[109] = 'Wrong URL host', --hyperlink not valid
	[110] = 'PEER_ID_INVALID', --user never started the bot
	[111] = 'message is not modified', --the edit message method hasn't modified the message
	[112] = 'Can\'t parse message text: Can\'t find end of the entity starting at byte offset %d+', --the markdown is wrong and breaks the delivery
	[113] = 'group chat is migrated to a supergroup chat', --group updated to supergroup
	[114] = 'Message can\'t be forwarded', --unknown
	[115] = 'Message text is empty', --empty message
	[116] = 'message not found', --message id invalid, I guess
	[117] = 'chat not found', --I don't know
	[118] = 'Message is too long', --over 4096 char
	[119] = 'User not found', --unknown user_id
	[120] = 'Can\'t parse reply keyboard markup JSON object', --keyboard table invalid
	[121] = 'Field \\\"inline_keyboard\\\" of the InlineKeyboardMarkup should be an Array of Arrays', --inline keyboard is not an array of array
	[122] = 'Can\'t parse inline keyboard button: InlineKeyboardButton should be an Object',
	[123] = 'Bad Request: Object expected as reply markup', --empty inline keyboard table
	[124] = 'QUERY_ID_INVALID', --callback query id invalid
	[125] = 'CHANNEL_PRIVATE', --I don't know
	[126] = 'MESSAGE_TOO_LONG', --text of an inline callback answer is too long
	[127] = 'wrong user_id specified', --invalid user_id
	[128] = 'Too big total timeout [%d%.]+', --something about spam an inline keyboards
	[129] = 'BUTTON_DATA_INVALID', --callback_data string invalid
	[130] = 'Type of file to send mismatch', --trying to send a media with the wrong method
	[131] = 'MESSAGE_ID_INVALID', --I don't know. Probably passing a string as message id
	[132] = 'Can\'t parse inline keyboard button: Can\'t find field "text"', --the text of a button could be nil
	[133] = 'Can\'t parse inline keyboard button: Field "text" must be of type String',
	[134] = 'USER_ID_INVALID',
	[135] = 'CHAT_INVALID',
	[136] = 'USER_DEACTIVATED', --deleted account, probably
	[137] = 'Can\'t parse inline keyboard button: Text buttons are unallowed in the inline keyboard',
	[138] = 'Message was not forwarded',
	[139] = 'Can\'t parse inline keyboard button: Field \\\"text\\\" must be of type String', --"text" field in a button object is not a string
	[140] = 'Channel invalid', --/shrug
	[141] = 'Wrong message entity: Unsupproted URL protocol', --username in an inline link [word](@username) (only?)
	[142] = 'Wrong message entity: URL host is empty', --inline link without link [word]()
	[143] = 'there is no photo in the request',
	[144] = 'Can\'t parse message text: Unsupported start tag "%w+" at byte offset %d+',
	[145] = 'Can\'t parse message text: Expected end tag at byte offset %d+',
	[146] = 'BUTTON_URL_INVALID', --invalid url (inline buttons)
	[147] = 'Message must be non-empty', --example: ```   ```
	[148] = 'Can\'t parse message text: Unmatched end tag at byte offset'
	[403] = 'Bot was blocked by the user', --user blocked the bot
	[429] = 'Too many requests: retry later', --the bot is hitting api limits
	[430] = 'Too big total timeout', --too many callback_data requests
}
--------------------------------------
function IsFile(name)
  local f = io.open(name, 'r')
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end
---------------------------------------
function saveConfig(data, file, extra)
  local data = data or _config
  local file = file or config_file
  file = io.open(file, 'w+')
  local serialized = serpent.block(data, {comment = false, name = '_'})
  if extra then
    if extra == 'noname' then
      serialized = serpent.block(data, {comment=false})
    else
      serialized = serpent.dump(data)
    end
  end
  file:write(serialized)
  file:close()
end
--------------------------------------
 function msgValid(msg)
  if msg.date_ < (os.time - 7) then
    print(clr.red .. 'Unknown Message :(\n Message Is OLD' .. clr.reset)
    return false
  end
  if not msg.chat_id_ then
    print(clr.red .. 'Unknown Message :(\n ChatID CotFound :|' .. clr.reset)
    return false
  end
  if not msg.sender_user_id_ then
    print(clr.red .. 'Unknown Message :(\n No SenderUserID' .. clr.reset)
    return false
  end
  if msg.sender_user_id_ == 777000 then
    print(clr.red .. 'Unknown Message :(\n Telegram Messages' .. clr.reset)
    return false
  end
  return true
 end
-----------------
function matchPattern(pattern, text)
  if text then
    local matches = { string.match(text, pattern) }
    if next(matches) then
      return matches
    end
  end
end
--\\ Patterns Check
function runPlugin(msg, matches, plugin)
  if plugin.run then
    local result = plugin.run(msg, matches)
    if result then
       sendText(msg.chat_id_, msg.id_, result)
    end
  end
end
--\\Run Plugins
function appendIds(arg, data)
  local msg = arg.msg
  msg.first_name_ = data.first_name_
  msg.last_name_ = data.last_name_
  msg.type_ = data.type_
  msg.username_ = data.username_
  runPlugin(msg, arg.matches, arg.plugin)
end
---------------------------------------------------------


     
