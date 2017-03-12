

local function run(msg, matches)
 if matches[1]:lower() == 'plist' then
    X = redis:smembers('Bot:Enable:Plugins')
    text = ''
	for k,v in pairs(redis:smembers('Bot:Enable:Plugins')) do
		text = text .. k ..' - ' .. v .. '\n'
	end
 text = text .. '\n@SprCpu_Company' 
 --
 tdcli.sendText(msg.chat_id_, msg.id_, 0, 1, nil, text, 1, 'md')
 end
if matches[1]:lower() == 'pl' then
	if is_sudo(msg) then
		if matches[2] == '-' then
			redis:srem('Bot:Enable:Plugins', matches[3])
			text = matches[3] .. ' Disabled'
	
		end
		if matches[2] == '+' then
			redis:sadd('Bot:Enable:Plugins', matches[3])
			text = matches[3] .. ' Enabled'
	
		end
		if matches[2] == '*' then
			text = 'Bot Reloaded . . .'
			plugins = {}
  			load_plugins()
		end
	end
  tdcli.sendText(msg.chat_id_, msg.id_, 0, 1, nil, text, 1, 'md')
  --
end
end

return {
  patterns = {
    "^[!/#]([Pp]list)$",
    "^[!/#]([Pp]l) (+) ([%w_%.%-]+)$",
    "^[!/#]([Pp]l) (-) ([%w_%.%-]+)$",
    "^[!/#]([Pp]l) (*)$",
    "^[!/#]([Rr]eload)$"
    },
  run = run
}

