  function Expire(ChatID)
  	Tt = (redis:hget(ChatID, 'Expire') or os.time())
  	Tl = os.time()
  	D = 60 * 60 * 24
  	return math.floor((tonumber(Tt) - tonumber(Tl)) / 86400)
  end

function Run(msg, matches)
	if rank.isMods(msg.from.id, msg.message.chat.id) then

	chat_id = msg.message.chat.id 
	if matches[2] == 'true' then
		redis:hset(chat_id, matches[1], 'false')
	elseif matches[2] == 'false' then
		redis:hset(chat_id, matches[1], 'true')
	end
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
    api.editMessageText(chat_id, msg.message.message_id, text, 'md', keyboard)
end
end
	return {
		patterns = {
			'^#!CallBack:(.*)_(false)$',
			'^#!CallBack:(.*)_(true)$',
		},
		run = Run,
	}