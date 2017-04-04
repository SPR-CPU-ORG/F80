function Run (msg, matches) 
	if matches[1]:lower() == 'set' and matches[2]:lower() == 'lang' and rank.is_Mods(msg) then
		if matches[3]:lower() == 'fa' then
			redis:set('lang:'..msg.chat_id_, 'fa')
			cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'زبان گروه فارسی شد!', 0, 'MarkDown')
		elseif matches[3]:lower() == 'en' then
			redis:set('lang:'..msg.chat_id_, 'en')
			cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Group Language Seted On English', 0, 'MarkDown')
		else
			cli.sendText(msg.chat_id_ , msg.id_, 0, 0, nil, 'Language Not Found', 0, 'MarkDown')
		end
	end
	if matches[1]:lower() == 'set' and matches[2]:lower() == 'rules' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'Rules', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, lang.Lang(msg.chat_id_, 'SET:Rules'), 0, 'MarkDown')
	end
	if matches[1]:lower() == 'set' and matches[2]:lower() == 'name' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'name', matches[3])
		cli.changeChatTitle(msg.chat_id_, matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, lang.Lang(msg.chat_id_, 'SET:name'), 0, 'MarkDown')
	end
	if matches[1]:lower() == 'set' and matches[2]:lower() == 'link' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'Grouplink', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, lang.Lang(msg.chat_id_, 'SET:link'), 0, 'MarkDown')
	end
	if matches[1]:lower() == 'set' and matches[2]:lower() == 'photo' and rank.is_Mods(msg) then
		local function setPhoto(chat_id, msg)
    		local photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
    		cli.changeChatPhoto(chat_id, photo)
  		end
        if msg.reply_to_message_id_ ~= 0 then
          cli.getMessage(msg.chat_id_, msg.reply_to_message_id_, function(a, d)
            if d.content_.ID == 'MessagePhoto' then
              setPhoto(a, d)
            end
        end, msg.chat_id_)
       end
    end

    if matches[1]:lower() == 'set' and matches[2]:lower() == 'flood' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'floodC', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Flood Count Limmited on :'..matches[3], 0, 'MarkDown')
	end

	if matches[1]:lower() == 'set' and matches[2]:lower() == 'floodtime' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'floodT', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Flood Check time seted to :'..matches[3], 0, 'MarkDown')
	end

	if matches[1]:lower() == 'set' and matches[2]:lower() == 'longcharr' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'longmessageC', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'longmessage Charachters Seted to :'..matches[3], 0, 'MarkDown')
	end

	if matches[1]:lower() == 'set' and matches[2]:lower() == 'shortcharr' and rank.is_Mods(msg) then
		redis:hset(msg.chat_id_, 'shortmessageC', matches[3])
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Shotmessage Charachters Seted to :'..matches[3], 0, 'MarkDown')
	end
    if matches[1]:lower() == 'rules' then
    	tst = redis:hget(msg.chat_id_, 'Rules')
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, tst, 0, 'MarkDown')
    end


    if matches[1]:lower() == 'link' and rank.is_Mods(msg) then
    	tst = redis:hget(msg.chat_id_, 'Grouplink')
		cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, tst, 0, 'MarkDown')
    end

		if matches[1]:lower() == 'filter' and matches[2] == '+' and rank.is_Mods(msg) then
			redis:sadd('filterlist:'..msg.chat_id_, matches[3])
			text = '`'..matches[3]..'` '..lang.Lang(msg.chat_id_, 'filter_plus')
			cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, text, 0, 'MarkDown')
		end
		if matches[1]:lower() == 'filter' and matches[2] == '-' and rank.is_Mods(msg) then
			redis:srem('filterlist:'..msg.chat_id_, matches[3])
			text = '`'..matches[3]..'` '..lang.Lang(msg.chat_id_, 'filter_egul')
			cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, text, 0, 'MarkDown')
		end

		if matches[1]:lower() == 'set' and matches[2]:lower() == 'expire' and rank.is_Admin(msg) then
			Day = (tonumber(matches[3]) * 86400)
			Time = tonumber(os.time() + Day + 1)
			redis:hset(msg.chat_id_, 'Expire', Time)
			cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Expire seted to ', 0, 'MarkDown')
		end

end	


					function Check_Msg(msg, text)
						chat_id = msg.chat_id_
						msg_id = msg.id_
					if not rank.is_Mods(msg) then
						for k,v in pairs(redis:smembers('filterlist:'..chat_id)) do
							if string.find(text, v) then
								cli.deleteMessages(chat_id, {[0] = msg_id})
							end
						end
					end
				end
				function EditLock(success, msg, extra)
					Check_Msg(msg, (msg.content_.text_ or msg.content_.caption_))
				end

	function Pre_Prss(msg)
		if msg.message_ then
			if (msg.message_.content_.text_ or msg.message_.content_.caption_) then
				Check_Msg(msg.message_, (msg.message_.content_.text_ or msg.message_.content_.caption_))
			end
			if redis:sismember ('Muted:'..msg.message_.chat_id_, msg.message_.sender_user_id_) then
				cli.deleteMessages(msg.message_.chat_id_, {[0] = msg.message_.id_})
			end
		end
	end


	return {
		patterns = {
			'^([Ss][Ee][Tt]) ([Rr][Uu][Ll][Ee][Ss]) (.*)$',
			'^([Ss][Ee][Tt]) ([Nn][Aa][Mm][Ee]) (.*)$',
			'^([Ss][Ee][Tt]) ([Ll][Aa][Nn][Gg]) (.*)$',
			'^([Ss][Ee][Tt]) ([Ll][Ii][Nn][Kk]) (.*)$',
			'^([Ss][Ee][Tt]) ([Pp][Hh][Oo][Tt][Oo])$',
			'^([Rr][Uu][Ll][Ee][Ss])$',
			'^([Ll][Ii][Nn][Kk])$',

					'^([Ff][Ii][Ll][Tt][Ee][Rr]) (+) (.*)$',
					'^([Ff][Ii][Ll][Tt][Ee][Rr]) (-) (.*)$',
			'^([Ss][Ee][Tt]) (flood) (.*)$',
			'^([Ss][Ee][Tt]) (floodtime) (.*)$',
			'^([Ss][Ee][Tt]) (longcharr) (.*)$',
			'^([Ss][Ee][Tt]) (expire) (%d+)$',
			'^([Ss][Ee][Tt]) (shortcharr) (.*)$',
		}, 
		run = Run,
  		pre_process = Pre_Prss
	}