--[[

Some Function For Easy Word ;)

]]

     local BOT = _Config.BOT
     local Realm = _Config.Realm
     local SudoM = _Config.Sudos

     function GetInfo(user_id)
     	user = redis:hgetall('users:'..user_id)
     	if user.uname then
     		return ('@'..user.uname:gsub('_','\\_'):gsub('*','\\*'):gsub('`','\\`')..' - [`'..user_id..'`]')
     	elseif user.name then
     		return (user.name:gsub('_','\\_'):gsub('*','\\*'):gsub('`','\\`')..' - [`'..user_id..'`]')
     	else
     		return ('[`'..user_id..'`]')
     	end
     end
local function fetchMods(chat_id, members)
    for _, v in pairs(members) do
      local kstatus
      if v.status_.ID == 'ChatMemberStatusEditor' then
        kstatus = 'moderators'
      elseif v.status_.ID == 'ChatMemberStatusCreator' then
        kstatus = 'creator'
      end
      if kstatus then
        if a.kstatus == 'moderators' then
        	redis:sadd('mods:'..chat_id, v.user_id_)
        elseif a.kstatus == 'creator' then
        	redis:set('owner:'..chat_id, v.user_id_)
        end
      end
    end
  end

  function Expire(ChatID)
  	Tt = (redis:hget(ChatID, 'Expire') or os.time())
  	Tl = os.time()
  	D = 60 * 60 * 24
  	return math.floor((tonumber(Tt) - tonumber(Tl)) / 86400)
  end


local function addGroup(msg, chat_id, user_id)
    if redis:sismember('chats', chat_id) then
      text = 'I\'m administrating on this Group ;)\nLeft Time : `'..Expire(chat_id) .. '` Days'
    else
      Time = tonumber(os.time() + 60 * 60 * 24 + 1)
      redis:hset(chat_id, 'Expire', Time)
      redis:hset(chat_id, 'link', 'false')
      redis:hset(chat_id, 'pin', 'false')
      redis:hset(chat_id, 'edit', 'false')
      redis:hset(chat_id, 'hashtag', 'false')
      redis:hset(chat_id, 'atsign', 'false')
      redis:hset(chat_id, 'flood', 'false')
      redis:hset(chat_id, 'floodC', '5')
      redis:hset(chat_id, 'floodT', '3')
      redis:hset(chat_id, 'longmessage', 'false')
      redis:hset(chat_id, 'longmessageC', '500')
      redis:hset(chat_id, 'shortmessage', 'false')
      redis:hset(chat_id, 'shortmessageC', '1')
      redis:hset(chat_id, 'mention', 'false')
      redis:hset(chat_id, 'media', 'false')
      redis:hset(chat_id, 'english', 'false')
      redis:hset(chat_id, 'arabic', 'false')
      redis:hset(chat_id, 'text', 'false')
      redis:hset(chat_id, 'captionarabic', 'false')
      redis:hset(chat_id, 'captionenglish', 'false')
      redis:hset(chat_id, 'caption', 'false')
      redis:hset(chat_id, 'textarabic', 'false')
      redis:hset(chat_id, 'textenglish', 'false')
      redis:hset(chat_id, 'forward', 'false')
      redis:hset(chat_id, 'channelforward', 'false')
      redis:hset(chat_id, 'userforward', 'false')
      redis:hset(chat_id, 'reply', 'false')
      redis:hset(chat_id, 'inline', 'false')
      redis:hset(chat_id, 'keyboard', 'false')
      redis:hset(chat_id, 'game', 'false')
      redis:hset(chat_id, 'voice', 'false')
      redis:hset(chat_id, 'music', 'false')
      redis:hset(chat_id, 'photo', 'false')
      redis:hset(chat_id, 'video', 'false')
      redis:hset(chat_id, 'location', 'false')
      redis:hset(chat_id, 'sharenumber', 'false')
      redis:hset(chat_id, 'webpage', 'false')
      redis:hset(chat_id, 'animation', 'false')
      redis:hset(chat_id, 'file', 'false')
      redis:hset(chat_id, 'stickers', 'false')
      redis:hset(chat_id, 'bots', 'false')
      redis:hset(chat_id, 'SilenMode', 'false')
      redis:hset(chat_id, 'APIMOD', 'Disable')
      redis:sadd('chats', chat_id)
      if chat_id:match('-100') then
        cli.getChannelFull(chat_id, function(a, d)
          redis:hset(a, 'about', d.about_)
          redis:hset(a, 'username', d.channel_.username_ or false)
          if d.invite_link_ then
            redis:hset(a, 'Grouplink', d.invite_link_)
          end
        end, chat_id)

        --cli.getChannelMembers(chat_id, 'Administrators', 0, 200, function(a, d)
        --  fetchMods(a, d.members_)
        --end, chat_id)
      end
      cli.getChat(chat_id, function(a, d)
        redis:hset(a, 'name', d.title_)
      end, chat_id)
      text = 'Im Now administrating on this group.'
      RLM = 'New Added Group : '
    ..'\n> Adder : '.. (msg.user_.username_ or '') .. ' - '.. msg.sender_user_id_ 
    ..'\n> Chat Title : '.. (redis:hget(chat_id, 'name') or '')
    ..'\n> Chat ID : '.. chat_id
    ..'\n> Charge Panel : '

    local keyboard = {}
    keyboard.inline_keyboard = {
      {
        {text = '1 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_1_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_1_'..chat_id..'_Normal'},
      },
      {
        {text = '2 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_2_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_2_'..chat_id..'_Normal'},
      },
      {
        {text = '3 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_3_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_3_'..chat_id..'_Normal'},
      },
      {
        {text = ' UnLimited', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_4_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_4_'..chat_id..'_Normal'},
      },
      {
        {text = 'GroupInfo', callback_data = 'Settings_'..chat_id},
      },
      {
        {text = 'Leave', callback_data = 'leave_'..chat_id},
      },
    }
    for k,v in pairs(SudoM) do 
    	api.sendMessage(v, RLM, 'html', keyboard, 0, false)
    end
    api.sendMessage(Realm, RLM, 'html', keyboard, 0, false)
    end
    cli.sendText(chat_id, msg.id_, 0, 0, nil, text, 0, 'MarkDown')
  end

local function remGroup(msg, chat_id, user_id)
    if not redis:sismember('chats', chat_id) then
      text = 'Group isn\'t added'
    else
      text = 'Group Removed\n> I leave Here 2 Days later ;)'
    end
    RLM = 'New Removed Group : '
    ..'\n> Adder : '.. msg.user_.username_ .. ' - '.. msg.sender_user_id_ 
    ..'\n> Chat Title : '.. (redis:hget(chat_id, 'name') or '')
    ..'\n> Chat ID : '.. (chat_id or msg.chat_id_ or '')
    for k,v in pairs(redis:hgetall((chat_id or msg.chat_id_ or ''))) do
    	redis:hdel((chat_id or msg.chat_id_ or ''), v)
	end
	redis:srem('chats', chat_id)
    for k,v in pairs(SudoM) do 
    	api.sendMessage(v, RLM, 'html', keyboard, 0, false)
    end
    return cli.sendText((chat_id or msg.chat_id_ or ''), msg.id_, 0, 0, nil, text, 0, 'MarkDown')
  end
-------------------
function Inline(arg, data)
      if data.results_ and data.results_[0] then
        tdcli_function({
          ID = "SendInlineQueryResultMessage",
          chat_id_ = arg.chat_id,
          reply_to_message_id_ = arg.msg_ID or 0,
          disable_notification_ = 0,
          from_background_ = 1,
          query_id_ = data.inline_query_id_,
          result_id_ = data.results_[0].id_
        }, dl_cb, nil)
      end
    end
      ---
--[[
    $## StarT CallBacks ##$
    ## @Reload_Life ##
    ## Last Update ;)
]]
  --------------------------
  function Reply(extra, msg)
    cli.getUserFull(msg.sender_user_id_, RReply, {msg=msg, arg=extra})
  end
  function RReply(arg, msg)
    chat_id = arg.msg.chat_id_
    msg_id = arg.msg.id_
    cmd = arg.arg.cmd
    user_id = arg.msg.sender_user_id_
    if msg.user_.username_ then
      user = msg.user_.username_
    elseif msg.user_.first_name_ then
      user = msg.user_.first_name_..(msg.user_.last_name_ or '')
    else
      user = user_id
    end
    if cmd == 'Promote' then
        if rank.isExAdmin(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'Demote' then
          if not rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Owner' then
        if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:set('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Creator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DemOwner' then
          if not rank.isOwner(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:del('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Admin' then
        if rank.isSudo(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeAdmin' then
          if not rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Sudo' then
        if user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeSudo' then
          if not rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'ExAdmin' then
      if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Editor')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeExAdmin' then
          if not rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Banned' then
        if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'ban:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'ban:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'UnBanned' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Muted' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'mute:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'mute:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMuted(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
     elseif cmd == 'UnMuted' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Kick' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          text = '> '.. user ..' '.. lang.Lang(chat_id, 'Kicked:3')
            cli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
          sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
        end
     elseif cmd == 'Invite' then
      cli.addChatMembers(chat_id, {[0] = user_id})
        text = '> '.. user ..' '.. lang.Lang(chat_id, 'Invite:1')
        sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
    elseif cmd == 'id' then
local function ID_(extra, results)
  --print(clr.red..serpent.block(results,{comment=false})..clr.reset)
      msg = extra.msg
      chat_id = extra.chat_id
      msg_id = extra.msg_id
      user_id = results.user_.id_
      if not results.user_.profile_photo_ then
         text = '`>` *'..lang.Lang(chat_id, 'ID:1')..'* : `'..chat_id:gsub('-100','')..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:2')..'* : `'..user_id..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:3')..'* : `@'..(results.user_.username_ or '`NoUserName`')..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:4')..'* : ['..results.user_.first_name_..'](t.me/'..(results.user_.username_ or 'sprcpu_company')..')'
      tdcli_function({
        ID = "GetInlineQueryResults",
        bot_user_id_ = 107705060,
        chat_id_ = chat_id,
        user_location_ = {
          ID = "Location",
          latitude_ = 0,
          longitude_ = 0
        },
        query_ = text,
        offset_ = 0
      }, Inline, {chat_id=chat_id,msg_ID=msg_id})
      else
        cli.downloadFile(results.user_.profile_photo_.big_.id_)
        os.execute("sleep " .. tonumber(1))
        text = '> '..lang.Lang(chat_id, 'ID:1')..' : '..chat_id:gsub('-100','')..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:2')..' : '..user_id..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:3')..' : @'..(results.user_.username_ or 'NoUserName')..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:4')..' : '..results.user_.first_name_
        cli.sendPhoto(chat_id, msg_id, 0, 1, nil, results.user_.profile_photo_.big_.file_path_, text, dl_cb, nil)
      end
    end
    cli.getUserFull(user_id, ID_, {msg=msg,chat_id=chat_id,msg_id=msg_id})
    else
      print('False CMD Used In UserID CallBack ....')
    end
  end
  ---------------------------
  function UserID(extra, msg)
    chat_id = extra.chat_id
    msg_id = extra.id
    cmd = extra.cmd
    user_id = msg.user_.id_
    if msg.ID == 'Error' then
      cli.sendText(chat_id, msg_id, 0, 1, nil, '*Error UserNotFound*', 1, 'md')
    end
    if msg.user_.username_ then
      user = msg.user_.username_
    elseif msg.user_.first_name_ then
      user = msg.user_.first_name_..(msg.user_.last_name_ or '')
    else
      user = user_id
    end
    if cmd == 'Promote' then
        if rank.isExAdmin(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'Demote' then
          if not rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Owner' then
        if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Owner:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Owner:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:set('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Creator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DemOwner' then
          if not rank.isOwner(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:del('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Admin' then
        if rank.isSudo(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Admin:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Admin:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeAdmin' then
          if not rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Sudo' then
        if user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Sudo:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeSudo' then
          if not rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'ExAdmin' then
      if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'ExA:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'ExA:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Editor')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeExAdmin' then
          if not rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Banned' then
        if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'ban:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'ban:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'UnBanned' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Muted' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'mute:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'mute:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMuted(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
     elseif cmd == 'UnMuted' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Kick' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          text = '> '.. user ..' '.. lang.Lang(chat_id, 'Kicked:3')
            cli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
          sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
        end
     elseif cmd == 'Invite' then
      cli.addChatMembers(chat_id, {[0] = user_id})
        text = '> '.. user ..' '.. lang.Lang(chat_id, 'Invite:1')
        sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
    elseif cmd == 'id' then
      --[[
        Get User Profile by Reply/UserID/UserName
      ]]
    if msg.user_.profile_photo_ == false then
       text = '`>` *'..lang.Lang(chat_id, 'ID:1')..'* : `'..chat_id:gsub('-100','')..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:2')..'* : `'..user_id..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:3')..'* : `@'..(msg.user_.username_ or '`NoUserName`')..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:4')..'* : ['..msg.user_.first_name_..'](t.me/'..(msg.user_.username_ or 'sprcpu_company')..')'
    tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg_id})
    else
      cli.downloadFile(msg.user_.profile_photo_.big_.id_)
      os.execute("sleep " .. tonumber(1))
      text = '> '..lang.Lang(chat_id, 'ID:1')..' : '..chat_id:gsub('-100','')..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:2')..' : '..user_id..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:3')..' : @'..(msg.user_.username_ or 'NoUserName')..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:4')..' : '..msg.user_.first_name_
		cli.sendPhoto(chat_id, msg_id, 0, 1, nil, msg.user_.profile_photo_.big_.file_path_, text, dl_cb, nil)
       end
    else
      print('False CMD Used In UserID CallBack ....')
    end
  end
  --------------------------
  function UserName(extra, msg)
    chat_id = extra.chat_id
    msg_id = extra.id
    cmd = extra.cmd
    user_id = msg.id_
--  print(clr.blue..serpent.block(msg,{comment=false})..clr.reset)
	if msg.ID == 'Error' then
      cli.sendText(chat_id, msg_id, 0, 1, nil, '*Error UserNotFound*', 1, 'md')
    end
    if msg.type_.user_.username_ then
      user = msg.type_.user_.username_
    elseif msg.title_ then
      user = msg.title_
    else
      user = user_id
    end

     if cmd == 'Promote' then
        if rank.isExAdmin(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Prom:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Prom:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'Demote' then
          if not rank.isMods(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('mods:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Dem:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Owner' then
        if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Owner:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Owner:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:set('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Creator')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Owner:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DemOwner' then
          if not rank.isOwner(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:del('owner:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'OwnerD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Admin' then
        if rank.isSudo(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Admin:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Admin:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Admin:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeAdmin' then
          if not rank.isAdmin(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:admins', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'AdminD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Sudo' then
        if user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Sudo:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'Sudo:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeSudo' then
          if not rank.isSudo(user_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('F80:sudo', user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'SudoD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'ExAdmin' then
      if rank.isAdmin(user_id) then
          text = '`>` '.. lang.Lang(chat_id, 'ExA:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'ExA:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Editor')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExA:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'DeExAdmin' then
          if not rank.isExAdmin(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('exadmins:'..chat_id, user_id)
            cli.changeChatMemberStatus(chat_id, user_id, 'Member')
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ExAD:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Banned' then
        if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'ban:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'ban:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'ban:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
    elseif cmd == 'UnBanned' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:srem('Banned:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'uban:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Muted' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'mute:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'mute:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          if rank.isMuted(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:3')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'mute:4')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
        end
     elseif cmd == 'UnMuted' then
          if not rank.isBanned(user_id, chat_id) then
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:1')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          else
            redis:sadd('Muted:'..chat_id, user_id)
            text = '> '.. user ..' '.. lang.Lang(chat_id, 'unmute:2')
            sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
          end
    elseif cmd == 'Kick' then
          if rank.isMods(user_id, chat_id) then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:1')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        elseif user_id == BOT then
          text = '`>` '.. lang.Lang(chat_id, 'Kicked:2')
          cli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
        else
          text = '> '.. user ..' '.. lang.Lang(chat_id, 'Kicked:3')
            cli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
          sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
        end
     elseif cmd == 'Invite' then
      cli.addChatMembers(chat_id, {[0] = user_id})
        text = '> '.. user ..' '.. lang.Lang(chat_id, 'Invite:1')
        sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
    elseif cmd == 'id' then
  local function ID_s(extra, results)
  --print(clr.red..serpent.block(results,{comment=false})..clr.reset)
      msg = extra.msg
      chat_id = extra.chat_id
      msg_id = extra.msg_id
      user_id = results.user_.id_
      if not results.user_.profile_photo_ then
         text = '`>` *'..lang.Lang(chat_id, 'ID:1')..'* : `'..chat_id:gsub('-100','')..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:2')..'* : `'..user_id..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:3')..'* : `@'..(results.user_.username_ or '`NoUserName`')..'`\n'
        ..'`>` *'..lang.Lang(chat_id, 'ID:4')..'* : ['..results.user_.first_name_..'](t.me/'..(results.user_.username_ or 'sprcpu_company')..')'
      tdcli_function({
        ID = "GetInlineQueryResults",
        bot_user_id_ = 107705060,
        chat_id_ = chat_id,
        user_location_ = {
          ID = "Location",
          latitude_ = 0,
          longitude_ = 0
        },
        query_ = text,
        offset_ = 0
      }, Inline, {chat_id=chat_id,msg_ID=msg_id})
      else
        cli.downloadFile(results.user_.profile_photo_.big_.id_)
        os.execute("sleep " .. tonumber(1))
        text = '> '..lang.Lang(chat_id, 'ID:1')..' : '..chat_id:gsub('-100','')..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:2')..' : '..user_id..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:3')..' : @'..(results.user_.username_ or 'NoUserName')..'\n'
        ..'> '..lang.Lang(chat_id, 'ID:4')..' : '..results.user_.first_name_
		cli.sendPhoto(chat_id, msg_id, 0, 1, nil, results.user_.profile_photo_.big_.file_path_, text, dl_cb, nil)
      end
    end
    cli.getUserFull(user_id, ID_s, {msg=msg,chat_id=chat_id,msg_id=msg_id})
    else
      print('False CMD Used In UserID CallBack ....')
    end
  end
  --------------------------
--[[
    $## EnD CallBacks ##$
    ## @Reload_Life ##
    ## Last Update ;)
]]
function run(msg, matches)
  local function SS(msg)
        if msg.reply_to_message_id_ ~= 0 then
          return msg.reply_to_message_id_
        else
          return msg.id_
        end
    end
  ----------------------------------------------------------------------------------------------------------
  chat_id = msg.chat_id_
  msg_id = msg.id_
  user_id = msg.sender_user_id_
  if msg.user_.type_.ID == 'UserTypeBot' then
    return
  end
  if rank.isBanned(user_id, chat_id) then
    cli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
    cli.reportChannelSpam(chat_id, user_id, {[0] = msg.id_})
    text = [[
*User @]] .. (msg.user_.username_ or msg.user_.name_) .. [[Was Banned And Kicked ;)*
--
*کاربر بن بود و اخراج شد!*
    ]]
    tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
    return
  end
--[[  if Expire(chat_id) < 1 and not rank.is_Admin(msg) then
  	if redis:get('BingToLeave:'..chat_id) then

  	else
  		if redis:ttl('BingToLeave:'..chat_id) <= 0 then
  			cli.changeChatMemberStatus(chat_id, BOT, 'Kicked')
  		else
  		RLM = 'New Added Group : '
    ..'\n> Adder : '.. (msg.user_.username_ or '') .. ' - '.. msg.sender_user_id_ 
    ..'\n> Chat Title : '.. (redis:hget(chat_id, 'name') or '')
    ..'\n> Chat ID : '.. chat_id
    ..'\n> Charge Panel : '
    local keyboard = {}
    keyboard.inline_keyboard = {
      {
        {text = '1 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_1_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_1_'..chat_id..'_Normal'},
      },
      {
        {text = '2 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_2_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_2_'..chat_id..'_Normal'},
      },
      {
        {text = '3 Mounth', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_3_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_3_'..chat_id..'_Normal'},
      },
      {
        {text = ' UnLimited', callback_data = 'Nothing'},
      },
      {
        {text = 'VIP', callback_data = 'P_4_'..chat_id..'_VIP'},
        {text = 'Normal', callback_data = 'P_4_'..chat_id..'_Normal'},
      },
      {
        {text = 'GroupInfo', callback_data = 'Settings_'..chat_id},
      },
      {
        {text = 'Leave', callback_data = 'leave_'..chat_id},
      },
    }
    api.sendMessage(SudoM, RLM, 'html', keyboard, 0, false)
    api.sendMessage(Realm, RLM, 'html', keyboard, 0, false)
    text = [[ *---------
شارژ گروه به پایان رسید !*
برای شارژ به [اینجا](t.me/Question_Robot?start=] ].. chat_id ..[[ChargeReq)* مراجعه کنید !*
*---------------
Group Expired !
Click* [Here](t.me/Question_Robot?start=] ].. chat_id ..[[ChargeReq) *To Charge !*
    ---------] ]

    tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
    redis:setex('BingToLeave:'..chat_id)
    	end
	end
    return 
  end]]

  if matches[1]:lower() == 'enable' and rank.is_Admin(msg) then
  	addGroup(msg, chat_id, user_id)
  end
  if matches[1]:lower() == 'disable' and rank.is_Admin(msg) then
  	remGroup(msg, chat_id, user_id)
  end
  
  if matches[1]:lower() == 'id' and rank.is_Mods(msg) then
    extra = {
        cmd = 'id',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if matches[2] then
          if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if tonumber(X) then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
        else
    if msg.user_.profile_photo_ == false then
       text = '`>` *'..lang.Lang(chat_id, 'ID:1')..'* : `'..chat_id:gsub('-100','')..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:2')..'* : `'..user_id..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:3')..'* : `@'..(msg.user_.username_ or 'NoUserName')..'`\n'
      ..'`>` *'..lang.Lang(chat_id, 'ID:4')..'* : ['..msg.user_.name_..'](t.me/'..(msg.user_.username_ or 'sprcpu_company')..')'
    tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
    else
      cli.downloadFile(msg.user_.profile_photo_.big_.id_)
      os.execute("sleep " .. tonumber(1))
      text = '> '..lang.Lang(chat_id, 'ID:1')..' : '..chat_id:gsub('-100','')..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:2')..' : '..user_id..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:3')..' : @'..(msg.user_.username_ or 'NoUserName')..'\n'
      ..'> '..lang.Lang(chat_id, 'ID:4')..' : '..msg.user_.name_
      cli.sendPhoto(chat_id, msg_id, 0, 1, nil, msg.user_.profile_photo_.big_.file_path_, text, dl_cb, nil)

    end
   end 
  end
 end
    if matches[1]:lower() == 'visudo' then
    	if not matches[2] and not msg.reply_to_message_id_ then
        	cli.sendText(chat_id, msg_id, 0, 0, nil, lang.Lang(chat_id, 'NotReplyAndMatch2'), 0, 'MarkDown')
    	end
      extra = {
        cmd = 'Sudo',
        id = msg.reply_to_message_id_ or msg.id_,
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    ----------------------------------------------
    if matches[1]:lower() == 'desudo' then
      extra = {
        cmd = 'DeSudo',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------
    if matches[1]:lower() == 'globaladmin' then
      extra = {
        cmd = 'Admin',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    -----------------------------------------
    if matches[1]:lower() == 'deglobaladmin' then
      extra = {
        cmd = 'DeAdmin',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    -------------------------------------------
    if matches[1]:lower() == 'setowner' then
      extra = {
        cmd = 'Owner',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------------
    if matches[1]:lower() == 'delowner' then
      extra = {
        cmd = 'DemOwner',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    -------------------------------------------
    if matches[1]:lower() == 'extrapromote' then
      extra = {
        cmd = 'ExAdmin',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------------
    if matches[1]:lower() == 'extrademote' then
      extra = {
        cmd = 'DeExAdmin',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    ----------------------------------
    if matches[1]:lower() == 'promote' then
      extra = {
        cmd = 'Promote',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------------
    if matches[1]:lower() == 'demote' then
      extra = {
        cmd = 'Demote',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    ----------------------------------
    if matches[1]:lower() == 'muteuser' then
      extra = {
        cmd = 'Muted',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------------
    if matches[1]:lower() == 'unmuteuser' then
      extra = {
        cmd = 'Unmuted',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    ----------------------------------
    if matches[1]:lower() == 'ban' then
      extra = {
        cmd = 'Banned',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    --------------------------------------------
    if matches[1]:lower() == 'unban' then
      extra = {
        cmd = 'UnBanned',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    ------------------
    if matches[1]:lower() == 'kick' then
      extra = {
        cmd = 'Kick',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    if matches[1]:lower() == 'invite' then
      extra = {
        cmd = 'Invite',
        id = SS(msg),
        chat_id = chat_id
        }
      if msg.reply_to_message_id_ ~= 0 then
        cli.getMessage(chat_id, msg.reply_to_message_id_, Reply, extra)
      else
        if msg.content_.entities_[0].ID == "MessageEntityMentionName" then
            X = msg.content_.entities_[0].user_id_
          else
            if tonumber(matches[2]) then
              X = matches[2] 
            end
          end
          if X then
            cli.getUserFull(X, UserID, extra)
          else
              cli.searchPublicChat(matches[2]:gsub('@', ''), UserName, extra)
          end
      end
    end
    -------------------------------------------------------------------------------------------------------------------------------------------------
    if redis:hget(chat_id, 'APIMOD') == 'Disable' then
      if matches[1]:lower() == 'lock' and rank.is_Mods(msg) then
        if matches[2]:lower() == 'edit' then
          if redis:hget(chat_id, 'edit') == true then
            text = lang.Lang(chat_id, 'lock:edit:f')
          else
            redis:hset(chat_id, 'edit', true)
            text = lang.Lang(chat_id, 'lock:edit:d')
          end
        elseif matches[2]:lower() == 'flood' then
          if redis:hget(chat_id, 'flood') == true then
            text = lang.Lang(chat_id, 'lock:flood:f')
          else
            redis:hset(chat_id, 'flood', true)
            text = lang.Lang(chat_id, 'lock:flood:d')
          end
        elseif matches[2]:lower() == 'longmessage' then
          if redis:hget(chat_id, 'longmessage') == true then
            text = lang.Lang(chat_id, 'lock:longmessage:f')
          else
            redis:hset(chat_id, 'longmessage', true)
            text = lang.Lang(chat_id, 'lock:longmessage:d')
          end
        elseif matches[2]:lower() == 'shortmessage' then
          if redis:hget(chat_id, 'shortmessage') == true then
            text = lang.Lang(chat_id, 'lock:shortmessage:f')
          else
            redis:hset(chat_id, 'shortmessage', true)
            text = lang.Lang(chat_id, 'lock:shortmessage:d')
          end
        elseif matches[2]:lower() == 'caption' then
          if redis:hget(chat_id, 'caption') == true then
            text = lang.Lang(chat_id, 'lock:caption:f')
          else
            redis:hset(chat_id, 'caption', true)
            text = lang.Lang(chat_id, 'lock:caption:d')
          end
        elseif matches[2]:lower() == 'forward' then
          if redis:hget(chat_id, 'forward') == true then
            text = lang.Lang(chat_id, 'lock:forward:f')
          else
            redis:hset(chat_id, 'forward', true)
            text = lang.Lang(chat_id, 'lock:forward:d')
          end
        elseif matches[2]:lower() == 'channelforward' then
          if redis:hget(chat_id, 'channelforward') == true then
            text = lang.Lang(chat_id, 'lock:channelforward:f')
          else
            redis:hset(chat_id, 'channelforward', true)
            text = lang.Lang(chat_id, 'lock:channelforward:d')
          end
        elseif matches[2]:lower() == 'userforward' then
          if redis:hget(chat_id, 'userforward') == true then
            text = lang.Lang(chat_id, 'lock:userforward:f')
          else
            redis:hset(chat_id, 'userforward', true)
            text = lang.Lang(chat_id, 'lock:userforward:d')
          end
        elseif matches[2]:lower() == 'reply' then
          if redis:hget(chat_id, 'reply') == true then
            text = lang.Lang(chat_id, 'lock:reply:f')
          else
            redis:hset(chat_id, 'reply', true)
            text = lang.Lang(chat_id, 'lock:reply:d')
          end
        elseif matches[2]:lower() == 'inline' then
          if redis:hget(chat_id, 'inline') == true then
            text = lang.Lang(chat_id, 'lock:inline:f')
          else
            redis:hset(chat_id, 'inline', true)
            text = lang.Lang(chat_id, 'lock:inline:d')
          end
        elseif matches[2]:lower() == 'game' then
          if redis:hget(chat_id, 'game') == true then
            text = lang.Lang(chat_id, 'lock:game:f')
          else
            redis:hset(chat_id, 'game', true)
            text = lang.Lang(chat_id, 'lock:game:d')
          end
        elseif matches[2]:lower() == 'keyboard' then
          if redis:hget(chat_id, 'keyboard') == true then
            text = lang.Lang(chat_id, 'lock:keyboard:f')
          else
            redis:hset(chat_id, 'keyboard', true)
            text = lang.Lang(chat_id, 'lock:keyboard:d')
          end
        elseif matches[2]:lower() == 'media' then
          if redis:hget(chat_id, 'media') == true then
            text = lang.Lang(chat_id, 'lock:media:f')
          else
            redis:hset(chat_id, 'media', true)
            text = lang.Lang(chat_id, 'lock:media:d')
          end
        elseif matches[2]:lower() == 'text' then
          if redis:hget(chat_id, 'text') == true then
            text = lang.Lang(chat_id, 'lock:text:f')
          else
            redis:hset(chat_id, 'text', true)
            text = lang.Lang(chat_id, 'lock:text:d')
          end
        elseif matches[2]:lower() == 'textarabic' then
          if redis:hget(chat_id, 'textarabic') == true then
            text = lang.Lang(chat_id, 'lock:textarabic:f')
          else
            redis:hset(chat_id, 'textarabic', true)
            text = lang.Lang(chat_id, 'lock:textarabic:d')
          end
        elseif matches[2]:lower() == 'captionarabic' then
          if redis:hget(chat_id, 'captionarabic') == true then
            text = lang.Lang(chat_id, 'lock:captionarabic:f')
          else
            redis:hset(chat_id, 'captionarabic', true)
            text = lang.Lang(chat_id, 'lock:captionarabic:d')
          end
        elseif matches[2]:lower() == 'arabic' then
          if redis:hget(chat_id, 'arabic') == true then
            text = lang.Lang(chat_id, 'lock:arabic:f')
          else
            redis:hset(chat_id, 'arabic', true)
            text = lang.Lang(chat_id, 'lock:arabic:d')
          end
        elseif matches[2]:lower() == 'textenglish' then
          if redis:hget(chat_id, 'textenglish') == true then
            text = lang.Lang(chat_id, 'lock:textenglish:f')
          else
            redis:hset(chat_id, 'textenglish', true)
            text = lang.Lang(chat_id, 'lock:textenglish:d')
          end
        elseif matches[2]:lower() == 'captionenglish' then
          if redis:hget(chat_id, 'captionenglish') == true then
            text = lang.Lang(chat_id, 'lock:captionenglish:f')
          else
            redis:hset(chat_id, 'captionenglish', true)
            text = lang.Lang(chat_id, 'lock:captionenglish:d')
          end
        elseif matches[2]:lower() == 'english' then
          if redis:hget(chat_id, 'english') == true then
            text = lang.Lang(chat_id, 'lock:english:f')
          else
            redis:hset(chat_id, 'english', true)
            text = lang.Lang(chat_id, 'lock:english:d')
          end
        ---------------------------Medias
        elseif matches[2]:lower() == 'voice' then
          if redis:hget(chat_id, 'voice') == true then
            text = lang.Lang(chat_id, 'lock:voice:f')
          else
            redis:hset(chat_id, 'voice', true)
            text = lang.Lang(chat_id, 'lock:voice:d')
          end
        elseif matches[2]:lower() == 'music' then
          if redis:hget(chat_id, 'music') == true then
            text = lang.Lang(chat_id, 'lock:music:f')
          else
            redis:hset(chat_id, 'music', true)
            text = lang.Lang(chat_id, 'lock:music:d')
          end
        elseif matches[2]:lower() == 'location' then
          if redis:hget(chat_id, 'location') == true then
            text = lang.Lang(chat_id, 'lock:location:f')
          else
            redis:hset(chat_id, 'location', true)
            text = lang.Lang(chat_id, 'lock:location:d')
          end
        elseif matches[2]:lower() == 'photo' then
          if redis:hget(chat_id, 'photo') == true then
            text = lang.Lang(chat_id, 'lock:photo:f')
          else
            redis:hset(chat_id, 'photo', true)
            text = lang.Lang(chat_id, 'lock:photo:d')
          end
        elseif matches[2]:lower() == 'video' then
          if redis:hget(chat_id, 'video') == true then
            text = lang.Lang(chat_id, 'lock:video:f')
          else
            redis:hset(chat_id, 'video', true)
            text = lang.Lang(chat_id, 'lock:video:d')
          end
        elseif matches[2]:lower() == 'sharenumber' then
          if redis:hget(chat_id, 'sharenumber') == true then
            text = lang.Lang(chat_id, 'lock:sharenumber:f')
          else
            redis:hset(chat_id, 'sharenumber', true)
            text = lang.Lang(chat_id, 'lock:sharenumber:d')
          end
        elseif matches[2]:lower() == 'webpage' then
          if redis:hget(chat_id, 'webpage') == true then
            text = lang.Lang(chat_id, 'lock:webpage:f')
          else
            redis:hset(chat_id, 'webpage', true)
            text = lang.Lang(chat_id, 'lock:webpage:d')
          end
        elseif matches[2]:lower() == 'link' then
          if redis:hget(chat_id, 'link') == true then
            text = lang.Lang(chat_id, 'lock:link:f')
          else
            redis:hset(chat_id, 'link', true)
            text = lang.Lang(chat_id, 'lock:link:d')
          end
        elseif matches[2]:lower() == 'mention' then
          if redis:hget(chat_id, 'mention') == true then
            text = lang.Lang(chat_id, 'lock:mention:f')
          else
            redis:hset(chat_id, 'mention', true)
            text = lang.Lang(chat_id, 'lock:mention:d')
          end
        elseif matches[2]:lower() == 'hashtag' then
          if redis:hget(chat_id, 'hashtag') == true then
            text = lang.Lang(chat_id, 'lock:hashtag:f')
          else
            redis:hset(chat_id, 'hashtag', true)
            text = lang.Lang(chat_id, 'lock:hashtag:d')
          end
        elseif matches[2]:lower() == 'atsign' then
          if redis:hget(chat_id, 'atsign') == true then
            text = lang.Lang(chat_id, 'lock:atsign:f')
          else
            redis:hset(chat_id, 'atsign', true)
            text = lang.Lang(chat_id, 'lock:atsign:d')
          end
        elseif matches[2]:lower() == 'files' then
          if redis:hget(chat_id, 'file') == true then
            text = lang.Lang(chat_id, 'lock:file:f')
          else
            redis:hset(chat_id, 'file', true)
            text = lang.Lang(chat_id, 'lock:file:d')
          end
        elseif matches[2]:lower() == 'animation' then
          if redis:hget(chat_id, 'animation') == true then
            text = lang.Lang(chat_id, 'lock:animation:f')
          else
            redis:hset(chat_id, 'animation', true)
            text = lang.Lang(chat_id, 'lock:animation:d')
          end
        elseif matches[2]:lower() == 'stickers' then
          if redis:hget(chat_id, 'stickers') == true then
            text = lang.Lang(chat_id, 'lock:stickers:f')
          else
            redis:hset(chat_id, 'stickers', true)
            text = lang.Lang(chat_id, 'lock:stickers:d')
          end
        elseif matches[2]:lower() == 'bots' then
          if redis:hget(chat_id, 'bots') == true then
            text = lang.Lang(chat_id, 'lock:bots:f')
          else
            redis:hset(chat_id, 'bots', true)
            text = lang.Lang(chat_id, 'lock:bots:d')
          end
        else
          text = ''
        end
        tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
      end
      -------
      if matches[1]:lower() == 'unlock' and rank.is_Mods(msg) then
        if matches[2]:lower() == 'edit' then
          if redis:hget(chat_id, 'edit') == false then
            text = lang.Lang(chat_id, 'Unlock:edit:f')
          else
            redis:hset(chat_id, 'edit', false)
            text = lang.Lang(chat_id, 'Unlock:edit:d')
          end
        elseif matches[2]:lower() == 'flood' then
          if redis:hget(chat_id, 'flood') == false then
            text = lang.Lang(chat_id, 'Unlock:flood:f')
          else
            redis:hset(chat_id, 'flood', false)
            text = lang.Lang(chat_id, 'Unlock:flood:d')
          end
        elseif matches[2]:lower() == 'longmessage' then
          if redis:hget(chat_id, 'longmessage') == false then
            text = lang.Lang(chat_id, 'Unlock:longmessage:f')
          else
            redis:hset(chat_id, 'longmessage', false)
            text = lang.Lang(chat_id, 'Unlock:longmessage:d')
          end
        elseif matches[2]:lower() == 'shortmessage' then
          if redis:hget(chat_id, 'shortmessage') == false then
            text = lang.Lang(chat_id, 'Unlock:shortmessage:f')
          else
            redis:hset(chat_id, 'shortmessage', false)
            text = lang.Lang(chat_id, 'Unlock:shortmessage:d')
          end
        elseif matches[2]:lower() == 'caption' then
          if redis:hget(chat_id, 'caption') == false then
            text = lang.Lang(chat_id, 'Unlock:caption:f')
          else
            redis:hset(chat_id, 'caption', false)
            text = lang.Lang(chat_id, 'Unlock:caption:d')
          end
        elseif matches[2]:lower() == 'forward' then
          if redis:hget(chat_id, 'forward') == false then
            text = lang.Lang(chat_id, 'Unlock:forward:f')
          else
            redis:hset(chat_id, 'forward', false)
            text = lang.Lang(chat_id, 'Unlock:forward:d')
          end
        elseif matches[2]:lower() == 'channelforward' then
          if redis:hget(chat_id, 'channelforward') == false then
            text = lang.Lang(chat_id, 'Unlock:channelforward:f')
          else
            redis:hset(chat_id, 'channelforward', false)
            text = lang.Lang(chat_id, 'Unlock:channelforward:d')
          end
        elseif matches[2]:lower() == 'userforward' then
          if redis:hget(chat_id, 'userforward') == false then
            text = lang.Lang(chat_id, 'Unlock:userforward:f')
          else
            redis:hset(chat_id, 'userforward', false)
            text = lang.Lang(chat_id, 'Unlock:userforward:d')
          end
        elseif matches[2]:lower() == 'reply' then
          if redis:hget(chat_id, 'reply') == false then
            text = lang.Lang(chat_id, 'Unlock:reply:f')
          else
            redis:hset(chat_id, 'reply', false)
            text = lang.Lang(chat_id, 'Unlock:reply:d')
          end
        elseif matches[2]:lower() == 'inline' then
          if redis:hget(chat_id, 'inline') == false then
            text = lang.Lang(chat_id, 'Unlock:inline:f')
          else
            redis:hset(chat_id, 'inline', false)
            text = lang.Lang(chat_id, 'Unlock:inline:d')
          end
        elseif matches[2]:lower() == 'game' then
          if redis:hget(chat_id, 'game') == false then
            text = lang.Lang(chat_id, 'Unlock:game:f')
          else
            redis:hset(chat_id, 'game', false)
            text = lang.Lang(chat_id, 'Unlock:game:d')
          end
        elseif matches[2]:lower() == 'keyboard' then
          if redis:hget(chat_id, 'keyboard') == false then
            text = lang.Lang(chat_id, 'Unlock:keyboard:f')
          else
            redis:hset(chat_id, 'keyboard', false)
            text = lang.Lang(chat_id, 'Unlock:keyboard:d')
          end
        elseif matches[2]:lower() == 'media' then
          if redis:hget(chat_id, 'media') == false then
            text = lang.Lang(chat_id, 'Unlock:media:f')
          else
            redis:hset(chat_id, 'media', false)
            text = lang.Lang(chat_id, 'Unlock:media:d')
          end
        elseif matches[2]:lower() == 'text' then
          if redis:hget(chat_id, 'text') == false then
            text = lang.Lang(chat_id, 'Unlock:text:f')
          else
            redis:hset(chat_id, 'text', false)
            text = lang.Lang(chat_id, 'Unlock:text:d')
          end
        elseif matches[2]:lower() == 'textarabic' then
          if redis:hget(chat_id, 'textarabic') == false then
            text = lang.Lang(chat_id, 'Unlock:textarabic:f')
          else
            redis:hset(chat_id, 'textarabic', false)
            text = lang.Lang(chat_id, 'Unlock:textarabic:d')
          end
        elseif matches[2]:lower() == 'captionarabic' then
          if redis:hget(chat_id, 'captionarabic') == false then
            text = lang.Lang(chat_id, 'Unlock:captionarabic:f')
          else
            redis:hset(chat_id, 'captionarabic', false)
            text = lang.Lang(chat_id, 'Unlock:captionarabic:d')
          end
        elseif matches[2]:lower() == 'arabic' then
          if redis:hget(chat_id, 'arabic') == false then
            text = lang.Lang(chat_id, 'Unlock:arabic:f')
          else
            redis:hset(chat_id, 'arabic', false)
            text = lang.Lang(chat_id, 'Unlock:arabic:d')
          end
        elseif matches[2]:lower() == 'textenglish' then
          if redis:hget(chat_id, 'textenglish') == false then
            text = lang.Lang(chat_id, 'Unlock:textenglish:f')
          else
            redis:hset(chat_id, 'textenglish', false)
            text = lang.Lang(chat_id, 'Unlock:textenglish:d')
          end
        elseif matches[2]:lower() == 'captionenglish' then
          if redis:hget(chat_id, 'captionenglish') == false then
            text = lang.Lang(chat_id, 'Unlock:captionenglish:f')
          else
            redis:hset(chat_id, 'captionenglish', false)
            text = lang.Lang(chat_id, 'Unlock:captionenglish:d')
          end
        elseif matches[2]:lower() == 'english' then
          if redis:hget(chat_id, 'english') == false then
            text = lang.Lang(chat_id, 'Unlock:english:f')
          else
            redis:hset(chat_id, 'english', false)
            text = lang.Lang(chat_id, 'Unlock:english:d')
          end
        ---------------------------Medias
        elseif matches[2]:lower() == 'voice' then
          if redis:hget(chat_id, 'voice') == false then
            text = lang.Lang(chat_id, 'Unlock:voice:f')
          else
            redis:hset(chat_id, 'voice', false)
            text = lang.Lang(chat_id, 'Unlock:voice:d')
          end
        elseif matches[2]:lower() == 'music' then
          if redis:hget(chat_id, 'music') == false then
            text = lang.Lang(chat_id, 'Unlock:music:f')
          else
            redis:hset(chat_id, 'music', false)
            text = lang.Lang(chat_id, 'Unlock:music:d')
          end
        elseif matches[2]:lower() == 'location' then
          if redis:hget(chat_id, 'location') == false then
            text = lang.Lang(chat_id, 'Unlock:location:f')
          else
            redis:hset(chat_id, 'location', false)
            text = lang.Lang(chat_id, 'Unlock:location:d')
          end
        elseif matches[2]:lower() == 'photo' then
          if redis:hget(chat_id, 'photo') == false then
            text = lang.Lang(chat_id, 'Unlock:photo:f')
          else
            redis:hset(chat_id, 'photo', false)
            text = lang.Lang(chat_id, 'Unlock:photo:d')
          end
        elseif matches[2]:lower() == 'video' then
          if redis:hget(chat_id, 'video') == false then
            text = lang.Lang(chat_id, 'Unlock:video:f')
          else
            redis:hset(chat_id, 'video', false)
            text = lang.Lang(chat_id, 'Unlock:video:d')
          end
        elseif matches[2]:lower() == 'sharenumber' then
          if redis:hget(chat_id, 'sharenumber') == false then
            text = lang.Lang(chat_id, 'Unlock:sharenumber:f')
          else
            redis:hset(chat_id, 'sharenumber', false)
            text = lang.Lang(chat_id, 'Unlock:sharenumber:d')
          end
        elseif matches[2]:lower() == 'webpage' then
          if redis:hget(chat_id, 'webpage') == false then
            text = lang.Lang(chat_id, 'Unlock:webpage:f')
          else
            redis:hset(chat_id, 'webpage', false)
            text = lang.Lang(chat_id, 'Unlock:webpage:d')
          end
        elseif matches[2]:lower() == 'link' then
          if redis:hget(chat_id, 'link') == false then
            text = lang.Lang(chat_id, 'Unlock:link:f')
          else
            redis:hset(chat_id, 'link', false)
            text = lang.Lang(chat_id, 'Unlock:link:d')
          end
        elseif matches[2]:lower() == 'mention' then
          if redis:hget(chat_id, 'mention') == false then
            text = lang.Lang(chat_id, 'Unlock:mention:f')
          else
            redis:hset(chat_id, 'mention', false)
            text = lang.Lang(chat_id, 'Unlock:mention:d')
          end
        elseif matches[2]:lower() == 'hashtag' then
          if redis:hget(chat_id, 'hashtag') == false then
            text = lang.Lang(chat_id, 'Unlock:hashtag:f')
          else
            redis:hset(chat_id, 'hashtag', false)
            text = lang.Lang(chat_id, 'Unlock:hashtag:d')
          end
        elseif matches[2]:lower() == 'atsign' then
          if redis:hget(chat_id, 'atsign') == false then
            text = lang.Lang(chat_id, 'Unlock:atsign:f')
          else
            redis:hset(chat_id, 'atsign', false)
            text = lang.Lang(chat_id, 'Unlock:atsign:d')
          end
        elseif matches[2]:lower() == 'files' then
          if redis:hget(chat_id, 'file') == false then
            text = lang.Lang(chat_id, 'Unlock:file:f')
          else
            redis:hset(chat_id, 'file', false)
            text = lang.Lang(chat_id, 'Unlock:file:d')
          end
        elseif matches[2]:lower() == 'animation' then
          if redis:hget(chat_id, 'animation') == false then
            text = lang.Lang(chat_id, 'Unlock:animation:f')
          else
            redis:hset(chat_id, 'animation', false)
            text = lang.Lang(chat_id, 'Unlock:animation:d')
          end
        elseif matches[2]:lower() == 'stickers' then
          if redis:hget(chat_id, 'stickers') == false then
            text = lang.Lang(chat_id, 'Unlock:stickers:f')
          else
            redis:hset(chat_id, 'stickers', false)
            text = lang.Lang(chat_id, 'Unlock:stickers:d')
          end
        elseif matches[2]:lower() == 'bots' then
          if redis:hget(chat_id, 'bots') == false then
            text = lang.Lang(chat_id, 'Unlock:bots:f')
          else
            redis:hset(chat_id, 'bots', false)
            text = lang.Lang(chat_id, 'Unlock:bots:d')
          end
        else
          text = ''
        end
        tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
      end
      if matches[1]:lower() == 'silentmode' and rank.is_Mods(msg) then
        if matches[2]:lower() == 'on' then
          if redis:hget(chat_id, 'SilenMode') == true then
            text = lang.Lang(chat_id, 'lock:SilenMode:f')
          else
            redis:hset(chat_id, 'SilenMode', true)
            text = lang.Lang(chat_id, 'lock:SilenMode:d')
          end
        elseif matches[2]:lower() == 'off' then
          if redis:hget(chat_id, 'SilenMode') == false then
            text = lang.Lang(chat_id, 'Unlock:SilenMode:f')
          else
            redis:hset(chat_id, 'SilenMode', false)
            text = lang.Lang(chat_id, 'Unlock:SilenMode:d')
          end
        end
        tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
        
      end



      if matches[1]:lower() == 'settings' and rank.is_Mods(msg) then
        if matches[2] then 
          if rank.is_Admin(msg) then
            chat_id2 = matches[2] 
          else 
            chat_id2 = chat_id
          end
        else
          chat_id2 = chat_id
        end
        stng = redis:hgetall(chat_id2)
        expireTime = Expire(chat_id)
        text2 = 'Chat Settings for : '.. (stng.name or '') ..' :\n> *'..lang.Lang(chat_id, 'Settings:1')..'* : `'..(stng.link or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:2')..'* : `'..(stng.hashtag or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:3')..'* : `'..(stng.mention or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:5')..'* : `'..(stng.pin or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:6')..'* : `'..(stng.flood or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:6t')..'* : `'..(stng.floodT or '2')..'\n`> *'..lang.Lang(chat_id, 'Settings:6c')..'* : `'..(stng.floodC or '5')..'\n`> *'..lang.Lang(chat_id, 'Settings:7')..'* : `'..(stng.longmessage or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:7c')..'* : `'..(stng.longmessageC or '2000')..'\n`> *'..lang.Lang(chat_id, 'Settings:8')..'* : `'..(stng.shortmessage or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:8c')..'* : `'..(stng.shortmessageC or '1')..'\n`> *'..lang.Lang(chat_id, 'Settings:9')..'* : `'..(stng.caption or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:10')..'* : `'..(stng.captionenglish or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:11')..'* : `'..(stng.captionarabic or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:12')..'* : `'..(stng.text or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:13')..'* : `'..(stng.textarabic or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:14')..'* : `'..(stng.textenglish or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:15')..'* : `'..(stng.media or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:16')..'* : `'..(stng.forward or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:17')..'* : `'..(stng.channelforward or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:18')..'* : `'..(stng.userforward or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:19')..'* : `'..(stng.reply or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:20')..'* : `'..(stng.inline or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:21')..'* : `'..(stng.keyboard or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:22')..'* : `'..(stng.game or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:23')..'* : `'..(stng.voice or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:24')..'* : `'..(stng.music or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:25')..'* : `'..(stng.location or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:26')..'* : `'..(stng.english or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:27')..'* : `'..(stng.arabic or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:28')..'* : `'..(stng.photo or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:29')..'* : `'..(stng.video or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:30')..'* : `'..(stng.sharenumber or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:31')..'* : `'..(stng.webpage or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:32')..'* : `'..(stng.atsign or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:33')..'* : `'..(stng.animation or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:34')..'* : `'..(stng.files or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:35')..'* : `'..(stng.stickers or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:36')..'* : `'..(stng.bots or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:40')..'* : `'..(stng.SilentMode or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:41')..'* : `'..(stng.APIMOD or 'Unlock')..'\n`> *'..lang.Lang(chat_id, 'Settings:37')..'* : `'..(redis:get('lang:'..chat_id2) or 'en'):upper()..'\n`> *'..lang.Lang(chat_id, 'Settings:38')..'* : `'..(redis:get('cmdlang:'..chat_id2) or 'en'):upper()..'\n`> *'..lang.Lang(chat_id, 'Settings:39')..'* : `'..expireTime .. '`'
        text = text2:gsub('true', '✅'):gsub('Unlock', '❌'):gsub('false', '❌'):gsub('EN', '🇬🇧'):gsub('FA', '🇮🇷'):gsub('0','0⃣'):gsub('1', '1⃣'):gsub('2','2⃣'):gsub('3','3⃣'):gsub('4','4⃣'):gsub('5','5⃣'):gsub('6','6⃣'):gsub('7','7⃣'):gsub('8','8⃣'):gsub('9','9⃣')
        cli.sendText(chat_id, msg.id_, 0, 0, nil, text, 0, 'MarkDown')
      end
    else
      if matches[1]:lower() == 'settings' and rank.is_Mods(msg) then
        stng = redis:hgetall(chat_id)
        chat_id2 = chat_id
        expireTime = Expire(chat_id)
       text2 = '*Chat Settings for* : ['.. (stng.name or '') ..'](spr-cpu.ir) :\n'
	..'> *'..lang.Lang(chat_id, 'Settings:41')..'* : `'..(stng.APIMOD or 'Unlock')..'`\n'
	..'> *'..lang.Lang(chat_id, 'Settings:37')..'* : `'..(redis:get('lang:'..chat_id2) or 'en'):upper()..'`\n'
	..'> *'..lang.Lang(chat_id, 'Settings:38')..'* : `'..(redis:get('cmdlang:'..chat_id2) or 'en'):upper()..'`\n'
	..'> *'..lang.Lang(chat_id, 'Settings:39')..'* : `'..expireTime .. '`'
    text = text2:gsub('true', '✅')
    			:gsub('Unlock', '❌')
    			:gsub('false', '❌')
    			:gsub('EN','🇬🇧')
    			:gsub('FA','🇮🇷')
    			:gsub('0','0⃣')
    			:gsub('1','1⃣')
    			:gsub('2','2⃣')
    			:gsub('3','3⃣')
    			:gsub('4','4⃣')
    			:gsub('5','5⃣')
    			:gsub('6','6⃣')
    			:gsub('7','7⃣')
    			:gsub('8','8⃣')
    			:gsub('9','9⃣')
       	local keyboard = {}
    	keyboard.inline_keyboard = {
    	{
    	    {text = lang.Lang(chat_id, 'Settings:1'), callback_data = 'link_'..stng.link},
    		{text = stng.link:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'link_'..stng.link},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:2'), callback_data = 'hashtag_'..stng.hashtag},
    		{text = stng.hashtag:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'hashtag_'..stng.hashtag},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:3'), callback_data = 'mention_'..stng.mention},
    		{text = stng.mention:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'mention_'..stng.mention},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:4'), callback_data = 'edit_'..stng.edit},
    		{text = stng.edit:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'edit_'..stng.edit},
	    },
	    --
	    --[[{
    	    {text = lang.Lang(chat_id, 'Settings:5'), callback_data = 'pin_'..stng.pin},
    		{text = stng.pin:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'pin_'..stng.pin},
	    },]]
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:6'), callback_data = 'flood_'..stng.flood},
    		{text = stng.flood:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'flood_'..stng.flood},
	    },
	    {
    	    {text = lang.Lang(chat_id, 'Settings:6c'), callback_data = 'Nothing'},
	    },
	    {
    	    {text = '➕', callback_data = 'fastmessage_P'},
    	    {text = (stng.floodC or '5'), callback_data = 'fastmessage_R'},
    	    {text = '➖', callback_data = 'fastmessage_E'},
	    },
	    {
    	    {text = lang.Lang(chat_id, 'Settings:6t'), callback_data = 'Nothing'},
	    },
	    {
    	    {text = '➕', callback_data = 'fastmessageT_P'},
    	    {text = (stng.floodT or '5'), callback_data = 'fastmessageT_R'},
    	    {text = '➖', callback_data = 'fastmessageT_E'},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:7'), callback_data = 'longmessage'..stng.longmessage},
    		{text = stng.longmessage:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'longmessage_'..stng.longmessage},
	    },
	    {
    	    {text = lang.Lang(chat_id, 'Settings:7c'), callback_data = 'Nothing'},
	    },
	    {
    	    {text = '➕', callback_data = 'longmessage_P'},
    	    {text = (stng.longmessageC or '5'), callback_data = 'longmessage_R'},
    	    {text = '➖', callback_data = 'longmessage_E'},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:8'), callback_data = 'shortmessage'..stng.shortmessage},
    		{text = stng.shortmessage:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'shortmessage_'..stng.shortmessage},
	    },
	    {
    	    {text = lang.Lang(chat_id, 'Settings:8c'), callback_data = 'Nothing'},
	    },
	    {
    	    {text = '➕', callback_data = 'shortmessage_P'},
    	    {text = (stng.shortmessageC or '5'), callback_data = 'shortmessage_R'},
    	    {text = '➖', callback_data = 'shortmessage_E'},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:9'), callback_data = 'caption_'..stng.caption},
    		{text = stng.caption:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'caption_'..stng.caption},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:10'), callback_data = 'captionarabic_'..stng.captionarabic},
    		{text = stng.captionarabic:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'captionarabic_'..stng.captionarabic},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:11'), callback_data = 'captionenglish_'..stng.captionenglish},
    		{text = stng.captionenglish:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'captionenglish_'..stng.captionenglish},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:12'), callback_data = 'text_'..stng.text},
    		{text = stng.text:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'text_'..stng.text},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:13'), callback_data = 'textarabic_'..stng.textarabic},
    		{text = stng.textarabic:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'textarabic_'..stng.textarabic},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:14'), callback_data = 'textenglish_'..stng.textenglish},
    		{text = stng.textenglish:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'textenglish_'..stng.textenglish},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:15'), callback_data = 'media_'..stng.media},
    		{text = stng.media:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'media_'..stng.media},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:16'), callback_data = 'forward_'..stng.forward},
    		{text = stng.forward:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'forward_'..stng.forward},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:17'), callback_data = 'channelforward_'..stng.channelforward},
    		{text = stng.channelforward:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'channelforward_'..stng.channelforward},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:18'), callback_data = 'userforward_'..stng.userforward},
    		{text = stng.userforward:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'userforward_'..stng.userforward},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:19'), callback_data = 'reply_'..stng.reply},
    		{text = stng.reply:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'reply_'..stng.reply},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:20'), callback_data = 'inline_'..stng.inline},
    		{text = stng.inline:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'inline_'..stng.inline},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:21'), callback_data = 'keyboard_'..stng.keyboard},
    		{text = stng.keyboard:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'keyboard_'..stng.keyboard},
	    },
	    --
		{
    	    {text = lang.Lang(chat_id, 'Settings:22'), callback_data = 'game'..'_'..stng.game},
    		{text = stng.game:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'game'..'_'..stng.game},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:23'), callback_data = 'voice'..'_'..stng.voice},
    		{text = stng.voice:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'voice'..'_'..stng.voice},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:24'), callback_data = 'music'..'_'..stng.music},
    		{text = stng.music:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'music'..'_'..stng.music},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:25'), callback_data = 'location'..'_'..stng.location},
    		{text = stng.location:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'location'..'_'..stng.location},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:26'), callback_data = 'english'..'_'..stng.english},
    		{text = stng.english:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'english'..'_'..stng.english},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:27'), callback_data = 'arabic'..'_'..stng.arabic},
    		{text = stng.arabic:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'arabic'..'_'..stng.arabic},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:28'), callback_data = 'photo'..'_'..stng.photo},
    		{text = stng.photo:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'photo'..'_'..stng.photo},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:29'), callback_data = 'video'..'_'..stng.video},
    		{text = stng.video:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'video'..'_'..stng.video},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:30'), callback_data = 'sharenumber'..'_'..stng.sharenumber},
    		{text = stng.sharenumber:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'sharenumber'..'_'..stng.sharenumber},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:31'), callback_data = 'webpage'..'_'..stng.webpage},
    		{text = stng.webpage:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'webpage'..'_'..stng.webpage},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:32'), callback_data = 'atsign'..'_'..stng.atsign},
    		{text = stng.atsign:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'atsign'..'_'..stng.atsign},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:33'), callback_data = 'animation'..'_'..stng.animation},
    		{text = stng.animation:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'animation'..'_'..stng.animation},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:34'), callback_data = 'file'..'_'..stng.file},
    		{text = stng.file:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'file'..'_'..stng.file},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:35'), callback_data = 'stickers'..'_'..stng.stickers},
    		{text = stng.stickers:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'stickers'..'_'..stng.stickers},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:36'), callback_data = 'bots'..'_'..stng.bots},
    		{text = stng.bots:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'bots'..'_'..stng.bots},
	    },
	    --
	    {
    	    {text = lang.Lang(chat_id, 'Settings:40'), callback_data = 'SilenMode'..'_'..stng.SilenMode},
    		{text = stng.SilenMode:gsub('true', '✅'):gsub('false', '❌'), callback_data = 'SilenMode'..'_'..stng.SilenMode},
	    },
	    --
	    {
	        {text = "OurChannel🙄", url = 't.me/sprcpu_company'},
	        {text = "Support🙄", url = 't.me/Question_Robot?start=Support'},
        }
    	}

        api.sendMessage(chat_id, text, 'md', keyboard, 0, false)
      end
    end
    --------------------------------------------------------------------------------------------------------------------------------------------------
      if matches[1]:lower() == 'apimode' and rank.is_Mods(msg) then
        if matches[2]:lower() == 'on' then
          if redis:hget(chat_id, 'APIMOD') == 'Enable' then
            text = lang.Lang(chat_id, 'lock:APIMOD:f')
          else
            redis:hset(chat_id, 'APIMOD', 'Enable')
            text = lang.Lang(chat_id, 'lock:APIMOD:d')
          end
        elseif matches[2]:lower() == 'off' then
          if redis:hget(chat_id, 'APIMOD') == 'Disable' then
            text = lang.Lang(chat_id, 'Unlock:APIMOD:f')
          else
            redis:hset(chat_id, 'APIMOD', 'Disable')
            text = lang.Lang(chat_id, 'Unlock:APIMOD:d')
          end
        end
           tdcli_function({
      ID = "GetInlineQueryResults",
      bot_user_id_ = 107705060,
      chat_id_ = msg.chat_id_,
      user_location_ = {
        ID = "Location",
        latitude_ = 0,
        longitude_ = 0
      },
      query_ = text,
      offset_ = 0
    }, Inline, {chat_id=chat_id,msg_ID=msg.id_})
      end


      if matches[1]:lower() == 'c' then
        if matches[2]:lower() == 'mods' and rank.is_ExAdmin(msg) then
           hash = 'mods:'..chat_id
           list = redis:smembers(hash)
           text = ''..lang.Lang(chat_id, 'clean:mods')..' '
                for k,v in pairs(list) do
                  	u = redis:hgetall('users:'..v)
                  		if u.uname then
                    		text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
                  		elseif u.name then
                    		text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
                  		else
                    		text = text..' - *'..v..'* \n'
                  		end
                end
                redis:del(hash)
                cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
        elseif matches[2]:lower() == 'exadmins' and rank.is_Owner(msg) then
           hash = 'exadmins:'..chat_id
           list = redis:smembers(hash)
           text = ''..lang.Lang(chat_id, 'clean:exadmins')..' '
                for k,v in pairs(list) do
                  	u = redis:hgetall('users:'..v)
                  		if u.uname then
                    		text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
                  		elseif u.name then
                    		text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
                  		else
                   	 		text = text..' - *'..v..'* \n'
                  		end
                end
                redis:del(hash)
                cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
        elseif matches[2]:lower() == 'muted' and rank.is_Mods(msg) then
                hash = 'muted:'..chat_id
                  list = redis:smembers(hash)
                  text = ''..lang.Lang(chat_id, 'clean:muted')..' '
                  for k,v in pairs(list) do
                    u = (redis:hgetall('users:'..v))
                    if u.uname then
                    text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
                  elseif u.name then
                    text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
                  else
                    text = text..' - *'..v..'* \n'
                  end
                  end
                redis:del(hash)
                    cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
                elseif matches[2]:lower() == 'filterd' and rank.is_Mods(msg) then
                  hash = 'filterlist:'..chat_id
                  list = redis:smembers(hash)
                  text = lang.Lang(chat_id, 'clean:filterd')
                  for k,v in pairs(list) do
                    text = text..'`'..k..'` - *'..v..'*\n'
                  end
                redis:del(hash)
                    cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
                elseif matches[2]:lower() == 'msg' and rank.is_Mods(msg) then
                  local function cmsg(extra, result, succses)
                    local i = 0
                    for k,v in pairs(result.messages_) do
                        cli.deleteMessages(v.chat_id_, {[0] = v.id_})
                        i = i + 1
                    end
                      cli.sendText(chat_id, msg_id, 0, 1, nil, '`'..i..'` '..lang((extra or succses).chat_id, 'clean:msg'), 1, 'md')
                  end
                  tdcli_function ({
                    ID = "GetChatHistory",
                    chat_id_ = chat_id,
                    from_message_id_ = msg_id,
                    offset_ = 0,
                    limit_ = (matches[3] or 100)
                  }, cmsg, {chat_id=chat_id})
                elseif matches[2]:lower() == 'all' and rank.is_Mods(msg) then
                  local function call_cb(extra, result, success)
                  for v,k in pairs(result.members_) do
                    cli.deleteMessagesFromUser((extra or succses).chat_id, k.user_id_)
                  end
                end
                tdcli_function ({
                    ID = "GetChannelMembers",
                    channel_id_ = chat_id:gsub('-100',''),
                    filter_ = {
                      ID = "ChannelMembersRecent"
                    },
                    offset_ = 0,
                    limit_ = 10000
                  }, call_cb, {chat_id=chat_id})
                tdcli_function ({
                    ID = "GetChannelMembers",
                    channel_id_ = chat_id:gsub('-100',''),
                    filter_ = {
                      ID = "ChannelMembersKicked"
                    },
                    offset_ = 0,
                    limit_ = 10000
                  }, call_cb, {chat_id=chat_id})
                  text = lang.Lang(chat_id, 'clean:all')
                  cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

                elseif matches[2]:lower() == 'bots' and rank.is_Mods(msg) then
                  local function call_cb(extra, result, success)
                  for v,k in pairs(result.members_) do
                    cli.changeChatMemberStatus((extra or succses).chat_id, k.user_id_, 'Kicked')
                  end
                end
                tdcli_function ({
                    ID = "GetChannelMembers",
                    channel_id_ = chat_id:gsub('-100', ''),
                    filter_ = {
                      ID = "ChannelMembersBots"
                    },
                    offset_ = 0,
                    limit_ = 10000
                  }, call_cb, {chat_id=chat_id})
                text = lang.Lang(chat_id, 'clean:bots')
                cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
              end
            end



            if matches[1]:lower() == 'list' and rank.is_Mods(msg) then
            		if matches[2]:lower() == 'mods' then
            			hash = 'mods:'..chat_id
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:mods'):format(redis:hget(chat_id, 'name'))
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				text = lang.Lang(chat_id, 'list:modsE')
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'exadmins' then
            			hash = 'exadmins:'..chat_id
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:exadmins'):format(redis:hget(chat_id, 'name'))
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				owner = redis:get('owner:'..chat_id)
            				text = lang.Lang(chat_id, 'Owner')..' '..GetInfo(owner or 'NoOwner')
            				..'\n'..lang.Lang(chat_id, 'list:exadminsE'):format(redis:hget(chat_id, 'name'))
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'muted' then
            			hash = 'Muted:'..chat_id
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:muted'):format(redis:hget(chat_id, 'name'))
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				text = lang.Lang(chat_id, 'list:mutedE')
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'banned' then
            			hash = 'Banned:'..chat_id
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:banned'):format(redis:hget(chat_id, 'name'))
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				text = lang.Lang(chat_id, 'list:bannedE'):format(redis:hget(chat_id, 'name'))
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'admins' then
            			hash = 'F80:admins'
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:admins')
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				text = 'No Admins :('
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'sudos' then
            			hash = 'F80:sudos'
            			list = redis:smembers(hash)
            			if redis:scard(hash) > 0 then
            				text = lang.Lang(chat_id, 'list:sudos')
            				for k,v in pairs(list) do
            					text = text..'`'..k..'`> '..GetInfo(v)..'\n'
            				end
            			elseif redis:scard(hash) == 0 then
            				text = 'No Sudos :('
            			end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            		end
            		if matches[2]:lower() == 'bots' then
            			tdcli_function ({ID = "GetChannelMembers", channel_id_ = chat_id:gsub('-100', ''), filter_ = { ID = "ChannelMembersBots" }, offset_ = 0, limit_ = 10000 },
            			function(arg, msg)
            				text = lang.Lang(chat_id, 'list:bots'):format(redis:hget(chat_id, 'name'))
            				for k, v in pairs(msg.members_) do 
            					text = text..'`'..(tonumber(k) + 1)..'`> '..GetInfo(v.user_id_)..'\n'
            				end
                		cli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
            			end,
            		    nil)
            		end
            end



end

function DL(arg, data)

end
  
  local function CheckTEXT(msg)--, text)
    chat_id = msg.chat_id_
    user_id = msg.sender_user_id_
    msg_id = msg.id_ 
    reply_id = msg.reply_to_message_id_
    text = msg.content_.text_ 
    settings = redis:hgetall(msg.chat_id_)
    if not rank.isMods(msg.sender_user_id_, msg.chat_id_) then -- Dont Check Moderator Messages for More Speed :)
    --Check Links From Redis Data Base to Delete all Links ;)
    print(721368213)
      if settings.link == 'true' then
        if text:lower():match('t.me') or text:lower():match('telegram.me') or text:lower():match('http') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Checks #HashTag Messages 
      if settings.hashtag == 'true' then
        for k, ent in pairs(msg.content_.entities_) do
          if ent.ID == "MessageEntityHashtag" then -- Check By Entity for Better Results :)
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
          end
        end
      end
    --Checks @Username Messages 
      if settings.atsign == 'true' then
        if text:match('@') then 
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Checks Mention MessageEntityMention
      if settings.mention == 'true' then
        for k, ent in pairs(msg.content_.entities_) do
          if ent.ID == "MessageEntityMention" or ent.ID == "MessageEntityMentionName" then -- Check By Entity for Better Results :)
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
          end
        end
      end
    --Check Edited Messages :)
    --  if settings.edit == 'true' then
    --    if msg.edite_date_ ~= 0 then
    --      cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
    --    end
    --  end
    --Disabled :( --Check Pinned Messages :)
    --      (: DowN :)      --
    --Check Persian & Arabic TEXTS
      if settings.text == 'true' then
        if text then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.textarabic == 'true' then
        if text:match('[\216-\219][\128-\191]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.textenglish == 'true' then
        if text:lower():match('[qwertyuioplkjhgfdsazxcvbnm]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.reply == 'true' then
        if reply_id ~= 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.webpage == 'true' then
        if msg.content_.webpage_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    end
  end -- End Edite Text ;D --

  local function CheckCAPTION(msg)--, text)
    chat_id = msg.chat_id_
    user_id = msg.sender_user_id_
    msg_id = msg.id_ 
    reply_id = msg.reply_to_message_id_
    text = msg.content_.caption_ 
    settings = redis:hgetall(msg.chat_id_)
    if not rank.isMods(msg.sender_user_id_, msg.chat_id_) then -- Dont Check Moderator Messages for More Speed :)
    --Check Links From Redis Data Base to Delete all Links ;)
      if settings.link == 'true' then
        for k,links in pairs(redis:smembers('Links:DB')) do
          if text:match(links) then
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
          end
        end
      end
    --Checks #HashTag Messages 
      if settings.hashtag == 'true' then
        if text:match('#') then 
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Checks @Username Messages 
      if settings.atsign == 'true' then
        if text:match('@') then 
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Check Edited Messages :)
    --  if settings.edit == 'true' then
    --    if msg.edite_date_ ~= 0 then
    --      cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
    --    end
    --  end
    --Disabled :( --Check Pinned Messages :)
    --      (: DowN :)      --
    --Check Persian & Arabic TEXTS
      if settings.caption == 'true' then
        if text then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.captionarabic == 'true' then
        if text:match('[\216-\219][\128-\191]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.captionenglish == 'true' then
        if text:lower():match('[qwertyuioplkjhgfdsazxcvbnm]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.reply == 'true' then
        if reply_id ~= 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.webpage == 'true' then
        if msg.content_.webpage_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      -------------
    end
  end
  local function CheckMedia(msg)
    chat_id = msg.chat_id_
    user_id = msg.sender_user_id_
    msg_id = msg.id_ 
    reply_id = msg.reply_to_message_id_
    text = (msg.content_.text_ or msg.content_.caption_ or '')
    settings = redis:hgetall(msg.chat_id_)
    if not rank.isMods(msg.sender_user_id_, msg.chat_id_) then -- Dont Check Moderator Messages for More Speed :)
    --Check Links From Redis Data Base to Delete all Links ;)
      if settings.shortmessage == 'true' then
        if tonumber(msg.content_.text_:len()) < tonumber(settings.shortmessageC) then
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.longmessage == 'true' then
        if tonumber(msg.content_.text_:len()) > tonumber(settings.longmessageC) then
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.link == 'true' then
        for k,links in pairs(redis:smembers('Links:DB')) do
          if text:match(links) then
            cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
          end
        end
      end
    --Checks #HashTag Messages 
      if settings.hashtag == 'true' then
        if text:match('#') then 
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Checks @Username Messages 
      if settings.atsign == 'true' then
        if text:match('@') then 
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
    --Check Edited Messages :)
    --  if settings.edit == 'true' then
    --    if msg.edite_date_ ~= 0 then
    --      cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
    --    end
    --  end
      if settings.arabic == 'true' then
        if text:match('[\216-\219][\128-\191]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.english == 'true' then
        if text:lower():match('[qwertyuioplkjhgfdsazxcvbnm]') then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.reply == 'true' then
        if reply_id ~= 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.webpage == 'true' then
        if msg.content_.webpage_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      -------------
      --Media Locks 
      if settings.media == 'true' then
        if msg.content_.ID ~= 'MessageText' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.inline == 'true' then
        if msg.via_bot_user_id_ ~= 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.keyboard == 'true' then
        if msg.reply_markup_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.game == 'true' then
        if msg.content_.ID == 'MessageGame' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.voice == 'true' then
        if msg.content_.ID == 'MessageVoice' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.music == 'true' then
        if msg.content_.ID == 'MessageAudio' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.location == 'true' then
        if msg.content_.ID == 'MessageLocation' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.photo == 'true' then
        if msg.content_.ID == 'MessagePhoto' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.video == 'true' then
        if msg.content_.ID == 'MessageVideo' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.sharenumber == 'true' then
        if msg.content_.ID == 'MessageContact' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.animation == 'true' then
        if msg.content_.ID == 'MessageAnimation' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.file == 'true' then
        if msg.content_.ID == 'MessageDocument' then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.stickers == 'true' then
        if msg.content_.ID == 'MessageSticker' or msg.content_.sticker_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --
      if settings.forward == 'true' then
        if msg.forward_info_ then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.userforward == 'true' then
        if msg.forward_info_ and msg.views_ == 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      if settings.channelforward == 'true' then
        if msg.views_ ~= 0 then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --Media Locks
      if settings.SilenMode == 'true' then
        if msg then
          cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
        end
      end
      --------------
      local new_members = msg.content_.members_
        if new_members then
            msg.added = {}
            for i = 0, #new_members, 1 do
                k = i+1
                msg.added[k] = {}
                msg.added[k].id = new_members[i].id_
                if new_members[i].username_ then
                    msg.added[k].username = new_members[i].username_
                else
                    msg.added[k].username = false
                end
                msg.added[k].first_name = new_members[i].first_name_
                if new_members[i].last_name_ then
                    msg.added[k].last_name = new_members[i].last_name_
                else
                    msg.added[k].last_name = false
                end
            end
        end
        --
        if msg.content_.ID == "MessageChatAddMembers" then
        if msg.content_.members_ then
          if redis:hgetall(msg.chat_id_).bots == 'true' then
            for k,v in pairs(msg.content_.members_) do
              if v.type_.ID == 'UserTypeBot' then
                cli.changeChatMemberStatus(msg.chat_id_, v.id_, 'Kicked')
              end
            end
          end
        end
      end
      --
    end
  end

  local function EditedCB(arg, msg)
    --CheckMedia(msg)
    if msg.content_.ID == 'MessageText' then
      CheckTEXT(msg)--, msg.content_.text_)
    elseif msg.content_.caption_ then
      CheckCAPTION(msg)--, msg.content_.caption_)
    end
    if redis:hgetall(msg.chat_id_).edit == 'true' then
      cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
    end
  end
  local function CheckFlood(msg) 
    chat_id = msg.chat_id_
    user_id = msg.sender_user_id_
    msg_id = msg.id_ 
    reply_id = msg.reply_to_message_id_
    text = (msg.content_.text_ or msg.content_.caption_ or '')
    settings = redis:hgetall(msg.chat_id_)
    ---------------------------------------
    if not rank.isMods(msg.sender_user_id_, msg.chat_id_) then
      hash = 'user:'..user_id..':'..chat_id..':fldcount'
      redis:incr(hash)
      if redis:get('fld:'..chat_id..':u:'..user_id) == 'ss' then
      if settings.flood == 'true' then
        if tonumber(redis:get(hash)) > tonumber((settings.floodC or 5)) then
          redis:set(hash, 0)
          cli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
                  cli.sendText(chat_id, msg_id, 0, 1, nil, 'Spammer Kicked', 1, 'md')
        else
          redis:incrby(hash, 1)
        end
      end
      else
        redis:set(hash, 0)
        redis:setex('fld:'..chat_id..':u:'..user_id, (settings.floodT or 2), 'ss')
      end
    end
  end
----------------------------
local function CheckIT(data)
  if data.ID == 'UpdateNewMessage' then
    CheckFlood(data.message_)
    CheckMedia(data.message_)
    CheckMedia(data.message_)
    if data.message_.content_.ID == 'MessageText' then
      CheckTEXT(data.message_)--, data.message_.content_.text_)
      CheckTEXT(data.message_)--, data.message_.content_.text_)
    elseif data.message_.content_.caption_ then
      CheckCAPTION(data.message_)--, data.message_.content_.caption_)
      CheckCAPTION(data.message_)--, data.message_.content_.caption_)
    end
  elseif data.ID == "UpdateMessageEdited" then
    cli.getMessage(data.chat_id_, data.message_id_, EditedCB, nil)
  end
end
	function pre_process(msg)
		CheckIT(msg)
	end

return {
  patterns = {
  '^([Ii][Dd]) (.*)$',
    '^([Ii][Dd])$',
    '^([Vv][Ii][Ss][Uu][Dd][Oo])$',
    '^([Vv][Ii][Ss][Uu][Dd][Oo]) (.*)$',
    '^([Dd][Ee][Ss][Uu][Dd][Oo])$',
    '^([Dd][Ee][Ss][Uu][Dd][Oo]) (.*)$',
    '^([Dd][Ee][Gg][Ll][Oo][Bb][Aa][Ll][Aa][Dd][Mm][Ii][Nn])$',
    '^([Dd][Ee][Gg][Ll][Oo][Bb][Aa][Ll][Aa][Dd][Mm][Ii][Nn]) (.*)$',
    '^([Gg][Ll][Oo][Bb][Aa][Ll][Aa][Dd][Mm][Ii][Nn])$',
    '^([Gg][Ll][Oo][Bb][Aa][Ll][Aa][Dd][Mm][Ii][Nn]) (.*)$',
    '^([Ee][Xx][Tt][Rr][Aa][Pp][Rr][Oo][Mm][Oo][Tt][Ee])$',
    '^([Ee][Xx][Tt][Rr][Aa][Dd][Ee][Mm][Oo][Tt][Ee])$',
    '^([Ee][Xx][Tt][Rr][Aa][Pp][Rr][Oo][Mm][Oo][Tt][Ee]) (.*)$',
    '^([Ee][Xx][Tt][Rr][Aa][Dd][Ee][Mm][Oo][Tt][Ee]) (.*)$',
    '^([Pp][Rr][Oo][Mm][Oo][Tt][Ee])$',
    '^([Dd][Ee][Mm][Oo][Tt][Ee])$',
    '^([Pp][Rr][Oo][Mm][Oo][Tt][Ee]) (.*)$',
    '^([Dd][Ee][Mm][Oo][Tt][Ee]) (.*)$',
    '^([Ss][Ee][Tt][Oo][Ww][Nn][Ee][Rr])$',
    '^([Dd][Ee][Ll][Oo][Ww][Nn][Ee][Rr])$',
    '^([Dd][Ee][Ll][Oo][Ww][Nn][Ee][Rr]) (.*)$',
    '^([Ss][Ee][Tt][Oo][Ww][Nn][Ee][Rr]) (.*)$',
    '^([Mm][Uu][Tt][Ee][Uu][Ss][Ee][Rr])$',
    '^([Uu][Nn][Mm][Uu][Tt][Ee][Uu][Ss][Ee][Rr])$',
    '^([Mm][Uu][Tt][Ee][Uu][Ss][Ee][Rr]) (.*)$',
    '^([Uu][Nn][Mm][Uu][Tt][Ee][Uu][Ss][Ee][Rr]) (.*)$',
    '^([Bb][Aa][Nn])$',
    '^([Uu][Nn][Bb][Aa][Nn])$',
    '^([Bb][Aa][Nn]) (.*)$',
    '^([Uu][Nn][Bb][Aa][Nn]) (.*)$',
    '^([Kk][Ii][Cc][Kk])$',
    '^([Ii][Nn][Vv][Ii][Tt][Ee])$',
    '^([Kk][Ii][Cc][Kk]) (.*)$',
    '^([Ii][Nn][Vv][Ii][Tt][Ee]) (.*)$',
    '^([Ll][Oo][Cc][Kk]) (.*)$',
    '^([Uu][Nn][Ll][Oo][Cc][Kk]) (.*)$',
    '^([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss])$',
    '^([Aa][Pp][Ii][Mm][Oo][Dd][Ee]) (.*)$',
    '^([Cc]) (.*) (.*)$',
    '^([Cc]) (.*)$',
    '^([Cc])[Ll][Ee][Aa][Nn] (.*) (.*)$',
    '^([Cc])[Ll][Ee][Aa][Nn] (.*)$',
    '^([Ll][Ii][Ss][Tt]) (.*)$',
    '^(enable)$',
    '^(disable)$',
  },
  run = run,
  pre_process = pre_process
}
