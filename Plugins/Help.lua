	function Run(msg, matches)
		help = {}
		help.fun = {}
		help.fun.fa = 'Help Fun'
		help.fun.en = 'Help Fun'
		help.mod = {}
		help.mod.fa = 'Help Fun'
		help.mod.en = 'Help Fun'
		help.ex = {}
		help.ex.fa = 'Help Fun'
		help.ex.en = 'Help Fun'
		help.sudo = {}
		help.sudo.fa = 'Help Fun'
		help.sudo.en = 'Help Fun'
		help.main = {}
		help.main.fa = 'Help Fun'
		help.main.en = 'Help Fun'
		if matches[1] :lower() == 'help' then
			if matches[2] then
				if matches[2] :lower() == 'fun' then
					cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, help.fun[redis:get('lang:'..msg.chat_id_)], 0, 'MarkDown')
				elseif matches[2] :lower() == 'mod' then
					cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, help.mod[redis:get('lang:'..msg.chat_id_)], 0, 'MarkDown')
				elseif matches[2] :lower() == 'owner' then
					cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, help.owner[redis:get('lang:'..msg.chat_id_)], 0, 'MarkDown')
				else
					cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, help.main[redis:get('lang:'..msg.chat_id_)], 0, 'MarkDown')
				end
			else
				cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, help.main[redis:get('lang:'..msg.chat_id_)], 0, 'MarkDown')
			end
		end




	end
	return {
	patterns = {
			'^([Hh][Ee][Ll][Pp])$',
			'^([Hh][Ee][Ll][Pp]) (.*)$',
	},
	run = Run,
	}	

