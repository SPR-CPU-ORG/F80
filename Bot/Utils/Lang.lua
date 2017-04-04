--Lang
redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)

 function set_text2(lang, keyword, text) 
     local hash = 'lang:'..lang..':'..keyword 
     redis:set(hash, text) 
 end 

function lang_text(chat_id, keyword) 
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
         return 'Error hash : '..keyword..' isnt Seted in lang '..lang..'.' 
     end 
 

 end 

	local LN = {}
		local function findtext(lang, text)
			lang = lang 
			cmd = text 
			txt = lang_text(lang, cmd)
			return (txt or 'Error Hash : '.. cmd ..' Isnt Setted.')
		end
		LN.Lang = findtext
		local function set_text(lang, cmd, text)
			set_text2(lang, cmd, text) 
		end
		LN.set_text = set_text
	return LN
