package.path = package.path .. ';.luarocks/share/lua/5.2/?.lua'
  .. ';.luarocks/share/lua/5.2/?/init.lua'
package.cpath = package.cpath .. ';.luarocks/lib/lua/5.2/?.so'
--
-------------- Packages
function RedisDb()
local Redis = require 'redis'
local FakeRedis = require 'fakeredis'
local params = {
  host = os.getenv('REDIS_HOST') or '127.0.0.1',
  port = tonumber(os.getenv('REDIS_PORT') or 6379)
}
local database = 0
local password = 'sprcpu1234'
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
json = require "dkjson"
serpent = require "serpent"
URL = require 'socket.url'
JSON = require 'dkjson'
clr = require 'term.colors'
redis = RedisDb() 
cli = (loadfile './Bot/TgLib/cliLIBS.lua')()
api = (loadfile './Bot/TgLib/apiLIBS.lua')()
utils = './Bot/Utils/'
------
------
rank = (loadfile './Bot/Utils/Ranks.lua')()
lang = (loadfile './Bot/Utils/Lang.lua')()
-----------------------------------
Message_Checks = (loadfile './Bot/Utils/Message_Checks.lua')()
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
  [148] = 'Can\'t parse message text: Unmatched end tag at byte offset',
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
  if msg.date_ < (os.time() - 7) then
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
--\\Run Plugins
function appendIds(arg, data)
  local msg = arg.msg
  msg.first_name_ = data.user_.first_name_
  msg.last_name_ = data.user_.last_name_
  msg.type_ = data.user_.type_
  msg.username_ = data.user_.username_
  msg.phone_number_ = data.user_.phone_number_
  runPlugin(msg, arg.matches, arg.plugin)
end
---------------------------------------------------------

function loadPlugins()
  _Config = dofile('./Bot/Config.lua')
  Plugs = _Config.Plugins
  for k, v in pairs(Plugs) do 
     print(clr.red .. ' > Loading Plugin : '.. v ..'' .. clr.reset) 
    local ok, err =  pcall(function() 
      local t = loadfile("./Plugins/"..v..'.lua')() 
      plugins[v] = t 
     end) 
    if not ok then 
       print(clr.blue .. '> > Error plugin '..clr.reset .. ' : '..clr.yellow.. '' ..v..'' ..clr.reset) 
       print(tostring(io.popen("lua ./Plugins/"..v..".lua"):read('*all'))) 
    elseif ok then
       print(clr.blue .. '> > plugin '..clr.reset .. ' : '..clr.yellow.. '' ..v..'' ..clr.reset.. clr.blue .. ' Loaded' ..clr.reset ) 
     end 
   end 
end
     
function pre_process_msg(msg)
  for name, plugin in pairs(plugins) do
    if plugin.pre_process and msg then
      --print('Preprocess', name)
      msg = plugin.pre_process(msg)
    end
  end
  return msg
end
--
function match_plugins(data, txt)
  for name, plugin in pairs(plugins) do
    match_plugin(plugin, data, txt)
  end
end
--
function match_pattern(pattern, text, lower_case)
  if text then
    local matches = {}
    if lower_case then
      matches = { string.match(text:lower(), pattern) }
    else
      matches = { string.match(text, pattern) }
    end
      if next(matches) then
        return matches
      end
  end
end
---
function match_plugin(plugin, data, txt)
  for k, pattern in pairs(plugin.patterns) do
   local matches = match_pattern(pattern,  txt)
    if matches then
      --print("msg matches: ", pattern)
      if plugin.run then
          local result = plugin.run(data, matches)
          if result then
        cli.sendText(data.message_.chat_id_, 0, 0, 1, nil, result, 1, 'html')
        end
      end
      return
    end
  end
end

function edited_cb(extra, result, success)
  data = result
  msg = data
  txt = msg.content_.text_
  cli.getUserFull(msg.sender_user_id_, IDiPS, {msg=msg})
 -- match_plugins(data, txt)
end
function IDiPS(arg, data)
 -- print(serpent.block(data,{comment=false}))
  msg = arg.msg
  msg.user_ = {}
  msg.user_.username_ = data.user_.username_
  msg.user_.name_ = data.user_.first_name_..(data.user_.last_name_ or '')
  msg.user_.phone_number_ = data.user_.phone_number_
  msg.user_.type_ = data.user_.type_
  msg.user_.profile_photo_ = data.user_.profile_photo_
  txt = msg.content_.text_
  --msg.edited = false
  if data.user_.username_ then
  redis:hset('users:'..data.user_.id_, 'uname', (data.user_.username_:gsub('false', '') or ''))
end
if data.user_.first_name_ then
  redis:hset('users:'..data.user_.id_,'name', (data.user_.first_name_..(data.user_.last_name_ or ''):gsub('false', '') or '' ))
end
  match_plugins(msg, txt)
end
plugins = {}
loadPlugins()
function bot_run()
  last_update = last_update or 0
  is_running = true
end
function tdcli_update_callback(data)  
  --print(serpent.block(msg,{comment=false}))
  pre_process_msg(data)
    if data.ID == 'UpdateMessageEdited' then
        cli.getMessage(data.chat_id_, data.message_id_, edited_cb, nil)
    elseif (data.ID == "UpdateNewMessage") then
      local msgE = data.message_
      if msgE.date_ < os.time() - 7 then
         return 
      end
      if msgE.content_.ID == "MessageText" then
      cli.getUserFull(msgE.sender_user_id_, IDiPS, {msg=msgE})
       -- txt = msgE.content_.text_
       -- msgE.edited = false
       -- match_plugins(msgE, txt)
      end
    elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
        tdcli_function ({
        ID="GetChats",
        offset_order_="9223372036854775807",
        offset_chat_id_=0,
        limit_=20
        }, dl_cb, nil)
    end
end
  function Ddl(msg)
  print(serpent.block(msg,{comment=false}))



  end
--  bot_run()
while is_running do 
  local response = api.getUpdates(last_update+1) 
  if response then 
    for i,v in ipairs(response.result) do 
      last_update = v.update_id 
      if v.edited_message then 
        Ddl(v.edited_message) 
      elseif v.message then 
        Ddl(v.message) 
      elseif v.callback_query then 
        Ddl(v.callback_query)
      elseif v.inline_query then 
        Ddl(v.inline_query) 
      else

      end 
    end 
  else 

  end 
end 
   function sendmetion(chat_id, user_id, msg_id, text, offset, length)
  tdcli_function ({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = msg_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
          ID = "InputMessageText",
          text_ = text,
          disable_web_page_preview_ = 1,
        clear_draft_ = 0,
          entities_ = {[0]={
          ID="MessageEntityMentionName",
          offset_=offset,
          length_=length,
          user_id_=user_id
          },
          },
         -- parse_mode_ = {ID = "TextParseModeMarkdown"}
        },
    }, dl_cb, nil)
  end
 


function format_http_params(params, is_get)
  local str = ''
  -- If is get add ? to the beginning
  if is_get then str = '?' end
  local first = true -- Frist param
  for k,v in pairs (params) do
    if v then -- nil value
      if first then
        first = false
        str = str..k.. "="..v
      else
        str = str.."&"..k.. "="..v
      end
    end
  end
  return str
end

local function tr(target_lang, text)
  local path = "http://translate.google.com/translate_a/single"
  -- URL query parameters
  local params = {
    client = "gtx",
    ie = "UTF-8",
    oe = "UTF-8",
    hl = "en",
    dt = "t",
    tl = target_lang or "en",
    sl = "auto",
    q = URL.escape(text:gsub('\n',' '))
  }

  local query = format_http_params(params, true)
  local url = path..query

  local res, code = https.request(url)
  if code > 200 then
  return 
  end
  local trans = res:gmatch("%[%[%[\"(.*)\"")():gsub("\"(.*)", "")
  return trans
end


   
    function translate(lang, str)
        if lang == 'en' then
          return str 
        elseif lang == 'fa' then 
          return tr('fa', str)
        end
    end

    function _(srt)
      LNG = { 'fa' , 'en' }
      for k,v in pairs(LNG) do
        return translate(v, str)
      end
    end
