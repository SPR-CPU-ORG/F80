--

local URL = require 'socket.url'
local JSON = require 'dkjson'
local URL = require "socket.url"
local url = require "socket.url"
local http = require "socket.http"
local https = require "ssl.https"
local BASE_URL = 'https://api.telegram.org/bot' .. _Config. APiToken

local api = {}



local function sendRequest(url)
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


function api.getMe()

	local url = BASE_URL .. '/getMe'

	return sendRequest(url)

end

function api.getUpdates(offset)

	local url = BASE_URL .. '/getUpdates?timeout=20'

	if offset then
		url = url .. '&offset=' .. offset
	end
	
	return sendRequest(url)

end


function api.unbanChatMember(chat_id, user_id)
	
	local url = BASE_URL .. '/unbanChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id

	return sendRequest(url)
end

function api.kickChatMember(chat_id, user_id)
	
	local url = BASE_URL .. '/kickChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id
	
	local success, code, description = sendRequest(url)

	return success, code, description
end

local function code2text(code)
	--the default error description can't be sent as output, so a translation is needed
	if code == 101 or code == 105 or code == 107 then
		return _("I'm not an admin, I can't kick people")
	elseif code == 102 or code == 104 then
		return _("I can't kick or ban an admin")
	elseif code == 103 then
		return _("There is no need to unban in a normal group")
	elseif code == 106 or code == 134 then
		return _("This user is not a chat member")
	elseif code == 7 then
		return false
	end
	return false
end

function api.banUser(chat_id, user_id)
	
	local res, code = api.kickChatMember(chat_id, user_id) --try to kick. "code" is already specific
	
	if res then --if the user has been kicked, then...
		return res --return res and not the text
	else ---else, the user haven't been kicked
		local text = code2text(code)
		return res, code, text --return the motivation too
	end
end

function api.kickUser(chat_id, user_id)
	
	local res, code = api.kickChatMember(chat_id, user_id) --try to kick
	
	if res then --if the user has been kicked, then...
		--unban
		api.unbanChatMember(chat_id, user_id)
		api.unbanChatMember(chat_id, user_id)
		api.unbanChatMember(chat_id, user_id)
		return res
	else
		local motivation = code2text(code)
		return res, code, motivation
	end
end

function api.unbanUser(chat_id, user_id)
	
	local res, code = api.unbanChatMember(chat_id, user_id)
	return true
end

function api.getChat(chat_id)
	
	local url = BASE_URL .. '/getChat?chat_id=' .. chat_id
	
	return sendRequest(url)
	
end

function api.getChatAdministrators(chat_id)
	
	local url = BASE_URL .. '/getChatAdministrators?chat_id=' .. chat_id
	
	local res, code, desc = sendRequest(url)

	
	return res, code
	
end

function api.getChatMembersCount(chat_id)
	
	local url = BASE_URL .. '/getChatMembersCount?chat_id=' .. chat_id
	
	return sendRequest(url)
	
end

function api.getChatMember(chat_id, user_id)
	
	local url = BASE_URL .. '/getChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id
	
	local res, code, desc = sendRequest(url)
	
	return res, code
	
end

function api.leaveChat(chat_id)
	
	local url = BASE_URL .. '/leaveChat?chat_id=' .. chat_id
	
	local res, code = sendRequest(url)
	
	return res, code
	
end

function api.sendMessage(chat_id, text, parse_mode, reply_markup, reply_to_message_id, link_preview)	
	local url = BASE_URL .. '/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text)

	if reply_to_message_id then
		url = url .. '&reply_to_message_id=' .. reply_to_message_id
	end
	
	if parse_mode then
		if type(parse_mode) == 'string' and parse_mode:lower() == 'html' then
			url = url .. '&parse_mode=HTML'
		else
			url = url .. '&parse_mode=Markdown'
		end
	end
	
	if reply_markup then
		url = url..'&reply_markup='..URL.escape(JSON.encode(reply_markup))
	end
	
	if not link_preview then
		url = url .. '&disable_web_page_preview=true'
	end
	
	url = url..'&disable_notification=true'
	
	local res, code, desc = sendRequest(url)
	
	
	return res, code --return false, and the code

end


function api.editMessageText(chat_id, message_id, text, parse_mode, keyboard)
	
	local url = BASE_URL .. '/editMessageText?chat_id=' .. chat_id .. '&message_id='..message_id..'&text=' .. URL.escape(text)
	
	if parse_mode then
		if type(parse_mode) == 'string' and parse_mode:lower() == 'html' then
			url = url .. '&parse_mode=HTML'
		else
			url = url .. '&parse_mode=Markdown'
		end
	end
	
	url = url .. '&disable_web_page_preview=true'
	
	if keyboard then
		url = url..'&reply_markup='..URL.escape(JSON.encode(keyboard))
	end
	
	local res, code, desc = sendRequest(url)
	
	return res, code

end

function api.editMarkup(chat_id, message_id, reply_markup)
	
	local url = BASE_URL .. '/editMessageReplyMarkup?chat_id=' .. chat_id ..
		'&message_id='..message_id..
		'&reply_markup='..URL.escape(JSON.encode(reply_markup))
	
	return sendRequest(url)

end

function api.answerCallbackQuery(callback_query_id, text, show_alert, cache_time)
	
	local url = BASE_URL .. '/answerCallbackQuery?callback_query_id=' .. callback_query_id .. '&text=' .. URL.escape(text)
	
	if show_alert then
		url = url..'&show_alert=true'
	end
	
	if cache_time then
		local seconds = tonumber(cache_time) --* 3600
		url = url..'&cache_time='..seconds
	end
	
	return sendRequest(url)
	
end

function api.sendChatAction(chat_id, action)
 -- Support actions are typing, upload_photo, record_video, upload_video, record_audio, upload_audio, upload_document, find_location
	local url = BASE_URL .. '/sendChatAction?chat_id=' .. chat_id .. '&action=' .. action
	return sendRequest(url)

end

function api.sendLocation(chat_id, latitude, longitude, reply_to_message_id)

	local url = BASE_URL .. '/sendLocation?chat_id=' .. chat_id .. '&latitude=' .. latitude .. '&longitude=' .. longitude

	if reply_to_message_id then
		url = url .. '&reply_to_message_id=' .. reply_to_message_id
	end

	return sendRequest(url)

end

function api.forwardMessage(chat_id, from_chat_id, message_id)

	local url = BASE_URL .. '/forwardMessage?chat_id=' .. chat_id .. '&from_chat_id=' .. from_chat_id .. '&message_id=' .. message_id

	local res, code, desc = sendRequest(url)
	
	return res, code
	
end

function api.getFile(file_id)
	
	local url = BASE_URL .. '/getFile?file_id='..file_id
	
	return sendRequest(url)
	
end

-------------------------------------------------------------------------------
--Inlines 
function api.InlineQueryResultArticle(id, title, text, parse_mode, disable_web_page_preview, reply_markup, description)
	--type
	--id
	--title
	--InputTextMessageContent {
	--message_text
	--parse_mode
	--disable_web_page_preview
	--}
	--reply_markup
	--url
	--hide_url
	--description
	--thumb_url
	--thumb_width
	--thumb_height
	RSLT = {
	id = id,
	type = 'article',
		input_message_content = {
			message_text = text, 
			parse_mode = parse_mode, 
			disable_web_page_preview = disable_web_page_preview
		},
	--reply_markup = JSON.encode(reply_markup),
	title = title, 
	--description = description
	}

	url = BASE_URL .. '/InlineQueryResultArticle?type=article&id=' .. id .. '&input_message_content=' .. URL.escape(JSON.encode(INPT))
	if reply_markup then
		url = url..'&reply_markup='..URL.escape(JSON.encode(reply_markup))
	end
	if title then
		url = url .. '&title='..URL.escape(title)
	end
	if description then
		url = url .. '&description='..URL.escape(description)
	end

	return RSLT
end

--
------------------------Inline methods-----------------------------------------

function api.answerInlineQuery(inline_query_id, results, cache_time, is_personal, switch_pm_text, switch_pm_parameter)
	
	local url = BASE_URL .. '/answerInlineQuery?inline_query_id='..inline_query_id..'&results='..results--JSON.encode(results)
	
	if cache_time then
		url = url..'&cache_time='..cache_time
	end
	
	if is_personal then
		url = url..'&is_personal=True'
	end
	
	if switch_pm_text then
		url = url..'&switch_pm_text='..switch_pm_text
	end
	
	if switch_pm_parameter then
		url = url..'&switch_pm_parameter='..switch_pm_parameter
	end
	
	return sendRequest(url)

end

----------------------------By Id----------------------------------------------

function api.sendMediaId(chat_id, file_id, media, reply_to_message_id)
	local url = BASE_URL
	if media == 'voice' then
		url = url..'/sendVoice?chat_id='..chat_id..'&voice='
	elseif media == 'video' then
		url = url..'/sendVideo?chat_id='..chat_id..'&video='
	elseif media == 'photo' then
		url = url..'/sendPhoto?chat_id='..chat_id..'&photo='
	else
		return false, 'Media passed is not voice/video/photo'
	end
	
	url = url..file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end
	
	return sendRequest(url)
end

function api.sendPhotoId(chat_id, file_id, reply_to_message_id, caption)
	
	local url = BASE_URL .. '/sendPhoto?chat_id=' .. chat_id .. '&photo=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end
	if caption then
		url = url..'&caption='..caption
	end
	return sendRequest(url)
	
end

function api.sendVideoId(chat_id, file_id, reply_to_message_id, caption)
	
	local url = BASE_URL .. '/sendVideo?chat_id=' .. chat_id .. '&photo=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end
	if caption then
		url = url..'&caption='..caption
	end
	return sendRequest(url)
	
end

function api.sendDocumentId(chat_id, file_id, reply_to_message_id, caption)
	
	local url = BASE_URL .. '/sendDocument?chat_id=' .. chat_id .. '&document=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end
	
	if caption then
		url = url..'&caption='..caption
	end

	return sendRequest(url)
	
end

----------------------------To curl--------------------------------------------

local function curlRequest(curl_command)
 -- Use at your own risk. Will not check for success.

	io.popen(curl_command)

end

function api.sendPhoto(chat_id, photo, caption, reply_to_message_id)

	local url = BASE_URL .. '/sendPhoto'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "photo=@' .. photo .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if caption then
		curl_command = curl_command .. ' -F "caption=' .. caption .. '"'
	end

	return curlRequest(curl_command)

end

function api.sendDocument(chat_id, document, reply_to_message_id, caption)

	local url = BASE_URL .. '/sendDocument'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "document=@' .. document .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end
	
	if caption then
		curl_command = curl_command .. ' -F "caption=' .. caption .. '"'
	end
	
	return curlRequest(curl_command)

end

function api.sendSticker(chat_id, sticker, reply_to_message_id)

	local url = BASE_URL .. '/sendSticker'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "sticker=@' .. sticker .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	return curlRequest(curl_command)

end

function api.sendStickerId(chat_id, file_id, reply_to_message_id)
	
	local url = BASE_URL .. '/sendSticker?chat_id=' .. chat_id .. '&sticker=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end

	return sendRequest(url)
	
end

function api.sendAudio(chat_id, audio, reply_to_message_id, duration, performer, title)

	local url = BASE_URL .. '/sendAudio'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "audio=@' .. audio .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	if performer then
		curl_command = curl_command .. ' -F "performer=' .. performer .. '"'
	end

	if title then
		curl_command = curl_command .. ' -F "title=' .. title .. '"'
	end

	return curlRequest(curl_command)

end

function api.sendVideo(chat_id, video, reply_to_message_id, duration, performer, title)

	local url = BASE_URL .. '/sendVideo'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "video=@' .. video .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if caption then
		curl_command = curl_command .. ' -F "caption=' .. caption .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	return curlRequest(curl_command)

end

function api.sendVoice(chat_id, voice, reply_to_message_id)

	local url = BASE_URL .. '/sendVoice'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "voice=@' .. voice .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	return curlRequest(curl_command)

end
function api.getUserProfilePhotos(user_id, offset, limit)
	local url = BASE_URL .. '/getUserProfilePhotos?user_id='..user_id
	if offset then
		url = url .. '&offset='..offset
	end
	if limit then
		url = url .. '&limit='..limit
	end
	return sendRequest(url)

end
return api
