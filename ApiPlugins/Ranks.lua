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

	function Run(msg, matches)
		chat_id = matches[2]
		user_id = matches[3]
		if matches[1] == 'Demote' then
			if rank.isExAdmin(msg.from.id, matches[2]) then
			redis:srem('mods:'..chat_id, user_id)
				hash = 'mods:'..chat_id
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	text = lang.Lang(chat_id, 'list:mods'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'Demote '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	text = lang.Lang(chat_id, 'list:modsE'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
		if matches[1] == 'DemEx' then
			if rank.isOwner(msg.from.id, matches[2]) then
			redis:srem('exadmins:'..chat_id, user_id)
				hash = 'exadmins:'..chat_id
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	
                    owner = redis:get('owner:'..chat_id)
                            text = lang.Lang(chat_id, 'Owner')..' '..GetInfo(owner or 'NoOwner'):gsub('`','')
                            ..'\n'..lang.Lang(chat_id, 'list:exadminsE'):format(redis:hget(chat_id, 'name'))
                            
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'DemEx '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	text = lang.Lang(chat_id, 'list:exadminsE'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
		if matches[1] == 'Unmute' then
			if rank.isOwner(msg.from.id, matches[2]) then
			redis:srem('Muted:'..chat_id, user_id)
				hash = 'Muted:'..chat_id
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	text = lang.Lang(chat_id, 'list:muted'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'Unmute '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	text = lang.Lang(chat_id, 'list:mutedE'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
		if matches[1] == 'Unban' then
			if rank.isMods(msg.from.id, matches[2]) then
			redis:srem('Banned:'..chat_id, user_id)
				hash = 'Banned:'..chat_id
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	text = lang.Lang(chat_id, 'list:banned'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'Unban '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	text = lang.Lang(chat_id, 'list:bannedE'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
		if matches[1] == 'DemAdmin' then
			if rank.isSudo(msg.from.id) then
			redis:srem('F80:admins', user_id)
				hash = 'F80:admins'
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	text = lang.Lang(chat_id, 'list:admins'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'DemAdmin '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	text = lang.Lang(chat_id, 'list:admins'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
		if matches[1] == 'DemSudo' then
			if rank.isSudo(msg.from.id) then
			redis:srem('F80:sudos', user_id)
				hash = 'F80:sudos'
                list = redis:smembers(hash)
                if redis:scard(hash) > 0 then
                	text = lang.Lang(chat_id, 'list:sudos'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                	--..'{{"text":"'..  ..'","callback_data":"'..  ..'"}}'
                	for k,v in pairs(list) do
                		RMkUp = RMkUp..'[{"text":"'.. GetInfo(v):gsub('_', ''):gsub('*', ''):gsub('`', '') ..'","callback_data":"'.. 'DemSudo '.. chat_id .. ' ' .. v ..'"}],'
                	end
                elseif redis:scard(hash) == 0 then
                	owner = redis:get('owner:'..chat_id)
            				text = lang.Lang(chat_id, 'Owner')..' '..GetInfo(owner or 'NoOwner')
            				..'\n'..lang.Lang(chat_id, 'list:exadminsE'):format(redis:hget(chat_id, 'name'))
                	RMkUp = '&reply_markup={"inline_keyboard":['
                end
                --RMkUp = RMkUp..']]'
                RLTSD = 'https://api.telegram.org/bot251673288:AAGtx95_SphokAsID-Nv424kll5SNY5ynxk'
                ..'/editMessageText?chat_id='..msg.message.chat.id..'&message_id='..msg.message.message_id..'&text='..URL.escape(text)..'&parse_mode=Markdown'..RMkUp..'[{"text":"'.. 'OurChannel🙄' ..'","url":"t.me/sprcpu_company"}]]}'
                https.request(RLTSD)
			end
		end
	end

	return {
		patterns = {
			'#!CallBack:(.*) (.*) (.*)',
		},
	run = Run,
	}