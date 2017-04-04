-- Message Checking ....
redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)
redis:auth('sprcpu1234')
--Checking functions ;)
local C = {}
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
		--	if settings.edit == 'true' then
		--		if msg.edite_date_ ~= 0 then
		--			cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
		--		end
		--	end
		--Disabled :( --Check Pinned Messages :)
		--			(: DowN :)			--
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
		--	if settings.edit == 'true' then
		--		if msg.edite_date_ ~= 0 then
		--			cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
		--		end
		--	end
		--Disabled :( --Check Pinned Messages :)
		--			(: DowN :)			--
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
		--	if settings.edit == 'true' then
		--		if msg.edite_date_ ~= 0 then
		--			cli.deleteMessages(chat_id, {[0] = msg_id}, DL, nil)
		--		end
		--	end
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
			if settings.sticker == 'true' then
				if msg.content_.ID == 'MessageSticker' then
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
C.CheckIT = CheckIT
return C