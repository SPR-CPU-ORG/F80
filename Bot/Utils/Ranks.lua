------------ Ranks
redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)
	local R = {}
	--\\Is Sudo (Message or UserID)
	local function is_Sudo(data)
		msg = (data or data.message_) 
		Sudos = _Config.Sudos

		Sudo = redis:sismember('F80:sudos', msg.sender_user_id_)
		for k,v in pairs(Sudos) do 
			if msg.sender_user_id_ == v then
				return true
			end
		end
		if Sudo then
			return true
		end
		return false
	end
	R.is_Sudo = is_Sudo
	local function isSudo(user_id)
		Sudos = _Config.Sudos
		Sudo = redis:sismember('F80:sudos', user_id)
		for k,v in pairs(Sudos) do 
			if user_id == v then
				return true
			end
		end
		if Sudo then
			return true
		end
		return false
	end
	R.isSudo = isSudo
	local function is_Admin(data)
		msg = (data or data.message_) 
		Sudo = redis:sismember('F80:admins', msg.sender_user_id_)
		if Sudo then
			return true
		end
		if isSudo(msg.sender_user_id_) then
			return true
		end
		return false
	end
	R.is_Admin = is_Admin
	local function isAdmin(user_id)
		Sudo = redis:sismember('F80:admins', user_id)
		if Sudo then
			return true
		end
		if isSudo(user_id) then
			return true
		end
		return false
	end
	R.isAdmin = isAdmin
	local function is_ExAdmin(data)
		msg = (data or data.message_) 
		Sudo = redis:sismember('exadmins:'..msg.chat_id_, msg.sender_user_id_)
		if Sudo then
			return true
		end
		if isSudo(msg.sender_user_id_) then
			return true
		end
		if isAdmin(msg.sender_user_id_) then
			return true
		end
		return false
	end
	R.is_ExAdmin = is_ExAdmin
	local function isExAdmin(user_id, chat_id)
		Sudo = redis:sismember('exadmins:'..chat_id, user_id)
		if Sudo then
			return true
		end
		if isSudo(user_id) then
			return true
		end
		if isAdmin(user_id) then
			return true
		end
		return false
	end
	R.isExAdmin = isExAdmin
	local function is_Mods(data)
		msg = (data or data.message_) 
		Sudo = redis:sismember('mods:'..msg.chat_id_, msg.sender_user_id_)
		if Sudo then
			return true
		end
		if isSudo(msg.sender_user_id_) then
			return true
		end
		if isAdmin(msg.sender_user_id_) then
			return true
		end
		if isExAdmin(msg.chat_id_, msg.sender_user_id_) then
			return true
		end
		return false
	end
	R.is_Mods = is_Mods
	local function isMods(user_id, chat_id)
		Sudo = redis:sismember('mods:'..chat_id, user_id)
		if Sudo then
			return true
		end
		if isSudo(user_id) then
			return true
		end
		if isAdmin(user_id) then
			return true
		end
		if isExAdmin(user_id, chat_id) then
			return true
		end
		return false
	end
	R.isMods = isMods
	local function is_Owner(data)
		msg = (data or data.message_) 
		Sudo = redis:get('owner:'..msg.chat_id_)
		if Sudo == msg.sender_user_id_ then
			return true
		end
		if isSudo(msg.sender_user_id_) then
			return true
		end
		if isAdmin(msg.sender_user_id_) then
			return true
		end
		return false
	end
	R.is_Owner = is_Owner
	local function isOwner(user_id, chat_id)
		Sudo = redis:get('owner:'..chat_id)
		if Sudo == user_id then
			return true
		end
		if isSudo(user_id) then
			return true
		end
		if isAdmin(user_id) then
			return true
		end
		return false
	end
	R.isOwner = isOwner
	local function isMuted(user_id, chat_id)
		Sudo = redis:sismember('Muteds:'..chat_id, user_id)
		if Sudo then
			return true
		end
		return false
	end
	R.isMuted = isMuted
	local function isGMuted(user_id)
		Sudo = redis:sismember('GMuteds', user_id)
		if Sudo then
			return true
		end
		return false
	end
	R.isGMuted = isGMuted
	local function isBanned(user_id, chat_id)
		Sudo = redis:sismember('Banned:'..chat_id, user_id)
		if Sudo then
			return true
		end
		return false
	end
	R.isBanned = isBanned
	local function isGBanned(user_id)
		Sudo = redis:sismember('GBanned', user_id)
		if Sudo then
			return true
		end
		return false
	end
	R.isGBanned = isGBanned
	-------------------------------
	---Use ranks.User(user_id, chat_id) To get User Rank ;)
	-------------------------------
	local function User(user_id, chat_id)
		if isSudo(user_id) then
			return 'Sudo'
		elseif isAdmin(user_id) then
			return 'Admin'
		elseif isOwner(user_id, chat_id) then
			return 'Owner'
		elseif isExadmin(user_id, chat_id) then
			return 'ExAdmin'
		elseif isMods(user_id, chat_id) then
			return 'Mods'
		elseif isBanned(user_id, chat_id) then
			return 'Banned'
		elseif isGBanned(user_id, chat_id) then
			return 'GBanned'
		elseif isMuted(user_id, chat_id) then
			return 'Muted'
		elseif isGMuted(user_id, chat_id) then
			return 'GMuted'
		else
			return 'Memmber'
		end
	end
	R.User = User
	local function user(msg)
		return User(msg.sender_user_id_, msg.chat_id_)
	end
	R.user = user

	return R
