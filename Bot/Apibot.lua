--

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
local password = nil
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
https = require "ssl.https"
ltn12 = require "ltn12"
json = require "dkjson"
serpent = require "serpent"
URL = require 'socket.url'
http = require "socket.http"
JSON = require 'dkjson'
clr = require 'term.colors'
redis = RedisDb() 
cli = (loadfile './Bot/TgLib/cliLIBS.lua')()
api = (loadfile './Bot/TgLib/apiLIBS.lua')()
-------------------- Ranks
rank = (loadfile './Bot/Utils/Ranks.lua')()
lang = (loadfile './Bot/Utils/Lang.lua')()
----------------------------------------
Message_Checks = (loadfile './Bot/Utils/Message_Checks.lua')()
info = (loadfile './Bot/Utils/Info.lua')()
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

function tr(target_lang, text)
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

function basecode(data)
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function basedec(data)
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(7-i) or 0) end
        return string.char(c)
    end))
end

local function sendreq(url)
	local dat, code = https.request(url)
	local tab = JSON.decode(dat)

	if not tab then
		print(clr.red..'Error while parsing JSON'..clr.reset, code)
		print(clr.yellow..'Data:'..clr.reset, dat)
		error('Incorrect response')
	end

	if code ~= 200 then

		print(clr.red..code, tab.description..clr.reset)

		return false, code, tab.description
	end
	
	if not tab.ok then
		return false, tab.description
	end
	
	return tab

end

  function Expire(ChatID)
  	Tt = (redis:hget(ChatID, 'Expire') or os.time())
  	Tl = os.time()
  	D = 60 * 60 * 24
  	return math.floor((tonumber(Tt) - tonumber(Tl)) / 86400)
  end

function loadPlugins()
  _Config = dofile('./Bot/Config.lua')
  Plugs = _Config.PluginsApi
  for k, v in pairs(Plugs) do 
     print(clr.red .. ' > Loading Plugin : '.. v ..'' .. clr.reset) 
    local ok, err =  pcall(function() 
      local t = loadfile("/root/NewBot/ApiPlugins/"..v..'.lua')() 
      plugins[v] = t 
     end) 
    if not ok then 
       print(clr.blue .. '> > Error plugin '..clr.reset .. ' : '..clr.yellow.. '' ..v..'' ..clr.reset) 
       print(tostring(io.popen("lua /root/NewBot/ApiPlugins/"..v..".lua"):read('*all'))) 
    elseif ok then
       print(clr.blue .. '> > plugin '..clr.reset .. ' : '..clr.yellow.. '' ..v..'' ..clr.reset.. clr.blue .. ' Loaded' ..clr.reset ) 
     end 
   end 
end


function pre_process_msg(msg, type)
  for name, plugin in pairs(plugins) do
    if plugin.pre_process and msg then
      --print('Preprocess', name)
      msg = plugin.pre_process(msg, type)
    end
  end
  return msg
end
--
function match_plugins(msg, txt)
  for name, plugin in pairs(plugins) do
    match_plugin(plugin, msg, txt)
  end
end
--
function match_plugin(plugin, msg, txt)
  for k, pattern in pairs(plugin.patterns) do
   local matches = match_pattern(pattern,  txt)
    if matches then
      --print("msg matches: ", pattern)
      if plugin.run then
          local result = plugin.run(msg, matches)
          if result then
          	--print('it')
          end
      end
      return
    end
  end
end

function match_pattern(pattern, text)
  if text then
      local matches = { string.match(text, pattern) }
      if next(matches) then
        return matches
      end
  end
end


function bot_run()
  last_update = last_update or 0
  is_running = true 
  plugins = {}
  loadPlugins()
end

	function MessageInput(msg, type)
     print(clr.red..serpent.block(msg,{comment=false})..clr.reset)
		pre_process_msg(msg, type)
		if type == 'CallBack' then
			msg.text = '#!CallBack:'..msg.data
		elseif type == 'Inline' then
			msg.text = '#!Inline:'..msg.query 
		elseif type == 'Message' then
			msg.text = msg.text
		end
		match_plugins(msg, msg.text)
	end

 bot_run()
while is_running do 
  local response = api.getUpdates(last_update+1) 
  if response then 
    for i,v in ipairs(response.result) do 
      last_update = v.update_id 
      if v.edited_message then 
        MessageInput(v.edited_message, 'Edited') 
      elseif v.message then 
        MessageInput(v.message, 'Message') 
      elseif v.callback_query then 
        MessageInput(v.callback_query, 'CallBack')
      elseif v.inline_query then 
        MessageInput(v.inline_query, 'Inline') 
      else

      end 
    end 
  else 

  end 
end 






-- encoding
