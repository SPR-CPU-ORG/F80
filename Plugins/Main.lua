	----------F80 Main Plugin By @Reload_Life
	--29/Dex/2016 --Start Writing ...
	-----------------------------------------
	-----------------------------------------
	--#		Function That Need For Bot    #--
	-----------------------------------------
	-----------------------------------------
	function sleep(n)
  		os.execute("sleep " .. tonumber(n))
	end
Help = {
En = {
Sudo = '* F80 Sudos Help*\n'
..'`>`/add : *AddGroup To Administring Groups*\n'
..'`>`/rem : *RemGroup To Administring Groups*\n'
..'`>`/leave : *Bot Leaves Group*\n'
..'`>`/ID [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`/Link Del : *Set Link Posting Stats On Clean*\n'
..'`>`/Link Kick : *Set Link Posting Stats On KickUser*\n'
..'`>`/Link Report : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Link Ok : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/Clean Mods : *Clean Group Moderators*\n'
..'`>`/Clean Exadmins : *Clean Group Exadmins*\n'
..'`>`/Clean admins : *Clean admins*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Sudo + [_Reply|@Username|UserID_] : *Promote User To Sudo*\n'
..'`>`/Sudo - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Admin + [_Reply|@Username|UserID_] : *Promote User To GAdmin*\n'
..'`>`/Admin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`/Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *Promote User To Moderator*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'`>`/reload\n'
..'`>`/terminal [CMD]\n'
..'`>`/download [FilePath]\n'
..'`>`/uptime\n'
..'`>`/bc\n'
..'`>`/fbc [msgID|Reply]\n'
..'`>`/lua [String]\n'
..'`>`/update [FA|En]\n'
..'-- @SPRCPU\\_Company --',
Admin = '* F80 Admins Help*\n'
..'`>`/add : *AddGroup To Administring Groups*\n'
..'`>`/rem : *RemGroup To Administring Groups*\n'
..'`>`/leave : *Bot Leaves Group*\n'
..'`>`/ID [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`/Link Del : *Set Link Posting Stats On Clean*\n'
..'`>`/Link Kick : *Set Link Posting Stats On KickUser*\n'
..'`>`/Link Report : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Link Ok : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/Clean Mods : *Clean Group Moderators*\n'
..'`>`/Clean Exadmins : *Clean Group Exadmins*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`/Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *Promote User To Moderator*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'-- @SPRCPU\\_Company --',
ExAdmin = '* F80 Extra Admins Help*\n'
..'`>`/ID [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`/Link Del : *Set Link Posting Stats On Clean*\n'
..'`>`/Link Kick : *Set Link Posting Stats On KickUser*\n'
..'`>`/Link Report : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Link Ok : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/SilentGroup : *Enable GroupSilent Mod*\n'
..'`>`/UnSilentGroup : *Disbale GroupSilent Mod*\n'
..'`>`/Clean Mods : *Clean Group Moderators*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *Promote User To Moderator*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'-- @SPRCPU\\_Company --',
Mod = '* F80 GroupModerators Help*\n'
..'`>`/ID [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`/Link Del : *Set Link Posting Stats On Clean*\n'
..'`>`/Link Kick : *Set Link Posting Stats On KickUser*\n'
..'`>`/Link Report : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Link Ok : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/SilentGroup : *Enable GroupSilent Mod*\n'
..'`>`/UnSilentGroup : *Disbale GroupSilent Mod*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'-- @SPRCPU\\_Company --',
Member = '`>`/Rules : *Show Group Rules*\n`>`/Nerkh : *Show Group Fee*\n`>`@SPRCPU\\_Company'
 },
Fa = {
Sudo = '* F80 Sudos Help*\n'
..'`>`/add : *AddGroup To Administring Groups*\n'
..'`>`/rem : *RemGroup To Administring Groups*\n'
..'`>`/leave : *Bot Leaves Group*\n'
..'`>`/ID [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`/Link Del : *Set Link Posting Stats On Clean*\n'
..'`>`/Link Kick : *Set Link Posting Stats On KickUser*\n'
..'`>`/Link Report : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Link Ok : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/Clean Mods : *Clean Group Moderators*\n'
..'`>`/Clean Exadmins : *Clean Group Exadmins*\n'
..'`>`/Clean admins : *Clean admins*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Sudo + [_Reply|@Username|UserID_] : *Promote User To Sudo*\n'
..'`>`/Sudo - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Admin + [_Reply|@Username|UserID_] : *Promote User To GAdmin*\n'
..'`>`/Admin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`/Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *Promote User To Moderator*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'`>`/reload\n'
..'`>`/terminal [CMD]\n'
..'`>`/download [FilePath]\n'
..'`>`/uptime\n'
..'`>`/bc\n'
..'`>`/fbc [msgID|Reply]\n'
..'`>`/lua [String]\n'
..'`>`/update [FA|En]\n'
..'-- @SPRCPU\\_Company --',
Admin = '* F80 Admins Help*\n'
..'`>`/add : *اضافه کردن گروه*\n'
..'`>`/rem : *حذف گروه*\n'
..'`>`/leave : *ترک گروه*\n'
..'`>`/ID [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`/Link Del : *حذف لینک ها*\n'
..'`>`/Link Kick : *حذف لینک ها + اخراج کاربر*\n'
..'`>`/Link Report : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`/Link Ok : *ازاد کردن لینک*\n'
..'`>`/Username Del : *حذف یوزرنیم*\n'
..'`>`/Username Kick : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`/Username Report : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`/Username Ok : *ازاد کردن یوزرنیم*\n'
..'`>`/Hashtag Del : *حذف هشتگ*\n'
..'`>`/Hashtag Kick : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`/Hashtag Report : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`/Hashtag Ok : *ازاد کردن هشتگ*\n'
..'`>`/Flood Kick : *ممنوع کردن پیام سریع*\n'
..'`>`/Flood Ok : *ازاد کردن پیام سریع*\n'
..'`>`/Spam Kick : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`/Spam Ok : *ازاد کردن پیام طولانی*\n'
..'`>`/Spam del : *حذف پیام های طولانی*\n'
..'`>`/Lock|/Unlock Edit : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`/Lock|/Unlock Pin : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`/Lock|/Unlock Bots : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`/Lock|/Unlock Reply : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`/Lock|/Unlock English : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`/Lock|/Unlock Tgservice : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`/Mute|/UnMute Photo : *فقل|ازاد کردن عکس*\n'
..'`>`/Mute|/UnMute Video : *فقل|ازاد کردن فیلم*\n'
..'`>`/Mute|/UnMute Audio : *فقل|ازاد کردن آهنگ*\n'
..'`>`/Mute|/UnMute Voice : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`/Mute|/UnMute File : *فقل|ازاد کردن فایل*\n'
..'`>`/Mute|/UnMute Sticker : *فقل|ازاد کردن استیکر*\n'
..'`>`/Mute|/UnMute Contact : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`/Mute|/UnMute gif : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`/Mute|/UnMute Location : *فقل|ازاد کردن مکان*\n'
..'`>`/Mute|/UnMute Game : *فقل|ازاد کردن بازی*\n'
..'`>`/Mute|/UnMute Inlines : *فقل|ازاد کردن درون خطی*\n'
..'`>`/Clean Mods : *حذف تمامی مدیران*\n'
..'`>`/Clean Exadmins : *حذف تمامی مدیران اصلی*\n'
..'`>`/Clean Muted : *حذف لیست سکوت*\n'
..'`>`/Clean Filterd : *حذف لیست فیلتر*\n'
..'`>`/Clean Rules : *حذف قوانین*\n'
..'`>`/Clean wlc : *حذف پیام خوس امد گویی*\n'
..'`>`/Clean msg [2-100] : *حذف پیام های گروه*\n'
..'`>`/Clean all : *حذف همه پیام ها*\n'
..'`>`/List Mods : *نمایش لیست ادمین ها*\n'
..'`>`/List Exadmins : *نمایش لیست ادمین های اصلی*\n'
..'`>`/List Muted : *نمایش لیست سکوت*\n'
..'`>`/List Filterd : *نمایش لیست فیلتر*\n'
..'`>`/SetRules [_Rules_] : *تنظیم قوانین*\n'
..'`>`/SetLink [_Link_] : *تنظیم لینک*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *تنظیم پیام خوشامد گویی*\n'
..'`>`/SetName [_GroupName_] : *تنظیم نام*\n'
..'`>`/Setlang [_LangCode_] : *تنظیم زبان*\n'
..'`>`/SetFlood [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`/SetFloodTime [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`/SetCharr [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`/Filter + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`/Filter - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`/Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`/Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *ارتقاع به مدیر*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *عزل به کاربر*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`/Link : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`/Settings : *تنظیمات گروه*\n'
..'`>`/Rules : *قوانین*\n'
..'`>`/Nerkh : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
ExAdmin = '* F80 Extra Admins Help*\n'
..'`>`/ID [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`/Link Del : *حذف لینک ها*\n'
..'`>`/Link Kick : *حذف لینک ها + اخراج کاربر*\n'
..'`>`/Link Report : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`/Link Ok : *ازاد کردن لینک*\n'
..'`>`/Username Del : *حذف یوزرنیم*\n'
..'`>`/Username Kick : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`/Username Report : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`/Username Ok : *ازاد کردن یوزرنیم*\n'
..'`>`/Hashtag Del : *حذف هشتگ*\n'
..'`>`/Hashtag Kick : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`/Hashtag Report : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`/Hashtag Ok : *ازاد کردن هشتگ*\n'
..'`>`/Flood Kick : *ممنوع کردن پیام سریع*\n'
..'`>`/Flood Ok : *ازاد کردن پیام سریع*\n'
..'`>`/Spam Kick : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`/Spam Ok : *ازاد کردن پیام طولانی*\n'
..'`>`/Spam del : *حذف پیام های طولانی*\n'
..'`>`/Lock|/Unlock Edit : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`/Lock|/Unlock Pin : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`/Lock|/Unlock Bots : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`/Lock|/Unlock Reply : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`/Lock|/Unlock English : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`/Lock|/Unlock Tgservice : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`/Mute|/UnMute Photo : *فقل|ازاد کردن عکس*\n'
..'`>`/Mute|/UnMute Video : *فقل|ازاد کردن فیلم*\n'
..'`>`/Mute|/UnMute Audio : *فقل|ازاد کردن آهنگ*\n'
..'`>`/Mute|/UnMute Voice : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`/Mute|/UnMute File : *فقل|ازاد کردن فایل*\n'
..'`>`/Mute|/UnMute Sticker : *فقل|ازاد کردن استیکر*\n'
..'`>`/Mute|/UnMute Contact : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`/Mute|/UnMute gif : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`/Mute|/UnMute Location : *فقل|ازاد کردن مکان*\n'
..'`>`/Mute|/UnMute Game : *فقل|ازاد کردن بازی*\n'
..'`>`/Mute|/UnMute Inlines : *فقل|ازاد کردن درون خطی*\n'
..'`>`/Clean Mods : *حذف تمامی مدیران*\n'
..'`>`/Clean Muted : *حذف لیست سکوت*\n'
..'`>`/Clean Filterd : *حذف لیست فیلتر*\n'
..'`>`/Clean Rules : *حذف قوانین*\n'
..'`>`/Clean wlc : *حذف پیام خوس امد گویی*\n'
..'`>`/Clean msg [2-100] : *حذف پیام های گروه*\n'
..'`>`/Clean all : *حذف همه پیام ها*\n'
..'`>`/List Mods : *نمایش لیست ادمین ها*\n'
..'`>`/List Exadmins : *نمایش لیست ادمین های اصلی*\n'
..'`>`/List Muted : *نمایش لیست سکوت*\n'
..'`>`/List Filterd : *نمایش لیست فیلتر*\n'
..'`>`/SetRules [_Rules_] : *تنظیم قوانین*\n'
..'`>`/SetLink [_Link_] : *تنظیم لینک*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *تنظیم پیام خوشامد گویی*\n'
..'`>`/SetName [_GroupName_] : *تنظیم نام*\n'
..'`>`/Setlang [_LangCode_] : *تنظیم زبان*\n'
..'`>`/SetFlood [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`/SetFloodTime [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`/SetCharr [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`/Filter + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`/Filter - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *ارتقاع به مدیر*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *عزل به کاربر*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`/Link : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`/Settings : *تنظیمات گروه*\n'
..'`>`/Rules : *قوانین*\n'
..'`>`/Nerkh : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
Mod = '* F80 GroupModerators Help*\n'
..'`>`/ID [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`/Link Del : *حذف لینک ها*\n'
..'`>`/Link Kick : *حذف لینک ها + اخراج کاربر*\n'
..'`>`/Link Report : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`/Link Ok : *ازاد کردن لینک*\n'
..'`>`/Username Del : *حذف یوزرنیم*\n'
..'`>`/Username Kick : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`/Username Report : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`/Username Ok : *ازاد کردن یوزرنیم*\n'
..'`>`/Hashtag Del : *حذف هشتگ*\n'
..'`>`/Hashtag Kick : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`/Hashtag Report : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`/Hashtag Ok : *ازاد کردن هشتگ*\n'
..'`>`/Flood Kick : *ممنوع کردن پیام سریع*\n'
..'`>`/Flood Ok : *ازاد کردن پیام سریع*\n'
..'`>`/Spam Kick : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`/Spam Ok : *ازاد کردن پیام طولانی*\n'
..'`>`/Spam del : *حذف پیام های طولانی*\n'
..'`>`/Lock|/Unlock Edit : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`/Lock|/Unlock Pin : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`/Lock|/Unlock Bots : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`/Lock|/Unlock Reply : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`/Lock|/Unlock English : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`/Lock|/Unlock Tgservice : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`/Mute|/UnMute Photo : *فقل|ازاد کردن عکس*\n'
..'`>`/Mute|/UnMute Video : *فقل|ازاد کردن فیلم*\n'
..'`>`/Mute|/UnMute Audio : *فقل|ازاد کردن آهنگ*\n'
..'`>`/Mute|/UnMute Voice : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`/Mute|/UnMute File : *فقل|ازاد کردن فایل*\n'
..'`>`/Mute|/UnMute Sticker : *فقل|ازاد کردن استیکر*\n'
..'`>`/Mute|/UnMute Contact : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`/Mute|/UnMute gif : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`/Mute|/UnMute Location : *فقل|ازاد کردن مکان*\n'
..'`>`/Mute|/UnMute Game : *فقل|ازاد کردن بازی*\n'
..'`>`/Mute|/UnMute Inlines : *فقل|ازاد کردن درون خطی*\n'
..'`>`/Clean Muted : *حذف لیست سکوت*\n'
..'`>`/Clean Filterd : *حذف لیست فیلتر*\n'
..'`>`/Clean Rules : *حذف قوانین*\n'
..'`>`/Clean wlc : *حذف پیام خوس امد گویی*\n'
..'`>`/Clean msg [2-100] : *حذف پیام های گروه*\n'
..'`>`/Clean all : *حذف همه پیام ها*\n'
..'`>`/List Mods : *نمایش لیست ادمین ها*\n'
..'`>`/List Muted : *نمایش لیست سکوت*\n'
..'`>`/List Filterd : *نمایش لیست فیلتر*\n'
..'`>`/SetRules [_Rules_] : *تنظیم قوانین*\n'
..'`>`/SetLink [_Link_] : *تنظیم لینک*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *تنظیم پیام خوشامد گویی*\n'
..'`>`/SetName [_GroupName_] : *تنظیم نام*\n'
..'`>`/Setlang [_LangCode_] : *تنظیم زبان*\n'
..'`>`/SetFlood [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`/SetFloodTime [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`/SetCharr [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`/Filter + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`/Filter - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`/Link : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`/Settings : *تنظیمات گروه*\n'
..'`>`/Rules : *قوانین*\n'
..'`>`/Nerkh : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
Member = '`>`/Rules : *نمایش قوانین*\n`>`/Nerkh : *نمایش قوانین گروه*\n`>`@SPRCPU\\_Company'
 },
}


FaH = {
Sudo = '* F80 Sudos Help*\n'
..'`>`/add : *AddGroup To Administring Groups*\n'
..'`>`/rem : *RemGroup To Administring Groups*\n'
..'`>`/leave : *Bot Leaves Group*\n'
..'`>`#ایدی [_Reply|@Username|UserID_]: *Get Target UserID*\n'
..'`>`#لینک حذف : *Set Link Posting Stats On Clean*\n'
..'`>`#لینک اخراح : *Set Link Posting Stats On KickUser*\n'
..'`>`#لینک ریپورت : *Set Link Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`#لینک ازاد : *Allow Link Posting*\n'
..'`>`/Username Del : *Set Username Posting Stats On Clean*\n'
..'`>`/Username Kick : *Set Username Posting Stats On KickUser*\n'
..'`>`/Username Report : *Set Username Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Username Ok : *Allow Username Posting*\n'
..'`>`/Hashtag Del : *Set Hashtag Posting Stats On Clean*\n'
..'`>`/Hashtag Kick : *Set Hashtag Posting Stats On KickUser*\n'
..'`>`/Hashtag Report : *Set Hashtag Posting Stats On ReportSpam And Clean AllMessages*\n'
..'`>`/Hashtag Ok : *Allow Hashtag Posting*\n'
..'`>`/Flood Kick : *DisAllow Flooding*\n'
..'`>`/Flood Ok : *Allow Flooding*\n'
..'`>`/Spam Kick : *Kick LogMessages sender*\n'
..'`>`/Spam Ok : *Allow LogMessages*\n'
..'`>`/Spam del : *Delete LogMessages*\n'
..'`>`/Lock|/Unlock Edit : *Lock/Unlock Editing message*\n'
..'`>`/Lock|/Unlock Pin : *Lock/Unlock Pining messages by Moderators*\n'
..'`>`/Lock|/Unlock Bots : *Lock/Unlock Adding Api Bots*\n'
..'`>`/Lock|/Unlock Reply : *Lock/Unlock Reply On Messages*\n'
..'`>`/Lock|/Unlock English : *Lock/Unlock Englsih Words*\n'
..'`>`/Lock|/Unlock Arabic/Persion : *Lock/Unlock Arabic/Persian Words*\n'
..'`>`/Lock|/Unlock Tgservice : *Lock/Unlock TelegramService Messages*\n'
..'`>`/Mute|/UnMute Photo : *Mute|UnMute ImageSending*\n'
..'`>`/Mute|/UnMute Video : *Mute|UnMute VideoSending*\n'
..'`>`/Mute|/UnMute Audio : *Mute|UnMute MusicsSending*\n'
..'`>`/Mute|/UnMute Voice : *Mute|UnMute VoiceSending*\n'
..'`>`/Mute|/UnMute File : *Mute|UnMute Files|Document*\n'
..'`>`/Mute|/UnMute Sticker : *Mute|UnMute Stickers*\n'
..'`>`/Mute|/UnMute Contact : *Mute|UnMute Contact Sharing*\n'
..'`>`/Mute|/UnMute gif : *Mute|UnMute Gifs|Animations*\n'
..'`>`/Mute|/UnMute Location : *Mute|UnMute Location*\n'
..'`>`/Mute|/UnMute Game : *Mute|UnMute Game*\n'
..'`>`/Mute|/UnMute Inlines : *Mute|UnMute Inline*\n'
..'`>`/Clean Mods : *Clean Group Moderators*\n'
..'`>`/Clean Exadmins : *Clean Group Exadmins*\n'
..'`>`/Clean admins : *Clean admins*\n'
..'`>`/Clean Muted : *Clean Group MutedUsers*\n'
..'`>`/Clean Filterd : *Clean Group FilterdWords*\n'
..'`>`/Clean Rules : *Clean Group Set GroupRules To Defult*\n'
..'`>`/Clean wlc : *Clean Group Set GroupWelcomeMsg To Defult*\n'
..'`>`/Clean msg [2-100] : *Clean Group History*\n'
..'`>`/Clean all : *Clean All Messages In Group*\n'
..'`>`/List Mods : *Shows Group ModeratorsList*\n'
..'`>`/List Exadmins : *Shows Group ExtraAdmins*\n'
..'`>`/List Muted : *Shows Group MutedUsers*\n'
..'`>`/List Filterd : *Shows Group FilterdWords*\n'
..'`>`/SetRules [_Rules_] : *SetGroup Rules*\n'
..'`>`/SetLink [_Link_] : *SetGroup Link*\n'
..'`>`/SetWlc [_WelcomeTEXT_] : *SetGroup Welcome Message*\n'
..'`>`/SetName [_GroupName_] : *SetGroup Name*\n'
..'`>`/Setlang [_LangCode_] : *SetGroup GroupLanguage*\n'
..'`>`/SetFlood [_3-30_] : *SetGroup MaxFlood*\n'
..'`>`/SetFloodTime [_1-10_] : *SetGroup MaxFlood Time*\n'
..'`>`/SetCharr [_1-10_] : *SetGroup MaxMessageCharachters*\n'
..'`>`/Filter + [_Word_] : *Add Word To FilterList*\n'
..'`>`/Filter - [_Word_] : *Rem Word From FilterList*\n'
..'`>`/Sudo + [_Reply|@Username|UserID_] : *Promote User To Sudo*\n'
..'`>`/Sudo - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Admin + [_Reply|@Username|UserID_] : *Promote User To GAdmin*\n'
..'`>`/Admin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`/Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mod + [_Reply|@Username|UserID_] : *Promote User To Moderator*\n'
..'`>`/Mod - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`/Mute + [_Reply|@Username|UserID_] : *Mute User*\n'
..'`>`/Mute - [_Reply|@Username|UserID_] : *Unmute User*\n'
..'`>`/Kick [_Reply|@Username|UserID_] : *Kick User From Chat*\n'
..'`>`/Invite [_Reply|@Username|UserID_] : *Invite User To Chat*\n'
..'`>`/Link : *Shows Group Link(If Saved)*\n'
..'`>`/Settings : *Shows Group Settings*\n'
..'`>`/Rules : *Shows Group Rules*\n'
..'`>`/Nerkh : *Shows Group Fee*\n'
..'`>`/reload\n'
..'`>`/terminal [CMD]\n'
..'`>`/download [FilePath]\n'
..'`>`/uptime\n'
..'`>`/bc\n'
..'`>`/fbc [msgID|Reply]\n'
..'`>`/lua [String]\n'
..'`>`/update [FA|En]\n'
..'-- @SPRCPU\\_Company --',
Admin = '* F80 Admins Help*\n'
..'`>`/add : *اضافه کردن گروه*\n'
..'`>`/rem : *حذف گروه*\n'
..'`>`/leave : *ترک گروه*\n'
..'`>`#ایدی [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`#لینک حذف : *حذف لینک ها*\n'
..'`>`#لینک اخراج : *حذف لینک ها + اخراج کاربر*\n'
..'`>`#لینک ریپورت : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`#لینک ازاد : *ازاد کردن لینک*\n'
..'`>`#ایدی حذف : *حذف یوزرنیم*\n'
..'`>`#ایدی اخراج : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`#ایدی ریپورت : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`#ایدی ازاد : *ازاد کردن یوزرنیم*\n'
..'`>`#هستگ حذف : *حذف هشتگ*\n'
..'`>`#هشتن اخراح : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`#هستگ ریپورت : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`#هشتگ ازاد : *ازاد کردن هشتگ*\n'
..'`>`#پیام سریع اخراج : *ممنوع کردن پیام سریع*\n'
..'`>`#پیام سریع ازاد : *ازاد کردن پیام سریع*\n'
..'`>`#پیلام طولانی اخراج : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`#پیام طولانی ازاد : *ازاد کردن پیام طولانی*\n'
..'`>`#پیام طولانی حذف : *حذف پیام های طولانی*\n'
..'`>`#قفل|#ازاد ویرایش : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`#قفل|#ازاد سنجاق : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`#قفل|#ازاد ربات : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`#قفل|#ازاد جواب : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`#قفل|#ازاد لاتین : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`#قفل|#ازاد پارسی|عربی : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`#قفل|#ازاد ورود و خروج : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`#سکوت|#حذف سکوت عکس : *فقل|ازاد کردن عکس*\n'
..'`>`#سکوت|#حذف سکوت فیلم : *فقل|ازاد کردن فیلم*\n'
..'`>`#سکوت|#حذف سکوت اهنگ : *فقل|ازاد کردن آهنگ*\n'
..'`>`#سکوت|#حذف سکوت صدا : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`#سکوت|#حذف سکوت فیال : *فقل|ازاد کردن فایل*\n'
..'`>`#سکوت|#حذف سکوت استیکر : *فقل|ازاد کردن استیکر*\n'
..'`>`#سکوت|#حذف سکوت شماره : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`#سکوت|#حذف سکوت انیمیشن : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`#سکوت|#حذف سکوت مکان : *فقل|ازاد کردن مکان*\n'
..'`>`#سکوت|#حذف سکوت بازی : *فقل|ازاد کردن بازی*\n'
..'`>`#سکوت|#حذف سکوت درون خطی : *فقل|ازاد کردن درون خطی*\n'
..'`>`#حذف مدیران : *حذف تمامی مدیران*\n'
..'`>`#حذف صاحب ها : *حذف تمامی مدیران اصلی*\n'
..'`>`#حذف سکوت : *حذف لیست سکوت*\n'
..'`>`#حذف فیلتر  : *حذف لیست فیلتر*\n'
..'`>`#حذف قوانین : *حذف قوانین*\n'
..'`>`#حذف خوشامد گویی : *حذف پیام خوس امد گویی*\n'
..'`>`#حذف پیام ها [2-100] : *حذف پیام های گروه*\n'
..'`>`#حذف همه پیام ها : *حذف همه پیام ها*\n'
..'`>`#لیست مدیران : *نمایش لیست ادمین ها*\n'
..'`>`#لیست صاحب ها : *نمایش لیست ادمین های اصلی*\n'
..'`>`#لیست سکوت : *نمایش لیست سکوت*\n'
..'`>`#لیست فیلتر : *نمایش لیست فیلتر*\n'
..'`>`#تنظیم قوانین [قوانین] : *تنظیم قوانین*\n'
..'`>`#تنظیم لینک [لینک] : *تنظیم لینک*\n'
..'`>`#تنظیم خوشامد گویی [متن] : *تنظیم پیام خوشامد گویی*\n'
..'`>`#تنظیم نام [اسم] : *تنظیم نام*\n'
..'`>`#تنظیم زبان [زبان] : *تنظیم زبان*\n'
..'`>`#تنظیم پیام سزیع [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`#تنظیم زمان پیام سریع [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`#تنظیم کاراکتر های ویام [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`#فیلتر + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`#فیلتر - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`#Exadmin + [_Reply|@Username|UserID_] : *Promote User To ExtraAdmin*\n'
..'`>`#Exadmin - [_Reply|@Username|UserID_] : *Demote User To Member*\n'
..'`>`#ادمین + [_Reply|@Username|UserID_] : *ارتقاع به مدیر*\n'
..'`>`#ادمین - [_Reply|@Username|UserID_] : *عزل به کاربر*\n'
..'`>`#سکوت + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`#سکوت - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`#اخراج [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`#دعوت [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`#لینک : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`#تنظیمات : *تنظیمات گروه*\n'
..'`>`#قوانین : *قوانین*\n'
..'`>`#نرخ : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
ExAdmin = '* F80 Extra Admins Help*\n'
..'`>`#ایدی [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`#لینک حذف : *حذف لینک ها*\n'
..'`>`#لینک اخراج : *حذف لینک ها + اخراج کاربر*\n'
..'`>`#لینک ریپورت : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`#لینک ازاد : *ازاد کردن لینک*\n'
..'`>`#ایدی حذف : *حذف یوزرنیم*\n'
..'`>`#ایدی اخراج : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`#ایدی ریپورت : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`#ایدی ازاد : *ازاد کردن یوزرنیم*\n'
..'`>`#هستگ حذف : *حذف هشتگ*\n'
..'`>`#هشتن اخراح : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`#هستگ ریپورت : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`#هشتگ ازاد : *ازاد کردن هشتگ*\n'
..'`>`#پیام سریع اخراج : *ممنوع کردن پیام سریع*\n'
..'`>`#پیام سریع ازاد : *ازاد کردن پیام سریع*\n'
..'`>`#پیلام طولانی اخراج : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`#پیام طولانی ازاد : *ازاد کردن پیام طولانی*\n'
..'`>`#پیام طولانی حذف : *حذف پیام های طولانی*\n'
..'`>`#قفل|#ازاد ویرایش : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`#قفل|#ازاد سنجاق : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`#قفل|#ازاد ربات : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`#قفل|#ازاد جواب : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`#قفل|#ازاد لاتین : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`#قفل|#ازاد پارسی|عربی : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`#قفل|#ازاد ورود و خروج : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`#سکوت|#حذف سکوت عکس : *فقل|ازاد کردن عکس*\n'
..'`>`#سکوت|#حذف سکوت فیلم : *فقل|ازاد کردن فیلم*\n'
..'`>`#سکوت|#حذف سکوت اهنگ : *فقل|ازاد کردن آهنگ*\n'
..'`>`#سکوت|#حذف سکوت صدا : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`#سکوت|#حذف سکوت فیال : *فقل|ازاد کردن فایل*\n'
..'`>`#سکوت|#حذف سکوت استیکر : *فقل|ازاد کردن استیکر*\n'
..'`>`#سکوت|#حذف سکوت شماره : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`#سکوت|#حذف سکوت انیمیشن : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`#سکوت|#حذف سکوت مکان : *فقل|ازاد کردن مکان*\n'
..'`>`#سکوت|#حذف سکوت بازی : *فقل|ازاد کردن بازی*\n'
..'`>`#سکوت|#حذف سکوت درون خطی : *فقل|ازاد کردن درون خطی*\n'
..'`>`#حذف مدیران : *حذف تمامی مدیران*\n'
..'`>`#حذف صاحب ها : *حذف تمامی مدیران اصلی*\n'
..'`>`#حذف سکوت : *حذف لیست سکوت*\n'
..'`>`#حذف فیلتر  : *حذف لیست فیلتر*\n'
..'`>`#حذف قوانین : *حذف قوانین*\n'
..'`>`#حذف خوشامد گویی : *حذف پیام خوس امد گویی*\n'
..'`>`#حذف پیام ها [2-100] : *حذف پیام های گروه*\n'
..'`>`#حذف همه پیام ها : *حذف همه پیام ها*\n'
..'`>`#لیست مدیران : *نمایش لیست ادمین ها*\n'
..'`>`#لیست سکوت : *نمایش لیست سکوت*\n'
..'`>`#لیست فیلتر : *نمایش لیست فیلتر*\n'
..'`>`#تنظیم قوانین [قوانین] : *تنظیم قوانین*\n'
..'`>`#تنظیم لینک [لینک] : *تنظیم لینک*\n'
..'`>`#تنظیم خوشامد گویی [متن] : *تنظیم پیام خوشامد گویی*\n'
..'`>`#تنظیم نام [اسم] : *تنظیم نام*\n'
..'`>`#تنظیم زبان [زبان] : *تنظیم زبان*\n'
..'`>`#تنظیم پیام سزیع [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`#تنظیم زمان پیام سریع [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`#تنظیم کاراکتر های ویام [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`#فیلتر + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`#فیلتر - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`#ادمین + [_Reply|@Username|UserID_] : *ارتقاع به مدیر*\n'
..'`>`#ادمین - [_Reply|@Username|UserID_] : *عزل به کاربر*\n'
..'`>`#سکوت + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`#سکوت - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`#اخراج [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`#دعوت [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`#لینک : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`#تنظیمات : *تنظیمات گروه*\n'
..'`>`#قوانین : *قوانین*\n'
..'`>`#نرخ : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
Mod = '* F80 GroupModerators Help*\n'
..'`>`#ایدی [ریپلی|یوزرنیم|یوزرایدی]: *دریافت ایدی فرد مورد نظر*\n'
..'`>`#لینک حذف : *حذف لینک ها*\n'
..'`>`#لینک اخراج : *حذف لینک ها + اخراج کاربر*\n'
..'`>`#لینک ریپورت : *حذف لینک کاربر و تمتمی پیام های کاربر*\n'
..'`>`#لینک ازاد : *ازاد کردن لینک*\n'
..'`>`#ایدی حذف : *حذف یوزرنیم*\n'
..'`>`#ایدی اخراج : *حذف پیام های دارای یوزرنیم و اخراج فرد*\n'
..'`>`#ایدی ریپورت : *حذف یوزرنیم ها اخراج کاربر و حذف تمامی پیام های کاربر*\n'
..'`>`#ایدی ازاد : *ازاد کردن یوزرنیم*\n'
..'`>`#هستگ حذف : *حذف هشتگ*\n'
..'`>`#هشتن اخراح : *حذف هشتگ ها و اخراج کاریر*\n'
..'`>`#هستگ ریپورت : *حذف هشتگ اخراج فرد و حذف تمتمی پیام های فرد*\n'
..'`>`#هشتگ ازاد : *ازاد کردن هشتگ*\n'
..'`>`#پیام سریع اخراج : *ممنوع کردن پیام سریع*\n'
..'`>`#پیام سریع ازاد : *ازاد کردن پیام سریع*\n'
..'`>`#پیلام طولانی اخراج : *اخراج فرد در صورت ارسال پیام طولانی*\n'
..'`>`#پیام طولانی ازاد : *ازاد کردن پیام طولانی*\n'
..'`>`#پیام طولانی حذف : *حذف پیام های طولانی*\n'
..'`>`#قفل|#ازاد ویرایش : *قفل|ازاد کردن ویرایش Allowیام*\n'
..'`>`#قفل|#ازاد سنجاق : *قفل|ازاد کردن سنجاق کردن پیام*\n'
..'`>`#قفل|#ازاد ربات : *قفل|ازاد کردن اضافه کردن بیات های API*\n'
..'`>`#قفل|#ازاد جواب : *قفل|ازاد کرده جواب دادن به پیام*\n'
..'`>`#قفل|#ازاد لاتین : *قفل|ازاد کردن کلمات لاتین*\n'
..'`>`#قفل|#ازاد پارسی|عربی : *قفل ازاد کردن کلمات عربی|فارسی*\n'
..'`>`#قفل|#ازاد ورود و خروج : *قفل|ازاد کردن پیام وردد خروج*\n'
..'`>`#سکوت|#حذف سکوت عکس : *فقل|ازاد کردن عکس*\n'
..'`>`#سکوت|#حذف سکوت فیلم : *فقل|ازاد کردن فیلم*\n'
..'`>`#سکوت|#حذف سکوت اهنگ : *فقل|ازاد کردن آهنگ*\n'
..'`>`#سکوت|#حذف سکوت صدا : *فقل|ازاد کردن پیام صوتی*\n'
..'`>`#سکوت|#حذف سکوت فیال : *فقل|ازاد کردن فایل*\n'
..'`>`#سکوت|#حذف سکوت استیکر : *فقل|ازاد کردن استیکر*\n'
..'`>`#سکوت|#حذف سکوت شماره : *فقل|ازاد کردن ارسال شماره*\n'
..'`>`#سکوت|#حذف سکوت انیمیشن : *فقل|ازاد کردن گیف|انیمیشن*\n'
..'`>`#سکوت|#حذف سکوت مکان : *فقل|ازاد کردن مکان*\n'
..'`>`#سکوت|#حذف سکوت بازی : *فقل|ازاد کردن بازی*\n'
..'`>`#سکوت|#حذف سکوت درون خطی : *فقل|ازاد کردن درون خطی*\n'
..'`>`#حذف سکوت : *حذف لیست سکوت*\n'
..'`>`#حذف فیلتر  : *حذف لیست فیلتر*\n'
..'`>`#حذف قوانین : *حذف قوانین*\n'
..'`>`#حذف خوشامد گویی : *حذف پیام خوس امد گویی*\n'
..'`>`#حذف پیام ها [2-100] : *حذف پیام های گروه*\n'
..'`>`#حذف همه پیام ها : *حذف همه پیام ها*\n'
..'`>`#لیست سکوت : *نمایش لیست سکوت*\n'
..'`>`#لیست فیلتر : *نمایش لیست فیلتر*\n'
..'`>`#تنظیم قوانین [قوانین] : *تنظیم قوانین*\n'
..'`>`#تنظیم لینک [لینک] : *تنظیم لینک*\n'
..'`>`#تنظیم خوشامد گویی [متن] : *تنظیم پیام خوشامد گویی*\n'
..'`>`#تنظیم نام [اسم] : *تنظیم نام*\n'
..'`>`#تنظیم زبان [زبان] : *تنظیم زبان*\n'
..'`>`#تنظیم پیام سزیع [_3-30_] : *تنظیم محدوده پیام سریع*\n'
..'`>`#تنظیم زمان پیام سریع [_1-10_] : *تنظیمه مهدوده زمانی ویام سریع*\n'
..'`>`#تنظیم کاراکتر های ویام [_1-10_] : *تنظیم تداد کاراکتر های پیام*\n'
..'`>`#فیلتر + [_Word_] : *افزودن کلمه به لیست فیلتر*\n'
..'`>`#فیلتر - [_Word_] : *حذف کلمه از لیست فیلتر*\n'
..'`>`#ادمین + [_Reply|@Username|UserID_] : *ارتقاع به مدیر*\n'
..'`>`#ادمین - [_Reply|@Username|UserID_] : *عزل به کاربر*\n'
..'`>`#سکوت + [_Reply|@Username|UserID_] : *سکوت*\n'
..'`>`#سکوت - [_Reply|@Username|UserID_] : *خذف سکوت*\n'
..'`>`#اخراج [_Reply|@Username|UserID_] : *اخراح کاربر*\n'
..'`>`#دعوت [_Reply|@Username|UserID_] : *دعوت کاربر*\n'
..'`>`#لینک : *نمایش نیلک گروه(اگه موجود باشه)*\n'
..'`>`#تنظیمات : *تنظیمات گروه*\n'
..'`>`#قوانین : *قوانین*\n'
..'`>`#نرخ : *نمایش قیمت گروه*\n'
..'-- @SPRCPU\\_Company --',
Member = '`>`#قوانین : *نمایش قوانین*\n`>`#نرخ : *نمایش قوانین گروه*\n`>`@SPRCPU\\_Company'
 }
		--
		--VIP_GROUPS
		function is_VIP_GP(msg)
			local var = false
			if redis:sismember('VIP', msg.chat_id_) then
				var = true
			end
			return var
		end
	--lang
function format_http_params(params, is_get)
  local str = ''
  -- If is get add ? to the beginning
  if is_get then str = '?' end
  local first = true -- Frist param
  for k,v in pairs (params) do
    if v then -- nil value
      if first then
        first = false
        str = str..k.. "="..v
      else
        str = str.."&"..k.. "="..v
      end
    end
  end
  return str
end

	function uplang(LANg)
	local function tr(target_lang, text)
  local path = "http://translate.google.com/translate_a/single"
  -- URL query parameters
  local params = {
    client = "gtx",
    ie = "UTF-8",
    oe = "UTF-8",
    hl = "en",
    dt = "t",
    tl = target_lang or "en",
    sl = "auto",
    q = URL.escape(text:gsub('\n',' '))
  }

  local query = format_http_params(params, true)
  local url = path..query

  local res, code = https.request(url)
  if code > 200 then
  return 
  end
  local trans = res:gmatch("%[%[%[\"(.*)\"")():gsub("\"(.*)", "")
  return trans
end
		if LANg == 'en' then
			LANG = 'en'
				set_text(LANG, 'chat_id', 'ChatID')
				set_text(LANG, 'user_id', 'UserID')
				set_text(LANG, 'username', 'UserName')
				set_text(LANG, 'name', 'Name')
				set_text(LANG, 'promote:reply:err:rank', 'I Can\'t Promote User User Rank Is Higher...')
				set_text(LANG, 'promote:reply:err:BOT', 'I Can\'t Promote MySelf 😐...')
				set_text(LANG, 'promote:reply:err:is_mod', 'Can\'t Promote That User User is Already A Moderator...')
				set_text(LANG, 'promote:reply:done:moded', 'Promoted Succses\nUser Is Now A Moderator')
				set_text(LANG, 'demote:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'demote:reply:err:BOT', 'I Can\'t Demote MySelf 😐...')
				set_text(LANG, 'demote:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'demote:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'promote_ex:reply:err:rank', 'I Can\'t Promote User User Rank Is Higher...')
				set_text(LANG, 'promote_ex:reply:err:BOT', 'I Can\'t Promote MySelf 😐...')
				set_text(LANG, 'promote_ex:reply:err:is_mod', 'Can\'t Promote That User User is Already A ExtraAdmin...')
				set_text(LANG, 'promote_ex:reply:done:moded', 'Promoted Succses\nUser Is Now A ExtraAdmin')
				set_text(LANG, 'demote_ex:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'demote_ex:reply:err:BOT', 'I Can\'t Demote MySelf 😐...')
				set_text(LANG, 'demote_ex:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'demote_ex:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'promote_G:reply:err:rank', 'I Can\'t Promote User User Rank Is Higher...')
				set_text(LANG, 'promote_G:reply:err:BOT', 'I Can\'t Promote MySelf 😐...')
				set_text(LANG, 'promote_G:reply:err:is_mod', 'Can\'t Promote That User User is Already A GloballyAdmin...')
				set_text(LANG, 'promote_G:reply:done:moded', 'Promoted Succses\nUser Is Now A GloballyAdmin')
				set_text(LANG, 'demote_G:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'demote_G:reply:err:BOT', 'I Can\'t Demote MySelf 😐...')
				set_text(LANG, 'demote_G:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'demote_G:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'sudo:reply:err:rank', 'I Can\'t Promote User User Rank Is Higher...')
				set_text(LANG, 'sudo:reply:err:BOT', 'I Can\'t Promote MySelf 😐...')
				set_text(LANG, 'sudo:reply:err:is_mod', 'Can\'t Promote That User User is Already A Sudoer...')
				set_text(LANG, 'sudo:reply:done:moded', 'Promoted Succses\nUser Is Now A Sudoer')
				set_text(LANG, 'desudo:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'desudo:reply:err:BOT', 'I Can\'t Demote MySelf 😐...')
				set_text(LANG, 'desudo:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'desudo:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'kick:reply:err:rank', 'I Can\'t kick User User Rank Is Higher...')
				set_text(LANG, 'kick:reply:err:BOT', 'I Can\'t kick MySelf 😐...')
				set_text(LANG, 'kick:reply:done:kicked', 'Kicked Succses...')
				set_text(LANG, 'invite:reply:done:invited', 'Invited Succses...')
				set_text(LANG, 'mute:reply:err:rank', 'I Can\'t Mute User User Rank Is Higher...')
				set_text(LANG, 'mute:reply:err:BOT', 'I Can\'t Mute MySelf 😐...')
				set_text(LANG, 'mute:reply:err:is_mod', 'Can\'t Mute That User User is Already A MuteUser...')
				set_text(LANG, 'mute:reply:done:muted', 'Muted Succses\nUser Can\'t Send Messages Now.')
				set_text(LANG, 'unmute:reply:err:rank', 'I Can\'t Unmute User User Rank Is Higher...')
				set_text(LANG, 'unmute:reply:err:BOT', 'I Can\'t Unmute MySelf 😐...')
				set_text(LANG, 'unmute:reply:err:is_mod', 'Can\'t Unmute That User User is Already A Member...')
				set_text(LANG, 'unmute:reply:done:unmuted', 'UnMuted Succses\nUser Can Send Messages Now.')
				set_text(LANG, 'list:mods', 'Group Moderators List :\n')
				set_text(LANG, 'list:exadmins', 'Group ExtraAdmins List :\n')
				set_text(LANG, 'list:muted', 'Group MutedUsers List :\n')
				set_text(LANG, 'list:sudos', 'F80 Sudoers List :\n')
				set_text(LANG, 'list:admins', 'F80 GloballyAdmins List :\n')
				set_text(LANG, 'list:bots', 'Group API Bots List :\n')
				set_text(LANG, 'list:kicked', 'Group KickedUsers List :\n')
				set_text(LANG, 'list:filterd', 'Group FilterdWords List :\n')
				set_text(LANG, 'clean:mods', '*Moderators Cleand.*\n_Last Moderators_.:\n')
				set_text(LANG, 'clean:exadmins', '*ExtraAdmins Cleand.*\n_Last ExtraAdmins_.:\n')
				set_text(LANG, 'clean:muted', '*MutedUsers Cleand.*\n_Last MutedUsers_.:\n')
				set_text(LANG, 'clean:filterd', '*FilterdWords Cleand.*\n_Last FilterdWords_.:\n')
				set_text(LANG, 'clean:msg', '*Messages Cleaned*\n')
				set_text(LANG, 'clean:link', '*Group Link Cleaned.*\n')
				set_text(LANG, 'clean:wlc', '*Group Welcome Message Cleaned.*\n')
				set_text(LANG, 'clean:all', '*All Of Messages That I Have Accsess Deleted.*\n')
				set_text(LANG, 'clean:bots', '*Group API Bots Cleaned.*\n')
				set_text(LANG, 'link:kick', '`>` *Link* _Posting Stats Setted On_ `:` *KICK*\n`>` *Link* _Senders Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'link:del', '`>` *Link* _Posting Stats Setted On_ `:` *Clean*\n`>` *Links* _Will Clean In Chat_')
		   		set_text(LANG, 'link:warn', '`>` *Link* _Posting Stats Setted On_ `:` *WARN*\n`>` *Link* _Senders Will_ *Warned* _First next Time they Will _*Kick*_ From Chat_')
		   		set_text(LANG, 'link:ok', '`>` *Link* _Posting Unlocked_')
		   		set_text(LANG, 'link:report', '`>` *Link* _Posting Stats Setted On_ `:` *Report*\n`>` *Link* _Senders Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
		   		set_text(LANG, 'username:kick', '`>` *UserName[@]* _Posting Stats Setted On_ `:` *KICK*\n`>` *UserName[@]* _Senders Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'username:del', '`>` *UserName[@]* _Posting Stats Setted On_ `:` *Clean*\n`>` *UserName[@]* _Will Clean In Chat_')
		   		set_text(LANG, 'username:warn', '`>` *UserName[@]* _Posting Stats Setted On_ `:` *WARN*\n`>` *UserName[@]* _Senders Will_ *Warned* _First next Time they Will _*Kick*_ From Chat_')
		   		set_text(LANG, 'username:ok', '`>` *UserName[@]* _Posting Unlocked_')
		   		set_text(LANG, 'username:report', '`>` *UserName[@]* _Posting Stats Setted On_ `:` *Report*\n`>` *UserName[@]* _Senders Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
		   		set_text(LANG, 'hashtag:kick', '`>` *HashTag[#]* _Posting Stats Setted On_ `:` *KICK*\n`>` *HashTag[#]* _Senders Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'hashtag:del', '`>` *HashTag[#]* _Posting Stats Setted On_ `:` *Clean*\n`>` *HashTag[#]* _Will Clean In Chat_')
		   		set_text(LANG, 'hashtag:warn', '`>` *HashTag[#]* _Posting Stats Setted On_ `:` *WARN*\n`>` *HashTag[#]* _Senders Will_ *Warned* _First next Time they Will _*Kick*_ From Chat_')
		   		set_text(LANG, 'hashtag:ok', '`>` *HashTag[#]* _Posting Unlocked_')
		   		set_text(LANG, 'hashtag:report', '`>` *HashTag[#]* _Posting Stats Setted On_ `:` *Report*\n`>` *HashTag[#]* _Senders Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
		   		set_text(LANG, 'forward:kick', '`>` *Forward* _Posting Stats Setted On_ `:` *KICK*\n`>` *Forward* _Senders Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'forward:del', '`>` *Forward* _Posting Stats Setted On_ `:` *Clean*\n`>` *Forward* _Will Clean In Chat_')
		   		set_text(LANG, 'forward:warn', '`>` *Forward* _Posting Stats Setted On_ `:` *WARN*\n`>` *Forward* _Senders Will_ *Warned* _First next Time they Will _*Kick*_ From Chat_')
		   		set_text(LANG, 'forward:ok', '`>` *Forward* _Posting Unlocked_')
		   		set_text(LANG, 'forward:report', '`>` *Forward* _Posting Stats Setted On_ `:` *Report*\n`>` *Forward* _Senders Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
		   		set_text(LANG, 'flood:kick', '`>` *Flood* _Stats Setted On_ `:` *Kick*\n`>` *Flooders* _Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'flood:ok', '`>` *Flooding* _Allowed_')
		   		set_text(LANG, 'flood:report', '`>` *Flood* _Stats Setted On_ `:` *Report*\n`>` *Flooders* _Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
				set_text(LANG, 'spam:kick', '`>` *Spam(LongMessage)* _Posting Stats Setted On_ `:` *KICK*\n`>` *Spam(LongMessage)* _Senders Will_ *Kick* _From Chat_')
		   		set_text(LANG, 'spam:del', '`>` *Spam(LongMessage)* _Posting Stats Setted On_ `:` *Clean*\n`>` *Spam(LongMessage)* _Will Clean In Chat_')
		   		set_text(LANG, 'spam:ok', '`>` *Spam(LongMessage)* _Posting Unlocked_')
		   		set_text(LANG, 'spam:report', '`>` *Spam(LongMessage)* _Posting Stats Setted On_ `:` *Report*\n`>` *Spam(LongMessage)* _Senders Will_ *Kick* _From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram_')
				set_text(LANG, 'lock:edit', '`>` *Editing* _Messages Locked_')
				set_text(LANG, 'lock:pin', '`>` *Pining* _Message Locked_')
				set_text(LANG, 'lock:reply', '`>` *Reply* _Message Locked_')
				set_text(LANG, 'lock:english', '`>` *English* _Chating Locked_')
				set_text(LANG, 'lock:arabic', '`>` *Persian/Arabic* _Chating Locked_')
				set_text(LANG, 'lock:bots', '`>` *API Bots* _Adding Locked_')
				set_text(LANG, 'lock:tgservice', '`>` *TelegramServiceMessages* _locked_')
				set_text(LANG, 'lock:chat', '`>` *Chating* _locked_')
				set_text(LANG, 'unlock:chat', '`>` *Chating* _Unlocked_')
		   		set_text(LANG, 'unlock:edit', '`>` *Editing* _Messages UnLocked_')
				set_text(LANG, 'unlock:pin', '`>` *Pining* _Message UnLocked_')
				set_text(LANG, 'unlock:reply', '`>` *Reply* _Message UnLocked_')
				set_text(LANG, 'unlock:english', '`>` *English* _Chating UnLocked_')
				set_text(LANG, 'unlock:arabic', '`>` *Persian/Arabic* _Chating UnLocked_')
				set_text(LANG, 'unlock:bots', '`>` *API Bots* _Adding UnLocked_')
				set_text(LANG, 'unlock:tgservice', '`>` *TelegramServiceMessages* _Unlocked_')
				set_text(LANG, 'mute:photo', '`>` *Photo* _Muted_')
				set_text(LANG, 'mute:video', '`>` *Video* _Muted_')
				set_text(LANG, 'mute:gif', '`>` *Gif/Animations* _Muted_')
				set_text(LANG, 'mute:game', '`>` *Inline Games* _Muted_')
				set_text(LANG, 'mute:inline', '`>` *Inline Keyboard* _Muted_')
				set_text(LANG, 'mute:audio', '`>` *Musics* _Muted_')
				set_text(LANG, 'mute:voice', '`>` *Voices* _Muted_')
				set_text(LANG, 'mute:contact', '`>` *Contact* _Muted_')
				set_text(LANG, 'mute:location', '`>` *Location* _Muted_')
				set_text(LANG, 'mute:sticker', '`>` *Sticker* _Muted_')
				set_text(LANG, 'mute:file', '`>` *File/Document* _Muted_')
				set_text(LANG, 'unmute:photo', '`>` *Photo* _UnMuted_')
				set_text(LANG, 'unmute:contact', '`>` *Contact* _UnMuted_')
				set_text(LANG, 'unmute:video', '`>` *Video* _UnMuted_')
				set_text(LANG, 'unmute:gif', '`>` *Gif/Animations* _UnMuted_')
				set_text(LANG, 'unmute:game', '`>` *Inline Games* _UnMuted_')
				set_text(LANG, 'unmute:inline', '`>` *Inline Keyboard* _UnMuted_')
				set_text(LANG, 'unmute:audio', '`>` *Musics* _UnMuted_')
				set_text(LANG, 'unmute:voice', '`>` *Voices* _UnMuted_')
				set_text(LANG, 'unmute:location', '`>` *Location* _UnMuted_')
				set_text(LANG, 'unmute:sticker', '`>` *Sticker* _UnMuted_')
				set_text(LANG, 'unmute:file', '`>` *File/Document* _UnMuted_')
				set_text(LANG, 'silentgroup', '`>` _Group Silented_')
				set_text(LANG, 'unsilentgroup', '`>` _Group UnSilented_')
				set_text(LANG, 'Edit', 'Edit')
				set_text(LANG, 'PIN', 'Pin')
				set_text(LANG, 'RPL', 'Reply')
				set_text(LANG, 'LOC', 'Location')
				set_text(LANG, 'VC', 'Voice')
				set_text(LANG, 'MIC', 'Musics')
				set_text(LANG, 'VID', 'Video')
				set_text(LANG, 'PHOTO', 'Photo')
				set_text(LANG, 'SGP', 'SilentGroup')
				set_text(LANG, 'SCHAR', 'SpamCharr')
				set_text(LANG, 'FT', 'Flood Time')
				set_text(LANG, 'FM', 'Flood Max')
				set_text(LANG, 'HASH', 'HashTag')
				set_text(LANG, 'USER', 'Username')
				set_text(LANG, 'LINKS', 'Links')
				set_text(LANG, 'FWD', 'Forward')
				set_text(LANG, 'SP', 'Spam')
				set_text(LANG, 'FLD', 'Flood')
				set_text(LANG, 'ILIN', 'Inline')
				set_text(LANG, 'GM', 'Game')
				set_text(LANG, 'CONT', 'Contact Sharing')
				set_text(LANG, 'AR', 'Persian/Arabic')
				set_text(LANG, 'EN', 'English')
				set_text(LANG, 'DOC', 'Document/File')
				set_text(LANG, 'STIC', 'Sticker')
				set_text(LANG, 'GIF', 'Gif/Animations')
				set_text(LANG, 'LNG', 'Group Language')
				set_text(LANG, 'BOTS', 'Bot Proction')
				set_text(LANG, 'EXP', 'Expire')
				set_text(LANG, 'CHAT', 'Chat/Text')
				set_text(LANG, 'stats', 'Stats')
				set_text(LANG, 'set:floodc', 'Flood Count Limited on:')
				set_text(LANG, 'set:floodtime', 'Flood Count Will Check Every :')
				set_text(LANG, 'set:charr', 'Max Charrachters that can use in messages Limited on :')
				set_text(LANG, 'filter_plus', ' Added To FilterdWords And will Clean.')
				set_text(LANG, 'filter_egul', ' Removed From FilterdWords.')
		elseif LANg == 'fa' then
				LANG = 'fa'
				set_text(LANG, 'chat_id', 'ایدی گروه')
				set_text(LANG, 'user_id', 'ایدی کاربر')
				set_text(LANG, 'username', 'یوزرنیم')
				set_text(LANG, 'name', 'نام')
				set_text(LANG, 'stats', 'وضعیت')
				set_text(LANG, 'promote:reply:err:rank', 'نمیتوانم کاربر را ارتقاع دهم اکنون در مقام بالا تری است.')
				set_text(LANG, 'promote:reply:err:BOT', 'من نمیتوانم خودم را ارتقاع دهم😐....')
				set_text(LANG, 'promote:reply:err:is_mod', 'کاربر از قبل یک مدیر است...')
				set_text(LANG, 'promote:reply:done:moded', 'کاربر ارتقاع یافت و اکنون یک مدیر است...')
				set_text(LANG, 'demote:reply:err:rank', 'مقام کاربر بالا تر است..')
				set_text(LANG, 'demote:reply:err:BOT', 'مسخره کردی؟😐')
				set_text(LANG, 'demote:reply:err:is_mod', 'کاربر مقامی ندارد :(')
				set_text(LANG, 'demote:reply:done:moded', 'عزل مقام شد')
				set_text(LANG, 'promote_ex:reply:err:rank', 'اکنون در مقام بالا تری است...')
				set_text(LANG, 'promote_ex:reply:err:BOT', 'داری اشتب میزنی داداچ😐')
				set_text(LANG, 'promote_ex:reply:err:is_mod', 'هم اکنون یک مدیر اصلی است...')
				set_text(LANG, 'promote_ex:reply:done:moded', 'ارقاع یافت و اکنون مدیر اصلی گروه است...')
				set_text(LANG, 'demote_ex:reply:err:rank', 'دارای مقام بالا تری است')
				set_text(LANG, 'demote_ex:reply:err:BOT', 'خودمو؟ 😐...')
				set_text(LANG, 'demote_ex:reply:err:is_mod', 'کاربر مقامی ندارد :(')
				set_text(LANG, 'demote_ex:reply:done:moded', 'عزل مقام شد')
				set_text(LANG, 'promote_G:reply:err:rank', 'مقام کاربر بالا تر است...')
				set_text(LANG, 'promote_G:reply:err:BOT', 'داداچ داری اشتب میزنی 😐...')
				set_text(LANG, 'promote_G:reply:err:is_mod', 'Can\'t Promote That User User is Already A GloballyAdmin...')
				set_text(LANG, 'promote_G:reply:done:moded', 'Promoted Succses\nUser Is Now A GloballyAdmin')
				set_text(LANG, 'demote_G:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'demote_G:reply:err:BOT', 'عاقا😐...')
				set_text(LANG, 'demote_G:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'demote_G:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'sudo:reply:err:rank', 'I Can\'t Promote User User Rank Is Higher...')
				set_text(LANG, 'sudo:reply:err:BOT', '😐...')
				set_text(LANG, 'sudo:reply:err:is_mod', 'Can\'t Promote That User User is Already A Sudoer...')
				set_text(LANG, 'sudo:reply:done:moded', 'Promoted Succses\nUser Is Now A Sudoer')
				set_text(LANG, 'desudo:reply:err:rank', 'I Can\'t Demote User User Rank Is Higher...')
				set_text(LANG, 'desudo:reply:err:BOT', 'امممممم‍😐...')
				set_text(LANG, 'desudo:reply:err:is_mod', 'Can\'t Demote That User User is Already A Member...')
				set_text(LANG, 'desudo:reply:done:moded', 'Demoted Succses\nUser Is Now A Member')
				set_text(LANG, 'kick:reply:err:rank', 'نمیشه کیکش کرد مقامش بالاست...')
				set_text(LANG, 'kick:reply:err:BOT', 'واقعا برم؟😐...')
				set_text(LANG, 'kick:reply:done:kicked', 'اخراج شد...')
				set_text(LANG, 'invite:reply:err:BOT', '😐...')
				set_text(LANG, 'invite:reply:done:invited', 'دعوت شد...')
				set_text(LANG, 'mute:reply:err:rank', 'مقامش بالاست...')
				set_text(LANG, 'mute:reply:err:BOT', 'به بابات بگو خفه شه😐...')
				set_text(LANG, 'mute:reply:err:is_mod', 'قبلا در لیست سکوت بود...')
				set_text(LANG, 'mute:reply:done:muted', 'کاربر در لیست سکوت قرار گرفت.')
				set_text(LANG, 'unmute:reply:err:BOT', '😐...')
				set_text(LANG, 'unmute:reply:err:is_mod', 'در لیست سکوت نبود...')
				set_text(LANG, 'unmute:reply:done:unmuted', 'از لیست سکوت خارج شد.')
				set_text(LANG, 'list:mods', 'لیست مدیران گروه :\n')
				set_text(LANG, 'list:exadmins', 'لیست میران اصلی گروه :\n')
				set_text(LANG, 'list:muted', 'لیست سکوت :\n')
				set_text(LANG, 'list:sudos', 'F80 Sudoers List :\n')
				set_text(LANG, 'list:admins', 'F80 GloballyAdmins List :\n')
				set_text(LANG, 'list:bots', 'ربات های API گروه :\n')
				set_text(LANG, 'list:kicked', 'کاربران کیک شده :\n')
				set_text(LANG, 'list:filterd', 'کلمات فیلتر شده :\n')
				set_text(LANG, 'clean:mods', '*مدیران عزل شدند.*\n_مدیران عزل شده_.:\n')
				set_text(LANG, 'clean:exadmins', '*مدیران اصلی عزل شدند.*\n_مدیران اصلی عزل شده_.:\n')
				set_text(LANG, 'clean:muted', '*لیست سکوت خالی شد.*\n_کاربرای خارج شده از لیست_.:\n')
				set_text(LANG, 'clean:filterd', '*همه کلمات ازاد شد.*\n_کلمات قفل شده قبل_.:\n')
				set_text(LANG, 'clean:msg', '*پیام حذف شد*\n')
				set_text(LANG, 'clean:link', '*کینک گروه حذف شد.*\n')
				set_text(LANG, 'clean:wlc', '*پیام خوشامد به /یشفرض برگشت.*\n')
				set_text(LANG, 'clean:all', '*تمام پیام هایی که دسترسی داشتم حذف شد.*\n')
				set_text(LANG, 'clean:bots', '*ربات های API کیک شدند.*\n')
				set_text(LANG, 'link:kick', '`>` \n`>` * ارسال لینک قفل شد. لینک ها حذف میشوند و فرستنده اخراج میشود*')
		   		set_text(LANG, 'link:del', '`>` * ارسال لینک قفل شد. لینک ها حذف میشوند * ')
		   		set_text(LANG, 'link:ok', '`>` *ارسال لینک آزاد شد*')
             set_text(LANG, 'username:kick', '`>`مجازات ارسال *یوزرنیم[@]* تغییر یافت به `:` *اخراج از گروه*\n`>`_ارسال کننده_ *یوزرنیم[@]* _از گروه اخراج خواهد شد_')
		   		set_text(LANG, 'username:del', '`>`مجازات ارسال *یوزرنیم[@]* تغییر یافت به `:` *پاک شدن پیام*\n`>`_پیام حاوی_ *یوزرنیم[@]* _در گروه پاک خواهد شد_')
		   		set_text(LANG, 'username:ok', '`>`_ارسال_ *یوزرنیم[@]* _در گروه مجاز شد_')
		   		set_text(LANG, 'username:report', '`>`مجازات ارسال *یوزرنیم[@]* تغییر یافت به `:` *گزارش کامل*\n`>`_ارسال کننده_ *یوزرنیم[@]* _از گروه اخراج و تمامی پیام های او نیز حذف خواهند شد و توسط تلگرام نیز ریپورت میشود_')
		   		set_text(LANG, 'hashtag:kick', '`>`مجازات ارسال *هشتگ[#]* تغییر یافت به `:` *اخراج از گروه*\n`>`_ارسال کننده_ *هشتگ[#]* _از گروه اخراج خواهد شد_')
		   		set_text(LANG, 'hashtag:del', '`>`مجازات ارسال *هشتگ[#]* تغییر یافت به `:` *پاک شدن پیام*\n`>`_پیام حاوی_ *هشتگ[#]* _در گروه پاک خواهد شد_')
		   		set_text(LANG, 'hashtag:ok', '`>`_ارسال_ *هشتگ[#]* _در گروه مجاز شد_')
		   		set_text(LANG, 'hashtag:report', '`>`مجازات ارسال *هشتگ[#]* تغییر یافت به `:` *گزارش کامل*\n`>`_ارسال کننده_ *هشتگ[#]* _از گروه اخراج و تمامی پیام های او نیز حذف خواهند شد و توسط تلگرام نیز ریپورت میشود_')
		   		set_text(LANG, 'forward:kick', '`>`مجازات *فوروارد کردن* تغییر یافت به `:` *اخراج از گروه*\n`>`*فوروارد کننده* _از گروه اخراج خواهد شد_')
		   		set_text(LANG, 'forward:del', '`>`مجازات *فوروارد کردن* تغییر یافت به `:` *پاک شدن پیام*\n`>`_پیام_ *فوروارد شده* _در گروه پاک خواهد شد_')
		   		set_text(LANG, 'forward:ok', '`>`_فوروارد کردن* _در گروه مجاز شد*')
		   		set_text(LANG, 'forward:report', '`>`مجازات *فوروارد کردن* تغییر یافت به `:` *گزارش کامل*\n`>`*فوروارد کننده* _از گروه اخراج و تمامی پیام های او نیز حذف خواهند شد و توسط تلگرام نیز ریپورت میشود_')
		   		set_text(LANG, 'flood:kick', '`>`مجازات ارسال *پیام پشت سر هم* تغییر یافت به `:` *اخراج از گروه*\n`>`_ارسال کننده_ *پیام پشت سر هم* _از گروه اخراج خواهد شد_')
		   		set_text(LANG, 'flood:ok', '`>`_ارسال_ *پیام پشت سر هم* _در گروه مجاز شد_')
		   		set_text(LANG, 'flood:report', '`>`مجازات ارسال *پیام پشت سر هم* تغییر یافت به `:` *گزارش کامل*\n`>`_ارسال کننده_ *پیام پشت سر هم* _از گروه اخراج و تمامی پیام های او نیز حذف خواهند شد و توسط تلگرام نیز ریپورت میشود_')
				set_text(LANG, 'spam:kick', '`>`مجازات ارسال *اسپم[پیام طولانی]* تغییر یافت به `:` *اخراج از گروه*\n`>`_ارسال کننده_ *اسپم[پیام طولانی]* _از گروه اخراج خواهد شد_')
		   		set_text(LANG, 'spam:del', '`>`مجازات ارسال *اسپم[پیام طولانی]* تغییر یافت به `:` *پاک شدن پیام*\n`>`_پیام حاوی_ *اسپم[پیام طولانی]* _در گروه پاک خواهد شد_')
		   		set_text(LANG, 'spam:ok', '`>`_ارسال_ *اسپم[پیام طولانی]* _در گروه مجاز شد_')
		   		set_text(LANG, 'spam:report', '`>`مجازات ارسال *اسپم[پیام طولانی]* تغییر یافت به `:` *گزارش کامل*\n`>`_ارسال کننده_ *اسپم* _از گروه اخراج و تمامی پیام های او نیز حذف خواهند شد و توسط تلگرام نیز ریپورت میشود_')
				set_text(LANG, 'lock:edit', '`>`_ویرایش کردن*_ پیام در گروه ممنوع شد*')
				set_text(LANG, 'lock:pin', '`>`_پین کردن* _در گروه ممنوع شد*')
				set_text(LANG, 'lock:reply', '`>`_رپلای کردن* _در گروه ممنوع شد*')
				set_text(LANG, 'lock:english', '`>`_گفت و گو به زبان_ *انگلیسی/لاتین* _در گروه ممنوع شد_')
				set_text(LANG, 'lock:arabic', '`>`_گفت و گو به زبان _*عربی/فارسی* _در گروه ممنوع شد_')
				set_text(LANG, 'lock:bots', '`>`_افزودن_ *بات* _در گروه ممنوع شد_')
				set_text(LANG, 'lock:tgservice', '`>`_نمایش _*پیام های کاربری تلگرام*_ غیر فعال شد_')
		   	set_text(LANG, 'unlock:edit', '`>`_ویرایش کردن*_ پیام در گروه مجاز شد*')
				set_text(LANG, 'unlock:pin', '`>`_پین کردن* _در گروه مجاز شد*')
				set_text(LANG, 'unlock:reply', '`>`_رپلای کردن* _در گروه مجاز شد*')
				set_text(LANG, 'unlock:english', '`>`_گفت و گو به زبان_ *انگلیسی/لاتین* _در گروه ممنوع شد_')
				set_text(LANG, 'unlock:arabic', '`>`_گفت و گو به زبان_ *عربی/فارسی*_ در گروه مجاز شد_')
				set_text(LANG, 'unlock:bots', '`>`_افزودن _*بات* _در گروه مجاز شد_')
				set_text(LANG, 'unlock:tgservice', '`>`_نمایش_ *پیام های کاربری تلگرام*_ فعال شد_')
				set_text(LANG, 'mute:photo', '`>`_ارسال_ *عکس* _در گروه ممنوع شد_')
				set_text(LANG, 'mute:video', '`>`_ارسال_ *فیلم* _در گروه ممنوع شد_')
				set_text(LANG, 'mute:gif', '`>`_ارسال_ *گیف*_ در گروه ممنوع شد_')
				set_text(LANG, 'mute:game', '`>`_ارسال_ *بازی اینلاین*_ در گروه ممنوع شد_')
				set_text(LANG, 'mute:inline', '`>`_ارسال _*پیام اینلاین* _در گروه ممنوع شد_')
				set_text(LANG, 'mute:audio', '`>`_ارسال_ *موسیقی* _در گروه ممنوع شد_')
				set_text(LANG, 'mute:voice', '`>`_ارسال _*صوت*_ در گروه ممنوع شد_')
				set_text(LANG, 'mute:contact', '`>`_اشتراک گذاری_ *مخاطب*_ در گروه ممنوع شد _')
				set_text(LANG, 'mute:location', '`>`_ارسال _*موقعیت مکانی*_ در گروه ممنوع شد_')
				set_text(LANG, 'mute:sticker', '`>`_ارسال_ *استیکر* _در گروه ممنوع شد_')
				set_text(LANG, 'mute:file', '`>`_ارسال_ *فایل* _در گروه ممنوع شد_')
				set_text(LANG, 'unmute:photo', '`>`_ارسال _*عکس*_ در گروه مجاز شد_')
				set_text(LANG, 'unmute:contact', '`>`_اشتراک گذاری_ *مخاطب* _در گروه مجاز شد_')
				set_text(LANG, 'unmute:video', '`>`_ارسال_ *فیلم* _در گروه مجاز شد_')
				set_text(LANG, 'unmute:gif', '`>`_ارسال_ *گیف*_ در گروه مجاز شد_')
				set_text(LANG, 'unmute:game', '`>`_ارسال_ *بازی اینلاین*_ در گروه مجاز شد_')
				set_text(LANG, 'unmute:inline', '`>`_ارسال_ *پیام اینلاین*_ در گروه مجاز شد_')
				set_text(LANG, 'unmute:audio', '`>`_ارسال_ *موسیقی* _در گروه مجاز شد_')
				set_text(LANG, 'unmute:voice', '`>`_ارسال_ *صوت*_ در گروه مجاز شد_')
				set_text(LANG, 'unmute:location', '`>`_ارسال_ *موقعیت مکانی* _در گروه مجاز شد_')
				set_text(LANG, 'unmute:sticker', '`>`_ارسال_ *استیکر* _در گروه مجاز شد_')
				set_text(LANG, 'unmute:file', '`>`_ارسال_ *فایل* در گروه مجاز شد_')
				set_text(LANG, 'silentgroup', '`>`_گروه بروی حالت_ *سکوت* _تنظیم شد_')
				set_text(LANG, 'unsilentgroup', '`>`_گروه از حالت_ *سکوت* _خارج شد_')
				set_text(LANG, 'Edit', 'ویرایش')
				set_text(LANG, 'PIN', 'سنجاق')
				set_text(LANG, 'RPL', 'جواب')
				set_text(LANG, 'LOC', 'مکان')
				set_text(LANG, 'VC', 'صدا')
				set_text(LANG, 'MIC', 'اهنگ')
				set_text(LANG, 'VID', 'فیلم')
				set_text(LANG, 'PHOTO', 'عکس')
				set_text(LANG, 'SGP', 'سکوت گروه')
				set_text(LANG, 'SCHAR', 'فیلتر کاراکتر')
				set_text(LANG, 'FT', 'زمان پیام سریع')
				set_text(LANG, 'FM', 'تعداد پیام سریع')
				set_text(LANG, 'HASH', 'هشتگ#')
				set_text(LANG, 'USER', '@یوزرنیم')
				set_text(LANG, 'LINKS', 'لینک ها')
				set_text(LANG, 'FWD', 'فوروارد')
				set_text(LANG, 'SP', 'پیام طولانی')
				set_text(LANG, 'FLD', 'پیام سریع')
				set_text(LANG, 'ILIN', 'درون خطی')
				set_text(LANG, 'GM', 'بازی')
				set_text(LANG, 'CONT', 'شماره تلفن')
				set_text(LANG, 'AR', 'فارسی/عربی')
				set_text(LANG, 'EN', 'انگلیسی')
				set_text(LANG, 'DOC', 'فایل')
				set_text(LANG, 'STIC', 'استیکر')
				set_text(LANG, 'GIF', 'گیف')
				set_text(LANG, 'LNG', 'ربان گروه')
				set_text(LANG, 'BOTS', 'ربات ها')
				set_text(LANG, 'EXP', 'تاریخ انقضا')
				set_text(LANG, 'set:floodc', 'پیام سریع محدود شد به:')
				set_text(LANG, 'set:floodtime', 'زمان چک کردن پیام سریع مخدود شد به:')
				set_text(LANG, 'set:charr', 'تعداد کاراکتر های یک  پیام محدود شد به:')
				set_text(LANG, 'filter_plus', ' با لیست فیلتر اضافه شد.')
				set_text(LANG, 'filter_egul', ' از لیست فیلتر خذف شد.')
				set_text(LANG, 'CHAT', 'چت متن')
				--Tnq To MrJacki For Translate:|
		else
			if tr(LANg, 'hello'):lower() ~= 'hello' then
			LANG = LANg
			lANG = LANg
			set_text(LANG, 'chatid', tr(lANG, 'group identify number'))
			set_text(LANG, 'userid', tr(lANG, 'user identify number'))
			set_text(LANG, 'username', tr(lANG, 'Username'))
			set_text(LANG, 'name', tr(lANG, 'Name'))
			set_text(LANG, 'promote:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'promote:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'promote:reply:err:ismod', tr(lANG, 'Can\'t Promote That User User is Already A Moderator...'))
			set_text(LANG, 'promote:reply:done:moded', tr(lANG, 'Promoted Succses\nUser Is Now A Moderator'))
			set_text(LANG, 'demote:reply:err:rank', tr(lANG, 'I Can\'t Demote User User Rank Is Higher...'))
			set_text(LANG, 'demote:reply:err:BOT', tr(lANG, 'I Can\'t Demote MySelf...'))
			set_text(LANG, 'demote:reply:err:ismod', tr(lANG, 'Can\'t Demote That User User is Already A Member...'))
			set_text(LANG, 'demote:reply:done:moded', tr(lANG, 'Demoted Succses\nUser Is Now A Member'))
			set_text(LANG, 'promoteex:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'promoteex:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'promoteex:reply:err:ismod', tr(lANG, 'Can\'t Promote That User User is Already A ExtraAdmin...'))
			set_text(LANG, 'promoteex:reply:done:moded', tr(lANG, 'Promoted Succses\nUser Is Now A ExtraAdmin'))
			set_text(LANG, 'demoteex:reply:err:rank', tr(lANG, 'I Can\'t Demote User User Rank Is Higher...'))
			set_text(LANG, 'demoteex:reply:err:BOT', tr(lANG, 'I Can\'t Demote MySelf...'))
			set_text(LANG, 'demoteex:reply:err:ismod', tr(lANG, 'Can\'t Demote That User User is Already A Member...'))
			set_text(LANG, 'demoteex:reply:done:moded', tr(lANG, 'Demoted Succses\nUser Is Now A Member'))
			set_text(LANG, 'promoteG:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'promoteG:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'promoteG:reply:err:ismod', tr(lANG, 'Can\'t Promote That User User is Already A GloballyAdmin...'))
			set_text(LANG, 'promoteG:reply:done:moded', tr(lANG, 'Promoted Succses\nUser Is Now A GloballyAdmin'))
			set_text(LANG, 'demoteG:reply:err:rank', tr(lANG, 'I Can\'t Demote User User Rank Is Higher...'))
			set_text(LANG, 'demoteG:reply:err:BOT', tr(lANG, 'I Can\'t Demote MySelf...'))
			set_text(LANG, 'demoteG:reply:err:ismod', tr(lANG, 'Can\'t Demote That User User is Already A Member...'))
			set_text(LANG, 'demoteG:reply:done:moded', tr(lANG, 'Demoted Succses\nUser Is Now A Member'))
			set_text(LANG, 'sudo:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'sudo:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'sudo:reply:err:ismod', tr(lANG, 'Can\'t Promote That User User is Already A Sudoer...'))
			set_text(LANG, 'sudo:reply:done:moded', tr(lANG, 'Promoted Succses\nUser Is Now A Sudoer'))
			set_text(LANG, 'desudo:reply:err:rank', tr(lANG, 'I Can\'t Demote User User Rank Is Higher...'))
			set_text(LANG, 'desudo:reply:err:BOT', tr(lANG, 'I Can\'t Demote MySelf...'))
			set_text(LANG, 'desudo:reply:err:ismod', tr(lANG, 'Can\'t Demote That User User is Already A Member...'))
			set_text(LANG, 'desudo:reply:done:moded', tr(lANG, 'Demoted Succses\nUser Is Now A Member'))
			set_text(LANG, 'kick:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'kick:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'kick:reply:done:kicked', tr(lANG, 'Kicked Succses...'))
			set_text(LANG, 'invite:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'invite:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'invite:reply:done:invited', tr(lANG, 'Invited Succses...'))
			set_text(LANG, 'mute:reply:err:rank', tr(lANG, 'I Can\'t Promote User User Rank Is Higher...'))
			set_text(LANG, 'mute:reply:err:BOT', tr(lANG, 'I Can\'t Promote MySelf...'))
			set_text(LANG, 'mute:reply:err:ismod', tr(lANG, 'Can\'t Promote That User User is Already A Sudoer...'))
			set_text(LANG, 'mute:reply:done:muted', tr(lANG, 'Muted Succses\nUser Can\'t Send Messages Now.'))
			set_text(LANG, 'unmute:reply:err:rank', tr(lANG, 'I Can\'t Demote User User Rank Is Higher...'))
			set_text(LANG, 'unmute:reply:err:BOT', tr(lANG, 'I Can\'t Demote MySelf...'))
			set_text(LANG, 'unmute:reply:err:ismod', tr(lANG, 'Can\'t Demote That User User is Already A Member...'))
			set_text(LANG, 'unmute:reply:done:unmuted', tr(lANG, 'UnMuted Succses\nUser Can Send Messages Now.'))
			set_text(LANG, 'list:mods', tr(lANG, 'Group Moderators List :\n'))
			set_text(LANG, 'list:exadmins', tr(lANG, 'Group ExtraAdmins List :\n'))
			set_text(LANG, 'list:muted', tr(lANG, 'Group MutedUsers List :\n'))
			set_text(LANG, 'list:sudos', tr(lANG, 'F80 Sudoers List :\n'))
			set_text(LANG, 'list:admins', tr(lANG, 'F80 GloballyAdmins List :\n'))
			set_text(LANG, 'list:bots', tr(lANG, 'Group API Bots List :\n'))
			set_text(LANG, 'list:kicked', tr(lANG, 'Group KickedUsers List :\n'))
			set_text(LANG, 'list:filterd', tr(lANG, 'Group FilterdWords List :\n'))
			set_text(LANG, 'clean:mods', tr(lANG, 'Moderators Cleand.\nLast Moderators.:\n'))
			set_text(LANG, 'clean:exadmins', tr(lANG, 'ExtraAdmins Cleand.\nLast ExtraAdmins.:\n'))
			set_text(LANG, 'clean:muted', tr(lANG, 'MutedUsers Cleand.\nLast MutedUsers.:\n'))
			set_text(LANG, 'clean:filterd', tr(lANG, 'FilterdWords Cleand.\nLast FilterdWords.:\n'))
			set_text(LANG, 'clean:msg', tr(lANG, 'Messages Cleaned\n'))
			set_text(LANG, 'clean:link', tr(lANG, 'Group Link Cleaned.\n'))
			set_text(LANG, 'clean:wlc', tr(lANG, 'Group Welcome Message Cleaned.\n'))
			set_text(LANG, 'clean:all', tr(lANG, 'All Of Messages That I Have Accsess Deleted.\n'))
			set_text(LANG, 'clean:bots', tr(lANG, 'Group API Bots Cleaned.\n'))
			set_text(LANG, 'link:kick', tr(lANG, ' Link Posting Stats Setted On : KICK\n Link Senders Will Kick From Chat'))
			set_text(LANG, 'link:del', tr(lANG, ' Link Posting Stats Setted On : Clean\n Links Will Clean In Chat'))
			set_text(LANG, 'link:warn', tr(lANG, ' Link Posting Stats Setted On : WARN\n Link Senders Will Warned First next Time they Will Kick From Chat'))
			set_text(LANG, 'link:ok', tr(lANG, ' Link Posting Unlocked'))
			set_text(LANG, 'link:report', tr(lANG, ' Link Posting Stats Setted On : Report\n Link Senders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'username:kick', tr(lANG,' UserName Posting Stats Setted On : KICK\n UserName Senders Will Kick From Chat'))
			set_text(LANG, 'username:del', tr(lANG,' UserName Posting Stats Setted On : Clean\n UserName Will Clean In Chat'))
			set_text(LANG, 'username:warn', tr(lANG,' UserName Posting Stats Setted On : WARN\n UserName Senders Will Warned First next Time they Will Kick From Chat'))
			set_text(LANG, 'username:ok', tr(lANG,' UserName Posting Unlocked'))
			set_text(LANG, 'username:report', tr(lANG,' UserName Posting Stats Setted On : Report\n UserName Senders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'hashtag:kick', tr(lANG,' HashTag Posting Stats Setted On : KICK\n HashTag Senders Will Kick From Chat'))
			set_text(LANG, 'hashtag:del', tr(lANG,' HashTag Posting Stats Setted On : Clean\n HashTag Will Clean In Chat'))
			set_text(LANG, 'hashtag:warn', tr(lANG,' HashTag Posting Stats Setted On : WARN\n HashTag Senders Will Warned First next Time they Will Kick From Chat'))
			set_text(LANG, 'hashtag:ok', tr(lANG,' HashTag Posting Unlocked'))
			set_text(LANG, 'hashtag:report', tr(lANG,' HashTag Posting Stats Setted On : Report\n HashTag Senders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'forward:kick', tr(lANG,' Forward Posting Stats Setted On : KICK\n Forward Senders Will Kick From Chat'))
			set_text(LANG, 'forward:del', tr(lANG,' Forward Posting Stats Setted On : Clean\n Forward Will Clean In Chat'))
			set_text(LANG, 'forward:warn', tr(lANG,' Forward Posting Stats Setted On : WARN\n Forward Senders Will Warned First next Time they Will Kick From Chat'))
			set_text(LANG, 'forward:ok', tr(lANG,' Forward Posting Unlocked'))
			set_text(LANG, 'forward:report', tr(lANG,' Forward Posting Stats Setted On : Report\n Forward Senders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'flood:kick', tr(lANG,' Flood Stats Setted On : Kick\n Flooders Will Kick From Chat'))
			set_text(LANG, 'flood:ok', tr(lANG,' Flooding Allowed'))
			set_text(LANG, 'flood:report', tr(lANG,' Flood Stats Setted On : Report\n Flooders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'spam:kick', tr(lANG,' Spam(LongMessage) Posting Stats Setted On : KICK\n Spam(LongMessage) Senders Will Kick From Chat'))
			set_text(LANG, 'spam:del', tr(lANG,' Spam(LongMessage) Posting Stats Setted On : Clean\n Spam(LongMessage) Will Clean In Chat'))
			set_text(LANG, 'spam:ok', tr(lANG,' Spam(LongMessage) Posting Unlocked'))
			set_text(LANG, 'spam:report', tr(lANG,' Spam(LongMessage) Posting Stats Setted On : Report\n Spam(LongMessage) Senders Will Kick From Chat And they\'re All Messages Will Clean And The Will Repored Spam In Telegram'))
			set_text(LANG, 'lock:edit', tr(lANG,' Editing Messages Locked'))
			set_text(LANG, 'lock:pin', tr(lANG,' Pining Message Locked'))
			set_text(LANG, 'lock:reply', tr(lANG,' Reply Message Locked'))
			set_text(LANG, 'lock:english', tr(lANG,' English Chating Locked'))
			set_text(LANG, 'lock:arabic', tr(lANG,' Persian/Arabic Chating Locked'))
			set_text(LANG, 'lock:bots', tr(lANG,' API Bots Adding Locked'))
			set_text(LANG, 'lock:tgservice', tr(lANG,' TelegramServiceMessages locked'))
			set_text(LANG, 'unlock:edit', tr(lANG,' Editing Messages UnLocked'))
			set_text(LANG, 'unlock:pin', tr(lANG,' Pining Message UnLocked'))
			set_text(LANG, 'unlock:reply', tr(lANG,' Reply Message UnLocked'))
			set_text(LANG, 'unlock:english', tr(lANG,' English Chating UnLocked'))
			set_text(LANG, 'unlock:arabic', tr(lANG,' Persian Arabic Chating UnLocked'))
			set_text(LANG, 'unlock:bots', tr(lANG,' API Bots Adding UnLocked'))
			set_text(LANG, 'unlock:tgservice', tr(lANG,' TelegramServiceMessages Unlocked'))
			set_text(LANG, 'mute:photo', tr(lANG,' Photo Muted'))
			set_text(LANG, 'mute:video', tr(lANG,' Video Muted'))
			set_text(LANG, 'mute:gif', tr(lANG,' Gif Animations Muted'))
			set_text(LANG, 'mute:game', tr(lANG,' Inline Games Muted'))
			set_text(LANG, 'mute:inline', tr(lANG,' Inline Keyboard Muted'))
			set_text(LANG, 'mute:audio', tr(lANG,' Musics Muted'))
			set_text(LANG, 'mute:voice', tr(lANG,' Voices Muted'))
			set_text(LANG, 'mute:contact', tr(lANG,' Contact Muted'))
			set_text(LANG, 'mute:location', tr(lANG,' Location Muted'))
			set_text(LANG, 'mute:sticker', tr(lANG,' Sticker Muted'))
			set_text(LANG, 'mute:file', tr(lANG,' File/Document Muted'))
			set_text(LANG, 'unmute:photo', tr(lANG,' Photo UnMuted'))
			set_text(LANG, 'unmute:contact', tr(lANG,' Contact UnMuted'))
			set_text(LANG, 'unmute:video', tr(lANG,' Video UnMuted'))
			set_text(LANG, 'unmute:gif', tr(lANG,' Gif Animations UnMuted'))
			set_text(LANG, 'unmute:game', tr(lANG,' Inline Games UnMuted'))
			set_text(LANG, 'unmute:inline', tr(lANG,' Inline Keyboard UnMuted'))
			set_text(LANG, 'unmute:audio', tr(lANG,' Musics UnMuted'))
			set_text(LANG, 'unmute:voice', tr(lANG,' Voices UnMuted'))
			set_text(LANG, 'unmute:location', tr(lANG,' Location UnMuted'))
			set_text(LANG, 'unmute:sticker', tr(lANG,' Sticker UnMuted'))
			set_text(LANG, 'unmute:file', tr(lANG,' File/Document UnMuted'))
			set_text(LANG, 'silentgroup', tr(lANG,' Group Silented'))
			set_text(LANG, 'unsilentgroup', tr(lANG,' Group UnSilented'))
			set_text(LANG, 'Edit', tr(lANG,'Edit'))
			set_text(LANG, 'PIN', tr(lANG,'Pin'))
			set_text(LANG, 'RPL', tr(lANG,'Reply'))
			set_text(LANG, 'LOC', tr(lANG,'Location'))
			set_text(LANG, 'VC', tr(lANG,'Voice'))
			set_text(LANG, 'MIC', tr(lANG,'Musics'))
			set_text(LANG, 'VID', tr(lANG,'Video'))
			set_text(LANG, 'PHOTO', tr(lANG,'Photo'))
			set_text(LANG, 'SGP', tr(lANG,'SilentGroup'))
			set_text(LANG, 'SCHAR', tr(lANG,'SpamCharr'))
			set_text(LANG, 'FT', tr(lANG,'Flood Time'))
			set_text(LANG, 'FM', tr(lANG,'Flood Max'))
			set_text(LANG, 'HASH', tr(lANG,'HashTag'))
			set_text(LANG, 'USER', tr(lANG,'Username'))
			set_text(LANG, 'LINKS', tr(lANG,'Links'))
			set_text(LANG, 'FWD', tr(lANG,'Forward'))
			set_text(LANG, 'SP', tr(lANG,'Spam'))
			set_text(LANG, 'FLD', tr(lANG,'Flood'))
			set_text(LANG, 'ILIN', tr(lANG,'Inline'))
			set_text(LANG, 'GM', tr(lANG,'Game'))
			set_text(LANG, 'CONT', tr(lANG,'Contact Sharing'))
			set_text(LANG, 'AR', tr(lANG,'Persian/Arabic'))
			set_text(LANG, 'EN', tr(lANG,'English'))
			set_text(LANG, 'DOC', tr(lANG,'Document/File'))
			set_text(LANG, 'STIC', tr(lANG,'Sticker'))
			set_text(LANG, 'GIF', tr(lANG,'Gif/Animations'))
			set_text(LANG, 'LNG', tr(lANG,'Group Language'))
			set_text(LANG, 'BOTS', tr(lANG,'RoBots joining'))
			set_text(LANG, 'EXP', tr(lANG,'Expire'))
			set_text(LANG, 'CHAT', tr(lANG,'Chat/Text'))
			set_text(LANG, 'stats', tr(lANG,'Stats'))
			set_text(LANG, 'set:floodc', tr(lANG,'Flood Count Limited on:'))
			set_text(LANG, 'set:floodtime', tr(lANG,'Flood Count Will Check Every :'))
			set_text(LANG, 'set:charr', tr(lANG,'Max Charrachters that can use in messages Limited on :'))
			set_text(LANG, 'filter_plus', tr(lANG,' Added To FilterdWords And will Clean.'))
			set_text(LANG, 'filter_egul', tr(lANG,' Removed From FilterdWords.'))
		else

		end
	end
end
	---------------------------
	local RLM = -100 -- Realm ID to Send Charge Panel ! (You Can Set A Privet)
	local BOT = 0 -- Bot Id
	local SUP = -100 -- SupportID
	--CallBacks
	function getInputFile(file)
  		if file:match('/') then
    		infile = {ID = "InputFileLocal", path_ = file}
  		elseif file:match('^%d+$') then
    		infile = {ID = "InputFileId", id_ = file}
  		else
    		infile = {ID = "InputFilePersistentId", persistent_id_ = file}
  		end
  		return infile
	end
	function GetMessage_R(chat_id, msg_id, cb, extra)
		tdcli_function ({
    		ID = "GetMessage",
    		chat_id_ = chat_id,
    		message_id_ = msg_id
  		}, cb, extra)
	end
	function revolse_user(username, cb, extra)
		tdcli_function ({
    		ID = "SearchPublicChat",
    		username_ = username
  		}, cb, extra)
  	end
  	function GetUser(user_id, cb, extra)
		tdcli_function ({
    	ID = "GetUserFull",
    	user_id_ = user_id
		}, cb, extra)
  	end
  	function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
  	tdcli_function ({
    ID = "SendMessage",
    chat_id_ = chat_id,
    reply_to_message_id_ = reply_to_message_id,
    disable_notification_ = disable_notification,
    from_background_ = from_background,
    reply_markup_ = reply_markup,
    input_message_content_ = {
      ID = "InputMessagePhoto",
      photo_ = getInputFile(photo),
      added_sticker_file_ids_ = {},
      width_ = 0,
      height_ = 0,
      caption_ = caption
    },
  }, dl_cb, nil)
end
	function sendmetion(chat_id, user_id, msg_id, text, offset, length)
	tdcli_function ({
   			ID = "SendMessage",
   			chat_id_ = chat_id,
   			reply_to_message_id_ = msg_id,
   			disable_notification_ = 0,
    		from_background_ = 1,
    		reply_markup_ = nil,
    		input_message_content_ = {
      		ID = "InputMessageText",
      		text_ = text,
      		disable_web_page_preview_ = 0,
     		clear_draft_ = 0,
      		entities_ = {[0]={
      		ID="MessageEntityMentionName",
      		offset_=offset,
      		length_=length,
      		user_id_=user_id
      		},
      		},
   			},
		}, dl_cb, nil)
	end
--Remove Groups--
function rem_gp(msg, chat_id, user_id, username)
	add = '*Group* '..chat_id..' *Hasbeen SuccsesFully Removed From* @SPRCPU\\_Company *Data Base.*'
	send_sup = '*Group *:`'..chat_id..'`\n'
	..'*Remover* : '..(username or user_id)..'\n'
	..'---------------------------'
	if not redis:sismember('groups', '-100'..chat_id) then
		text = '*Group isn\'t Added :(*'
	else
		redis:del('group:-100'..chat_id)
		redis:srem('groups', '-100'..chat_id)
		text = add
	end
	tdcli.sendText(RLM, 0, 0, 0, nil, send_sup, 0, 'MarkDown')
	tdcli.sendText('-100'..chat_id, 0, 0, 0, nil, text, 0, 'MarkDown')
end
--On Reply Messages :))
			--ID_Reply
			function ID_REPLY(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
					local function ID_CB(extra, result, succses)
					chat_id = extra.chat_id
					vardump(result)
					text = '> '..lang(chat_id, 'user_id').. ' : '..result.user_.id_..'\n'
					..'> '..lang(chat_id, 'chat_id').. ' : '..chat_id:gsub('-100','')..'\n'
					..'> '..lang(chat_id, 'username').. ' : @'..result.user_.username_:gsub('false','No Username')..'\n'
					..'> '..lang(chat_id, 'name').. ' : '..result.user_.first_name_:gsub('false','No Name')..'\n'
					..'> '..lang(chat_id, 'stats').. ' : '..result.user_.status_.ID:gsub('UserStatusRecently','Recently'):gsub('UserStatusEmpty','API BOT'):gsub('UserStatusOffline','Offline'):gsub('UserStatusOnline','Online')..'\n'
					tdcli.downloadFile(result.user_.profile_photo_.big_.id_)
					tdcli.getFilePersistent(result.user_.profile_photo_.big_.persistent_id_)
					sleep(1)
					sendPhoto(chat_id, extra.msg_id, 0, 1, nil, '/root/.telegram-cli/F802/data/profile_photo/'.. result.user_.profile_photo_.id_ ..'.jpg', text)
				end
			GetUser(user_id, ID_CB, {chat_id=chat_id,msg_id=msg_id})
			end
			--Promote_Reply
			function Promote_Reply(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif msg.sender_user_id_ == BOT then
					text = '> '.. lang(chat_id, 'promote:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:err:is_mod')
						sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:sadd('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:done:moded')
						sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Demote_Reply
			function Demote_Reply(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'demote:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if not redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:srem('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Promote_EXadmin
			function Promote_EXadmin(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '`>` '.. lang(chat_id, 'promote_ex:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'promote_ex:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:sadd('exadmins:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Editor')
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Demote_EXadmin
			function Demote_EXadmin(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'demote_ex:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if not redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:srem('exadmins:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Promote_Admin
			function Promote_Admin(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('sudos', user_id) then
					text = '`>` '.. lang(chat_id, 'promote_G:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'promote_G:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:sadd('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Demote_Admin
			function Demote_Admin(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('sudos', user_id) then
					text = '`>` '.. lang(chat_id, 'demote_G:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'demote_G:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if not redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:srem('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Promote_Sudo
			function Promote_Sudo(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'sudo:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:sadd('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Demote_Sudo
			function Demote_Sudo(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'desudo:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if not redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:srem('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:done:moded')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Kick_REPLY
			function Kick_REPLY(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '`>` '.. lang(chat_id, 'kick:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif user_id == BOT then
					text = '`>` '.. lang(chat_id, 'kick:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
					text = '> '.. user ..' '.. lang(chat_id, 'kick:reply:done:kicked')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
				end
			end
			--Invite_REPLY
			function Invite_REPLY(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'invite:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					tdcli.addChatMembers(chat_id, {[0] = user_id})
					text = '> '.. user ..' '.. lang(chat_id, 'invite:reply:done:invited')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
				end
			end
			--Mute_Reply
			function Mute_Reply(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '`>` '.. lang(chat_id, 'mute:reply:err:rank')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				elseif msg.sender_user_id_ == BOT then
					text = '`>` '.. lang(chat_id, 'mute:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:sadd('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:done:muted')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
			--Unmute_Reply
			function Unmute_Reply(extra, result, succses)
				msg = result
				chat_id = msg.chat_id_
				user_id = msg.sender_user_id_
				msg_id = msg.id_
				user_ = redis:hgetall('users:'..user_id)
				username = user_.uname:gsub('false', '')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if msg.sender_user_id_ == BOT then
					text = '> '.. lang(chat_id, 'unmute:reply:err:BOT')
				tdcli.sendText(chat_id, msg_id, 0, 0, nil, text, 0, 'MarkDown')
				else
					if not redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:err:is_mod')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					else
						redis:srem('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:done:unmuted')
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
					end
				end
			end
	---------------------------------------------------------------------------------------------------------
	----------------------------- Finished Reply Functions :) After 5Hours :)) ------------------------------
	---------------------------------------------------------------------------------------------------------
	--#											@Reload_Life											  #--
	---------------------------------------------------------------------------------------------------------
	----------------------------------- Start UserID Actions :((((((((( -------------------------------------
	---------------------------------------------------------------------------------------------------------
			--ID_UserID
			function ID_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				user_id = msg.id_
				chat_id = extra.chat_id
				text = '> '..lang(chat_id, 'user_id').. ' : '..result.user_.id_..'\n'
				..'> '..lang(chat_id, 'chat_id').. ' : '..chat_id:gsub('-100','')..'\n'
				..'> '..lang(chat_id, 'username').. ' : @'..result.user_.username_:gsub('false','No Username')..'\n'
				..'> '..lang(chat_id, 'name').. ' : '..result.user_.first_name_:gsub('false','No Name')..'\n'
				..'> '..lang(chat_id, 'stats').. ' : '..result.user_.status_.ID:gsub('UserStatusRecently','Recently'):gsub('UserStatusEmpty','API BOT'):gsub('UserStatusOffline','Offline'):gsub('UserStatusOnline','Online')..'\n'
				tdcli.downloadFile(result.user_.profile_photo_.big_.id_)
				tdcli.getFilePersistent(result.user_.profile_photo_.big_.persistent_id_)
				sleep(1)
				sendPhoto(chat_id, extra.msg_id, 0, 1, nil, '/root/.telegram-cli/F802/data/profile_photo/'.. result.user_.profile_photo_.id_ ..'.jpg', text)
			end
			--Promote_UserID
			function Promote_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'promote:reply:err:BOT')
				else
					if redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:err:is_mod')
					else
						redis:sadd('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_ID
			function Demote_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if extra == BOT then
					text = '> '.. lang(chat_id, 'demote:reply:err:BOT')
				else
					if not redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:err:is_mod')
					else
						redis:srem('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_ID
			function Promote_EXadmin_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote_ex:reply:err:rank')
				elseif extra == BOT then
					text = '> '.. lang(chat_id, 'promote_ex:reply:err:BOT')
				else
					if redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:err:is_mod')
					else
						redis:sadd('exadmins:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:done:moded')
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Editor')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_EXadmin_ID(result, extra)
			function Demote_EXadmin_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if extra == BOT then
					text = '> '.. lang(chat_id, 'demote_ex:reply:err:BOT')
				else
					if not redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:err:is_mod')
					else
						redis:srem('exadmins:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_Admin_ID(result, extra)
			function Promote_Admin_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote_G:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'promote_G:reply:err:BOT')
				else
					if redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:err:is_mod')
					else
						redis:sadd('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_Admin
			function Demote_Admin_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'demote_G:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'demote_G:reply:err:BOT')
				else
					if not redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:err:is_mod')
					else
						redis:srem('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_Sudo
			function Promote_Sudo_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'sudo:reply:err:BOT')
				else
					if redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:err:is_mod')
					else
						redis:sadd('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_Sudo
			function Demote_Sudo_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'desudo:reply:err:BOT')
				else
					if not redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:err:is_mod')
					else
						redis:srem('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Kick_REPLY
			function Kick_REPLY_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'kick:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'kick:reply:err:BOT')
				else
					tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
					text = '> '.. user ..' '.. lang(chat_id, 'kick:reply:done:kicked')
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Invite_REPLY
			function Invite_REPLY_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'invite:reply:err:BOT')
				else
					tdcli.addChatMembers(chat_id, {[0] = user_id})
					text = '> '.. user ..' '.. lang(chat_id, 'invite:reply:done:invited')
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Mute_Reply
			function Mute_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'mute:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'mute:reply:err:BOT')
				else
					if redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:err:is_mod')
					else
						redis:sadd('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:done:muted')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Unmute_Reply
			function Unmute_ID(extra, result, succses)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.user_.id_
				msg_id = extra.msg_id
				username = result.user_.username_:gsub('false','')
				name = result.user_.first_name_:gsub('false','')
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'unmute:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'unmute:reply:err:BOT')
				else
					if not redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:err:is_mod')
					else
						redis:srem('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:done:unmuted')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end

	---------------------------------------------------------------------------------------------------------
	----------------------------- Finished Reply Functions :) After 5Hours :)) ------------------------------
	---------------------------------------------------------------------------------------------------------
	--#											@Reload_Life											  #--
	---------------------------------------------------------------------------------------------------------
	----------------------------------- Start UserID Actions :((((((((( -------------------------------------
	---------------------------------------------------------------------------------------------------------
			--ID_Username
		--	tdcli_function ({
    	--	ID = "SearchPublicChat",
    	--	username_ = username
  		--	}, cb, nil)
			function ID_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				local function ID_CB(extra, result, succses)
					chat_id = extra.chat_id
					vardump(result)
					text = '> '..lang(chat_id, 'user_id').. ' : '..result.user_.id_..'\n'
					..'> '..lang(chat_id, 'chat_id').. ' : '..chat_id:gsub('-100','')..'\n'
					..'> '..lang(chat_id, 'username').. ' : @'..result.user_.username_:gsub('false','No Username')..'\n'
					..'> '..lang(chat_id, 'name').. ' : '..result.user_.first_name_:gsub('false','No Name')..'\n'
					..'> '..lang(chat_id, 'stats').. ' : '..result.user_.status_.ID:gsub('UserStatusRecently','Recently'):gsub('UserStatusEmpty','API BOT'):gsub('UserStatusOffline','Offline'):gsub('UserStatusOnline','Online')..'\n'
					tdcli.downloadFile(result.user_.profile_photo_.big_.id_)
					tdcli.getFilePersistent(result.user_.profile_photo_.big_.persistent_id_)
					sleep(1)
					sendPhoto(chat_id, extra.msg_id, 0, 1, nil, '/root/.telegram-cli/F802/data/profile_photo/'.. result.user_.profile_photo_.id_ ..'.jpg', text)
				end
			GetUser(user_id, ID_CB, {chat_id=chat_id,msg_id=msg_id})
			end
			--Promote_Username
			function Promote_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'promote:reply:err:BOT')
				else
					if redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:err:is_mod')
					else
						redis:sadd('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Moderator')
						text = '> '.. user ..' '.. lang(chat_id, 'promote:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_Username
			function Demote_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'demote:reply:err:BOT')
				else
					if not redis:sismember('mods:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:err:is_mod')
					else
						redis:srem('mods:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_Username
			function Promote_EXadmin_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote_ex:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'promote_ex:reply:err:BOT')
				else
					if redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:err:is_mod')
					else
						redis:sadd('exadmins:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Editor')
						text = '> '.. user ..' '.. lang(chat_id, 'promote_ex:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_EXadmin_Username
			function Demote_EXadmin_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'demote_ex:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'demote_ex:reply:err:BOT')
				else
					if not redis:sismember('exadmins:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:err:is_mod')
					else
						redis:srem('exadmins:'..chat_id, user_id)
						tdcli.changeChatMemberStatus(chat_id, user_id, 'Member')
						text = '> '.. user ..' '.. lang(chat_id, 'demote_ex:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_Admin_Username
			function Promote_Admin_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'promote_G:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'promote_G:reply:err:BOT')
				else
					if redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:err:is_mod')
					else
						redis:sadd('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'promote_G:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_AdminUsername
			function Demote_Admin_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'demote_G:reply:err:BOT')
				else
					if not redis:sismember('admins', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:err:is_mod')
					else
						redis:srem('admins', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'demote_G:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Promote_SudoUsername
			function Promote_Sudo_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'sudo:reply:err:BOT')
				else
					if redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:err:is_mod')
					else
						redis:sadd('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'sudo:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Demote_Sudo
			function Demote_Sudo_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'desudo:reply:err:BOT')
				else
					if not redis:sismember('sudos', user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:err:is_mod')
					else
						redis:srem('sudos', user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'desudo:reply:done:moded')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Kick_REPLY
			function Kick_REPLY_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'kick:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'kick:reply:err:BOT')
				else
					tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
					text = '> '.. user ..' '.. lang(chat_id, 'kick:reply:done:kicked')
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Invite_REPLY
			function Invite_REPLY_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if user_id == BOT then
					text = '> '.. lang(chat_id, 'invite:reply:err:BOT')
				else
					tdcli.addChatMembers(chat_id, {[0] = user_id})
					text = '> '.. user ..' '.. lang(chat_id, 'invite:reply:done:invited')
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Mute_Reply
			function Mute_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'mute:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'mute:reply:err:BOT')
				else
					if redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:err:is_mod')
					else
						redis:sadd('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'mute:reply:done:muted')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
			--Unmute_Reply
			function Unmute_Username(extra, result, sucss)
				if result.ID == 'Error' then
					tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
				end
				msg = result
				chat_id = extra.chat_id
				user_id = result.id_
				msg_id = extra.msg_id
				user_ = redis:hgetall('users:'..user_id)
				username = extra.username:gsub('_','\\_')
				name = user_.name
				if username then
					user = username
				elseif name then
					user = name
				else
					user = user_id
				end
				if redis:sismember('mods:'..chat_id, user_id) or redis:sismember('exadmins:'..chat_id, user_id) or redis:sismember('admins', user_id) or redis:sismember('sudos', user_id) then
					text = '> '.. lang(chat_id, 'unmute:reply:err:rank')
				elseif user_id == BOT then
					text = '> '.. lang(chat_id, 'unmute:reply:err:BOT')
				else
					if not redis:sismember('muted:'..chat_id, user_id) then
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:err:is_mod')
					else
						redis:srem('muted:'..chat_id, user_id)
						text = '> '.. user ..' '.. lang(chat_id, 'unmute:reply:done:unmuted')
					end
				end
				sendmetion(chat_id, user_id, msg_id, text, 2, string.len(user))
			end
	------------------------------------------------------------------------End
				function RUN(data, matches, tdcli)
					msg = (data.message_ or data)
					chat_id = msg.chat_id_
					user_id = msg.sender_user_id_
					msg_id = msg.id_
					replymsg_id = msg.reply_to_message_id_
					user__ = redis:hgetall('users:'..user_id)
					username = '@'..user__.uname
					name = user__.name
					phone = user__.phone
					--Some Thins That Need
					--Bot Needs
					if tonumber(redis:ttl('group:'..chat_id)) < 5 and not is_admin(msg) then
						redis:setex('leaving'..chat_id, 4800, true)
						if not redis:get('leaving'..chat_id) then
    						tdcli.changeChatMemberStatus(chat_id, BOT, 'Kicked')
						end
						if not redis:get('xn'..chat_id) then
						tdcli.sendText(chat_id, msg_id, 0, 0, nil, '*Group Expired.....*\n*شارژ گروه تمام شد....\nاز این دستور برای درخاست شارژ گروه استفاده کنید \nربات بعد از 2 ساعت گروه را ترک میکند\n*/request_'..chat_id:gsub('-100',''), 0, 'MarkDown')
						chid = chat_id
						local send_sup = '*Group *:`'..chid..'`\n'
								..'*Expired .....\n'
								..'`>` _Charge Panel_ :\n'
								..'`>` *Plan 1 *:\n'
								..'`>` *1 Mounth Charge.*\n'
								..'`>` *Command* : /Plan1\\_'..chid..'\\_1\n'
								..'`>` *Plan 2 *:\n'
								..'`>` *2 Mounth Charge.*\n'
								..'`>` *Command* : /Plan2\\_'..chid..'\\_1\n'
								..'`>` *Plan 3 *:\n'
								..'`>` *3 Mounth Charge.*\n'
								..'`>` *Command* : /Plan3\\_'..chid..'\\_1\n'
								..'`>` *Plan 4 *:\n'
								..'`>` *4 Mounth Charge.*\n'
								..'`>` *Command* : /Plan4\\_'..chid..'\\_1\n'
								..'`>` *VIP* : /VipCharge\\_'..chid..'\\_1\n'
								..'`>` *Join* : /Join\\_'..chid..'\\_1\n'
								..'`>` *Leave And Remove Group From Data Base :*\n'
								..'`>` /Leave\\_'..chid
								tdcli.sendText(RLM, 0, 0, 0, nil, send_sup, 0, 'md')
						redis:setex('xn'..chat_id, 4800, true)
					end
						return
					end

					--
						 -- Sudo Accsess --
							--UpDate Message Texts
							

   					   	-- Fa Lang 
   					   	if redis:get('langc:'..chat_id) == 'fa' then


   					   		--



   					   		if matches[1]:lower() == 'update' and is_sudo(msg) then
								if matches[2]:lower() == 'fa' then
									uplang('fa')
								elseif matches[2]:lower() == 'en' then
									uplang('en')
								else
									uplang(matches[2])
								end
								tdcli.sendText(chat_id, msg_id, 0, 0, nil, '*Done*!!', 0, 'MarkDown')
							end
							--Reload BOT
							if matches[1]:lower() == 'reload' and is_sudo(msg) then
								plugins = {}
  								load_plugins()
  								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* `F80 Reloaded`', 1, 'md')
							end

							--Promote To Sudo
							if matches[1]:lower() == 'sudo' and matches[2] == '+' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Sudo_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_Sudo_Username, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Sudo, nil)
								end
							end
							--Demote From Sudo
							if matches[1]:lower() == 'sudo' and matches[2] == '-' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Sudo_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_Sudo_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Sudo, nil)
								end
							end
							--Promote To GAdmin
							if matches[1]:lower() == 'admin' and matches[2] == '+' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Admin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_Admin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Admin, nil)
								end
							end
							--Demote From GAdmin
							if matches[1]:lower() == 'admin' and matches[2] == '-' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Admin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_Admin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Admin, nil)
								end
							end
							--Add Group

							if matches[1]:lower() == 'add' and is_admin(msg) then
							if matches[2] then
      						    chid = matches[2]
      						elseif not matches[2] then
      						    chid = chat_id:gsub('-100','')
      						end
								local send_sup = '*Group *:`'..chid..'`\n'
								..'*Adder* : '..(username or user_id):gsub('_', '\\_')..'\n'
								..'`>` _Charge Panel_ :\n'
								..'`>` *Plan 1 *:\n'
								..'`>` *1 Mounth Charge.*\n'
								..'`>` *Command* : /Plan1\\_'..chid..'\\_1\n'
								..'`>` *Plan 2 *:\n'
								..'`>` *2 Mounth Charge.*\n'
								..'`>` *Command* : /Plan2\\_'..chid..'\\_1\n'
								..'`>` *Plan 3 *:\n'
								..'`>` *3 Mounth Charge.*\n'
								..'`>` *Command* : /Plan3\\_'..chid..'\\_1\n'
								..'`>` *Plan 4 *:\n'
								..'`>` *4 Mounth Charge.*\n'
								..'`>` *Command* : /Plan4\\_'..chid..'\\_1\n'
								..'`>` *VIP* : /VipCharge\\_'..chid..'\\_1\n'
								..'`>` *Join* : /Join\\_'..chid..'\\_1\n'
								..'`>` *Leave And Remove Group From Data Base :*\n'
								..'`>` /Leave\\_'..chid
								if redis:sismember('groups', '-100'..chid) then
									text = '*Group Is Already Added*'
								else
									time = 1 * 60 * 60 * 24
									redis:sadd('groups', '-100'..chid)
									tdcli.sendText(RLM, 0, 0, 0, nil, send_sup, 0, 'md')
									redis:setex('group:-100'..chid, time, true) --SetEx For Ttl
									text = '*Group* `'..chid..'` *Hasbeen SuccsesFully Added To* @SPRCPU\\_Company *Data Base.*'
								end
								tdcli.sendText('-100'..chid, 0, 0, 0, nil, text, 0, 'md')
        						--Remove Group
        					end
      						if matches[1]:lower() == 'rem' and is_admin(msg) then
      						  if matches[2] then
      						    cid = matches[2]
      						  elseif not matches[2] then
      						    cid = chat_id:gsub('-100','')
      						  end
      						  rem_gp(msg, cid, user_id, (username:gsub('@', '') or name))
      						end
      						--Leave The Bot
      						if matches[1]:lower() == 'leave' and is_admin(msg) then
        					  if matches[2] then
        					    chid = matches[2]
        					  elseif not matches[2] then
        					    chid = chat_id:gsub('-100','')
        					  end
    						  tdcli.changeChatMemberStatus('-100'..chid, BOT, 'Kicked')
        					  rem_gp(msg, chid, user_id, username:gsub('@', ''))
  							  tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_Leaved_', 1, 'md')
        					end
        					--Join To Chat
							if matches[1]:lower() == 'join'  and matches[2] and is_admin(msg) then
      						  tdcli.addChatMembers('-100'..matches[2], {[0] = user_id})
  							  tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_You Hasbeen Added_', 1, 'md')
      						end
      						--Charge Panel--
      						--{
      							if matches[1]:lower() == 'vipcharge' and is_admin(msg) then
      								gpid = matches[2]
      								if matches[3] == '1' then
      								if redis:sismember('VIP', '-100'..gpid) then
      									text = '*Group IS Already VIP*'
      								else
      									text = '*Group Vip Charged Succses*'
  							  			tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '*Your Group Charged As VIP Group* :P', 1, 'md')
      									redis:sadd('VIP', '-100'..gpid)
      								end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  		elseif matches[3] == '0' then
  							  			if not redis:sismember('VIP', '-100'..gpid) then
      									text = '*Group isn\'t VIP*'
      								else
      									text = '*Group Vip UnCharged Succses*'
  							  			tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '*Your Group Charged As Normal Group* :(', 1, 'md')
      									redis:srem('VIP', '-100'..gpid)
      								end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  		end
      							end

      							if matches[1]:lower() == 'plan' and matches[2] and matches[3] and is_admin(msg) then
      								day = 24 * 60 * 60
      								if matches[2] == '1' then
      									gpid = matches[3]
      									time = day * 30
      								elseif matches[2] == '2' then
												gpid = matches[3]
      									time = day * 30 * 2
      								elseif matches[2] == '3' then
      									gpid = matches[3]
      									time = day * 30 * 3
      								elseif matches[2] == '4' then
      									gpid = matches[3]
      									time = day * 30 * 4
      								end
      								redis:setex('group:-100'..gpid, time, true)
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_Charged_', 1, 'md')
  							  		tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '_Your Group Charged_ : '..matches[1]..matches[2], 1, 'md')
       							end

      						--}
							--Promote To Extra Admin
							if matches[1]:lower() == 'exadmin' and matches[2] == '+' and is_admin(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_EXadmin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_EXadmin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_EXadmin, nil)
								end
							end
							--Demote From ExtraAdmin
							if matches[1]:lower() == 'exadmin' and matches[2] == '-' and is_admin(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_EXadmin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_EXadmin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_EXadmin, nil)
								end
							end
							--
							--Promote To Modrator
							if matches[1]:lower() == 'مدیر' and matches[2] == '+' and is_ex(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Reply, nil)
								end
							end
							--Demote From Modrator
							if matches[1]:lower() == 'مدیر' and matches[2] == '-' and is_ex(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Username, extra)
									else--if type(matches[3]) == 'number' then
										GetUser(matches[3], Demote_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Reply, nil)
								end
							end
							--
							--Mute A Member
							if matches[1]:lower() == 'سکوت' and matches[2] == '+' and is_mod(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Mute_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Mute_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Mute_Reply, nil)
								end
							end
							--Demote From Modrator
							if matches[1]:lower() == 'سکوت' and matches[2] == '-' and is_mod(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Umute_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Unmute_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Unmute_Reply, nil)
								end
							end
							--Invite Mmbr
							if matches[1]:lower() == 'دعوت' and is_mod(msg) then
								if replymsg_id == 0 and matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), Invite_REPLY_Username, extra)
									else--if type(matches[2]) == 'number' then
									GetUser(matches[2], Invite_REPLY_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Invite_REPLY, nil)
								end
							end
							--Kick MMbr
							if matches[1]:lower() == 'اخراج' and is_mod(msg) then
								if replymsg_id == 0 and matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), Kick_REPLY_Username, extra)
									else--if type(matches[2]) == 'number' then
									GetUser(matches[2], Kick_REPLY_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Kick_REPLY, nil)
								end
							end
							--
						if matches[1]:lower() == 'ایدی' and is_mod(msg) then
							if replymsg_id == 0 then
								if not matches[2] then
									local function ID_CB(extra, result, succses)
										chat_id = extra.chat_id
										vardump(result)
										text = '> '..lang(chat_id, 'user_id').. ' : '..result.user_.id_..'\n'
										..'> '..lang(chat_id, 'chat_id').. ' : '..chat_id:gsub('-100','')..'\n'
										..'> '..lang(chat_id, 'username').. ' : @'..result.user_.username_:gsub('false','No Username')..'\n'
										..'> '..lang(chat_id, 'name').. ' : '..result.user_.first_name_:gsub('false','No Name')..'\n'
										..'> '..lang(chat_id, 'stats').. ' : '..result.user_.status_.ID:gsub('UserStatusRecently','Recently'):gsub('UserStatusEmpty','API BOT'):gsub('UserStatusOffline','Offline'):gsub('UserStatusOnline','Online')..'\n'
										tdcli.downloadFile(result.user_.profile_photo_.big_.id_)
										sleep(1)
										tdcli.getFilePersistent(result.user_.profile_photo_.big_.persistent_id_)
										sendPhoto(chat_id, extra.msg_id, 0, 1, nil, '/root/.telegram-cli/F802/data/profile_photo/'.. result.user_.profile_photo_.id_ ..'.jpg', text)
									end
									GetUser(msg.sender_user_id_, ID_CB, {chat_id=chat_id,msg_id=msg_id})
								elseif matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), ID_Username, extra)
									else--if matches[2] then
										GetUser(tonumber(matches[2]), ID_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								end
							elseif replymsg_id ~= 0 then
								GetMessage_R(chat_id, replymsg_id, ID_REPLY, nil)
							end
						end
						--
							if matches[1]:lower() == 'لیست' and is_mod(msg) then
								if matches[2]:lower() == 'مدیران' then
									hash = 'mods:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:mods')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
								elseif matches[2]:lower() == 'صاحب ها' then
									hash = 'exadmins:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:exadmins')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'ادمین ها' then
									hash = 'admins'
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:admins')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'سودو ها' then
									hash = 'sudos'
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:sudos')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'سکوت' then
									hash = 'muted:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:muted')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'ربات ها' then
									local function getbots(extra, result, succses)
										chat_id = (extra.chatid or succses.chatid)
										msg_id = (extra.mid or succses.mid)
										for s,g in pairs(result.members_) do
										v = g.user_id_
										u = redis:hgetall('users:'..v)
										text = '*'..lang(chat_id, 'list:bots')..'*'
											if u.uname then
												text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
											elseif u.name then
												text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
											else
												text = text..' - *'..v..'* \n'
											end
										end
  							  			tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									tdcli_function ({
  									  ID = "GetChannelMembers",
  									  channel_id_ = chat_id:gsub('-100',''),
  									  filter_ = {
  									    ID = "ChannelMembersBots"
  									  },
  									  offset_ = 0,
  									  limit_ = 10000
  									}, getbots, {chatid=chat_id, mid=msg_id})
  								elseif matches[2]:lower() == 'اخراج شده ها' then
									local function kicked(extra, result, succses)
										chat_id = (extra.chatid or succses.chatid)
										msg_id = (extra.mid or succses.mid)
										for s,g in pairs(result.members_) do
										v = g.user_id_
										u = redis:hgetall('users:'..v)
										text = '*'..lang(chat_id, 'list:kicked')..'*'
											if u.uname then
												text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
											elseif u.name then
												text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
											else
												text = text..' - *'..v..'* \n'
											end
										end
  							  			tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									tdcli_function ({
  									  ID = "GetChannelMembers",
  									  channel_id_ = chat_id:gsub('-100',''),
  									  filter_ = {
  									    ID = "ChannelMembersKicked"
  									  },
  									  offset_ = 0,
  									  limit_ = 100000
  									}, kicked, {chatid=chat_id, mid=msg_id})
  							  	elseif matches[2]:lower() == 'گروه ها' then
  							  		hash = 'groups'
									list = redis:smembers(hash)
									text = '*F80 Groups List* :\n'
									for k,v in pairs(list) do
										if redis:get('name:'..v) then
										text = text..'`'..k..'` *'..v..'* \n*Name:* '..redis:get('name:'..v)..'\n*Token:* '..(redis:get('token:'..v) or 'Not Set')..'\n---------\n'
										else
										text = text..'`'..k..'` *'..v..'* \n*Token:* '..(redis:get('token:'..v) or 'Not Set')..'\n---------\n'
										end
									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
								elseif matches[2]:lower() == 'فیلتر شده ها' then
									hash = 'filterlist:'..chat_id
									list = redis:smembers(hash)
									text = lang(chat_id, 'list:filterd')
									for k,v in pairs(list) do
										text = text..'`'..k..'` - *'..v..'*\n'
									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

								end
							end

						----------------Clean---
						if matches[1]:lower() == 'حذف' then
							if matches[2]:lower() == 'مدیران' and is_ex(msg) then
								hash = 'mods:'..chat_id
								list = redis:smembers(hash)
								text = ''..lang(chat_id, 'clean:mods')..' '
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
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'صاحب ها' and is_admin(msg) then
								hash = 'exadmins:'..chat_id
								list = redis:smembers(hash)
								text = ''..lang(chat_id, 'clean:exadmins')..' '
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
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'سکوت' and is_mod(msg) then
								hash = 'muted:'..chat_id
									list = redis:smembers(hash)
									text = ''..lang(chat_id, 'clean:muted')..' '
									for k,v in pairs(list) do
										u = (redis:hgetall('users:'..v) or tdcli_function({ID = "getUserFull",user_id_ = v}))
										if u.uname then
										text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
									elseif u.name then
										text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
									else
										text = text..' - *'..v..'* \n'
									end
									end
								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'فیلتر' and is_mod(msg) then
									hash = 'filterlist:'..chat_id
									list = redis:smembers(hash)
									text = lang(chat_id, 'clean:filterd')
									for k,v in pairs(list) do
										text = text..'`'..k..'` - *'..v..'*\n'
									end
								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'پیام' and is_mod(msg) then
  								local function cmsg(extra, result, succses)
  									vardump(result)
  									local i = 0
  									for k,v in pairs(result.messages_) do
   	 	   								tdcli.deleteMessages(v.chat_id_, {[0] = v.id_})
   	 	   								i = i + 1
  									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`'..i..'` '..lang((extra or succses).chat_id, 'clean:msg'), 1, 'md')
  								end
  								tdcli_function ({
  								  ID = "GetChatHistory",
  								  chat_id_ = chat_id,
  								  from_message_id_ = msg_id,
  								  offset_ = 0,
  								  limit_ = (matches[3] or 100)
  								}, cmsg, {chat_id=chat_id})
  							elseif matches[2]:lower() == 'لینک' and is_mod(msg) then
  								text = lang(chat_id, 'clean:link')
  								hash = 'link:'..chat_id
  								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'پیام خوش امد' and is_mod(msg) then
  								text = lang(chat_id, 'clean:wlc')
  								hash = 'wlc:'..chat_id
  								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'همه پیام ها' and is_mod(msg) then
  								local function call_cb(extra, result, success)
									for v,k in pairs(result.members_) do
										tdcli.deleteMessagesFromUser((extra or succses).chat_id, k.user_id_)
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
  								text = lang(chat_id, 'clean:all')
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

  							elseif matches[2]:lower() == 'ربات ها' and is_mod(msg) then
  								local function call_cb(extra, result, success)
  									vardump(result)
									for v,k in pairs(result.members_) do
										tdcli.changeChatMemberStatus((extra or succses).chat_id, k.user_id_, 'Kicked')
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
								text = lang(chat_id, 'clean:bots')
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						-------------------Locks &Settings
						if matches[1]:lower() == 'لینک' and is_mod(msg) then
							if not matches[2] then
								link = redis:get('link:'..chat_id)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Group Link :*\n'..(link or '_No link_\n*Use* `/setlink` [`link`]* to set your link :D*'), 1, 'md')
							end
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set('links:'..g, 'kick')
								text = ''..lang(chat_id, 'link:kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'حذف' then
								redis:set('links:'..g, 'del')
								text = ''..lang(chat_id, 'link:del')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set('links:'..g, 'ok')
								text = ''..lang(chat_id, 'link:ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set('links:'..g, 'report')
								text = ''..lang(chat_id, 'link:report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'ایدی' and is_mod(msg) then
							hash = 'username'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set(hash..':'..g, 'kick')
								text = ''..lang(chat_id, hash..':kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'حذف' then
								redis:set(hash..':'..g, 'del')
								text = ''..lang(chat_id, hash..':del')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set(hash..':'..g, 'ok')
								text = ''..lang(chat_id, hash..':ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set(hash..':'..g, 'report')
								text = ''..lang(chat_id, hash..':report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'هشتگ' and is_mod(msg) then
							hash = 'hashtag'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set(hash..':'..g, 'kick')
								text = ''..lang(chat_id, hash..':kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'حذف' then
								redis:set(hash..':'..g, 'del')
								text = ''..lang(chat_id, hash..':del')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set(hash..':'..g, 'ok')
								text = ''..lang(chat_id, hash..':ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set(hash..':'..g, 'report')
								text = ''..lang(chat_id, hash..':report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'فوروارد' and is_mod(msg) then
							hash = 'forward'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set(hash..':'..g, 'kick')
								text = ''..lang(chat_id, hash..':kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'حذف' then
								redis:set(hash..':'..g, 'del')
								text = ''..lang(chat_id, hash..':del')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set(hash..':'..g, 'ok')
								text = ''..lang(chat_id, hash..':ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set(hash..':'..g, 'report')
								text = ''..lang(chat_id, hash..':report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'پیام سریع' and is_mod(msg) then
							hash = 'floood'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set(hash..':'..g, 'kick')
								text = ''..lang(chat_id, hash..':kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set(hash..':'..g, 'ok')
								text = ''..lang(chat_id, hash..':ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set(hash..':'..g, 'report')
								text = ''..lang(chat_id, hash..':report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'متن طولانی' and is_mod(msg) then
							hash = 'spam'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'اخراج' then
								redis:set(hash..':'..g, 'kick')
								text = ''..lang(chat_id, hash..':kick')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'حذف' then
								redis:set(hash..':'..g, 'del')
								text = ''..lang(chat_id, hash..':del')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ازاد' then
								redis:set(hash..':'..g, 'ok')
								text = ''..lang(chat_id, hash..':ok')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ریپورت' then
								redis:set(hash..':'..g, 'report')
								text = ''..lang(chat_id, hash..':report')
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'قفل' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							hash = 'lock'
							if matches[2]:lower() == 'ویرایش' then
								redis:set('edit:'..g, hash)
								text = ''..lang(chat_id, hash..':edit')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'سنجاق' then
								redis:set('pin:'..g, hash)
								text = ''..lang(chat_id, hash..':pin')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'جواب' then
								redis:set('reply:'..g, hash)
								text = ''..lang(chat_id, hash..':reply')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'لاتین' then
								redis:set('english:'..g, hash)
								text = ''..lang(chat_id, hash..':english')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'پارسی' then
								redis:set('arabic:'..g, hash)
								text = ''..lang(chat_id, hash..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'عربی' then
								redis:set('arabic:'..g, hash)
								text = ''..lang(chat_id, hash..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ربات' then
								redis:set('bots:'..g, hash)
								text = ''..lang(chat_id, hash..':bots')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'پیام ورود و خروج' then
								redis:set('tgservice:'..g, hash)
								text = ''..lang(chat_id, hash..':tgservice')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'چت' then
								redis:set('chat:'..g, hash)
								text = ''..lang(chat_id, hash..':chat')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'ازاد' and is_mod(msg) or matches[1]:lower() == 'آزاد' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end

							hash = 'unlock'
							if matches[2]:lower() == 'ویرایش' then
								redis:set('edit:'..g, hash)
								text = ''..lang(chat_id, hash..':edit')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'سنجاق' then
								redis:set('pin:'..g, hash)
								text = ''..lang(chat_id, hash..':pin')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'جواب' then
								redis:set('reply:'..g, hash)
								text = ''..lang(chat_id, hash..':reply')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'لاتین' then
								redis:set('english:'..g, hash)
								text = ''..lang(chat_id, hash..':english')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'پارسی' then
								redis:set('arabic:'..g, hash)
								text = ''..lang(chat_id, hash..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'عربی' then
								redis:set('arabic:'..g, hash)
								text = ''..lang(chat_id, hash..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ربات' then
								redis:set('bots:'..g, hash)
								text = ''..lang(chat_id, hash..':bots')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'پیام ورود و خروج' then
								redis:set('tgservice:'..g, hash)
								text = ''..lang(chat_id, hash..':tgservice')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'چت' then
								redis:set('chat:'..g, hash)
								text = ''..lang(chat_id, hash..':chat')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'سکوت' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							hash = 'mute'
							if matches[2]:lower() == 'عکس' then
								redis:set('photo:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':photo')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'فیلم' then
								redis:set('video:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':video')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'اهنگ' then
								redis:set('audio:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':audio')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'صدا' then
								redis:set('voice:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':voice')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'مکان' then
								redis:set('location:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':location')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'انیمیشن' then
								redis:set('gif:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':gif')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'استیکر' then
								redis:set('sticker:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':sticker')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'فایل' then
								redis:set('file:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':file')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'بازی' then
								redis:set('game:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':game')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'درون خطی' then
								redis:set('inline:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':inline')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'شماره تلفن' then
								redis:set('contact:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':contact')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'حذف سکوت' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							hash = 'unmute'
							if matches[2]:lower() == 'عکس' then
								redis:set('photo:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':photo')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'فیلم' then
								redis:set('video:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':video')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'اهنگ' then
								redis:set('audio:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':audio')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'صدا' then
								redis:set('voice:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':voice')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'مکان' then
								redis:set('location:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':location')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'انیمیشن' then
								redis:set('gif:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':gif')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'استیکر' then
								redis:set('sticker:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':sticker')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'فایل' then
								redis:set('file:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':file')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'بازی' then
								redis:set('game:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':game')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'درون خطی' then
								redis:set('inline:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':inline')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'شماره تلفن' then
								redis:set('contact:'..g, 'Clean')
								text = ''..lang(chat_id, hash..':contact')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						--
						if matches[1]:lower() == 'تنظیمات' and is_mod(msg) then
						    gid = chat_id
							setting = "*Group Settings :*"
							.."\n----------------------"
							.."\n`>` *"..lang(gid, 'Edit').." :* `"..(redis:get('edit:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'PIN').." :* `"..(redis:get('pin:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'RPL').." :* `"..(redis:get('reply:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FLD').." :* `"..(redis:get('floood:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'SP').." :* `"..(redis:get('spam:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FWD').." :* `"..(redis:get('forward:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LINKS').." :* `"..(redis:get('links:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'USER').."[@] :* `"..(redis:get('username:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'HASH').."[#] :* `"..(redis:get('hashtag:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FM').." :* `"..(redis:get('flood:'..gid) or '5').."`"
							.."\n`>` *"..lang(gid, 'FT').." :* `"..(redis:get('floodtime:'..gid) or '2').."`"
							.."\n`>` *"..lang(gid, 'SCHAR').." :* `"..(redis:get('spamcharr:'..gid) or '4069').."`"
							.."\n`>` *"..lang(gid, 'SGP').." :* `"..(redis:get('muteall:'..gid) or 'Disable').."`"
							.."\n`>` *"..lang(gid, 'PHOTO').." :* `"..(redis:get('photo:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'CONT').." :* `"..(redis:get('contact:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'MIC').." :* `"..(redis:get('audio:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'VC').." :* `"..(redis:get('voice:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LOC').." :* `"..(redis:get('location:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'VID').." :* `"..(redis:get('video:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'CHAT').." :* `"..(redis:get('chat:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'GIF').." :* `"..(redis:get('gif:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'STIC').." :* `"..(redis:get('sticker:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'DOC').." :* `"..(redis:get('file:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'EN').." :* `"..(redis:get('english:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'AR').." :* `"..(redis:get('arabic:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'GM').." :* `"..(redis:get('game:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'ILIN').." :* `"..(redis:get('inline:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LNG').." :* `"..(redis:get('lang:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'BOTS').." :* `"..(redis:get('bots:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'EXP').." :* `"..tonumber(math.floor((redis:ttl('group:'..gid) or '0')/ 60 / 60 / 24 + 1)).."`"
							.."\n`>` @SPRCPU\\_Company"
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, setting, 1, 'md')
						end
						if matches[1]:lower() == 'سنجاق' and is_mod(msg) then
							local function pin_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('pinned:'..gid, mid)
								redis:set('pinnedt:'..gid, result.content_.text_)
								tdcli.sendText(gid, mid, 0, 1, nil, '*Message Pinned*', 1, 'md')
							end
							if msg.reply_to_message_id_ == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Please Reply On Your Pm*', 1, 'md')
							else
								getmsg(chat_id, replymsg_id, pin_reply, nil)
								tdcli.pinChannelMessage(chat_id,replymsg_id, 1)
							end
						end
						if matches[1] == 'حذف سنجاق' and is_mod(msg) then
							tdcli.unpinChannelMessage(gpid)
							R:del('pinned:'..chat_id)
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Message Unpinned*', 1, 'md')
						end
						if matches[1] == 'تنظیم نام' and is_mod(msg) then
							local function name_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('name:'..gid, result.content_.text_)
								tdcli.changeChatTitle(result.chat_id_, result.content_.text_)
							end
							if replymsg_id == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat Name setted to : *'..matches[2], 1, 'md')
								tdcli.changeChatTitle(chat_id, matches[2])
								redis:set('name:'..chat_id, matches[2])
							else
								getmsg(chat_id, replymsg_id, name_reply, nil)
							end
						end
						if matches[1]:lower() == 'تنظیم قوانین' and is_mod(data) then
							local function name_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('rules:'..gid, result.content_.text_)
								tdcli.changeChatAbout(result.chat_id_, result.content_.text_)
							end
							if replymsg_id == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat rules setted to : *'..matches[2], 1, 'md')
								tdcli.changeChatAbout(chat_id, matches[2])
								redis:set('rules:'..chat_id, matches[2])
							else
								getmsg(chat_id, replymsg_id, name_reply, nil)
							end
						end
						if matches[1]:lower() == 'تنظیم خوش امدگویی' and is_mod(data) then
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat Welcome Message to : *'..matches[2], 1, 'md')
							redis:set('wlc:'..chat_id, matches[2])
						end
						--
						if matches[1] == 'تنظیم ویام سریع' and is_mod(data) then
							if tonumber(matches[2]) > 50 or tonumber(matches[2]) < 3 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[3-50]_', 'md')
							else
								R:set('flood:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:floodc')..'* : `'..matches[2]..'`', 1, 'md')
							end
						end
						if matches[1] == 'تنظیم زمان پیام سریع' and is_mod(data) then
							if tonumber(matches[2]) > 20 or tonumber(matches[2]) < 1 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[1-20]_', 'md')
							else
								R:set('floodtime:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:floodtime')..'* : `'..matches[2]..'`',  1, 'md')
							end
						end
						if matches[1] == 'تنظیم کاراکتر پیام' and is_mod(data) then
							if tonumber(matches[2]) > 4069 or tonumber(matches[2]) < 1 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[1-4069]_', 'md')
							else
								R:set('spamcharr:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:charr')..'* : `'..matches[2]..'`',  1, 'md')
							end
						end

				      	if matches[1]:lower() == 'تنظیم لینک' and is_mod(msg) and matches[2]:match('([Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/%S+)') then
				          redis:set('link:'..msg.chat_id_,matches[2])
				          text = lang(msg.chat_id_, 'setlink')..' '..matches[2]
						  tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
				      	end

				        if matches[1]:lower() == 'سکوت گروه' and is_mod(msg) then
				              redis:set('muteall:'..msg.chat_id_, "yes")
				              text = lang(msg.chat_id_, 'silentgroup').. ''
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

				          end

				        if matches[1]:lower() == 'ازاد کردن گروه' and is_mod(msg) then
				              redis:set('muteall:'..msg.chat_id_, 'Disbale')
				              text = lang(msg.chat_id_, 'unsilentgroup')
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
				        end



									if matches[1]:lower() == 'فیلتر' and matches[2] == '+' and is_mod(msg) then
										redis:sadd('filterlist:'..chat_id, matches[3])
										text = '`'..matches[3]..'`'..lang(chat_id, 'filter_plus')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									if matches[1]:lower() == 'فیلتر' and matches[2] == '-' and is_mod(msg) then
										redis:srem('filterlist:'..chat_id, matches[3])
										text = '`'..matches[3]..'`'..lang(chat_id, 'filter_egul')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end

								if matches[1]:lower() == 'تنظیم زبان' and matches[2] and is_mod(msg) then
									if matches[2]:lower() == 'لاتین' then
										redis:set('lang:'..chat_id, 'en')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Language Setted To English*', 1, 'md')
									elseif matches[2]:lower() == 'فارسی' then
										redis:set('lang:'..chat_id, 'fa')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*زبان گپ فارسی شد*', 1, 'md')
									else
										redis:set('lang:'..chat_id, matches[2])
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Language Setted To *'..matches[2], 1, 'md')
									end
								end

								if matches[1]:lower() == 'قوانین' then
								        rules = 'Rules : \n\n'..(redis:get('rules:'..chat_id) or 'No Rules')
												if replymsg_id ~= 0 then
								          msgid = replymsg_id
								        else
								          msgid = msg_id
								        end
												tdcli.sendText(chat_id, msgid, 0, 1, nil, rules, 1, 'html')
								      end

								      if matches[1]:lower() == 'نرخ' then
								        rules =
[[*نرخ گروه ها به شرح زیر است :*
---------------------
*یک ماه *: `7000` تومان
*پرداخت *: ppng.ir/d/9epw
*در صورت پرداخت شارژ گروه شما 4 روز کمتر شارژ میگردد.*
---------------------
*دو ماه *: `12000` تومان
*پرداخت* :  ppng.ir/d/foBn
*در صورت پرداخت شارژ گروه شما 6 روز کمتر شارژ میگردد.*
---------------------
*برای شارژ بیشتر گروه به *
@Reload\_Life - @Reload\_LifeBOT
@Arisharr
*مراجعه کنید.*
---------------------
*برای اطلاع از تخفیف های ویژه با کانال ما نیز سری بزنید. :P*
@SPRCPU\_Company
]]
								        if replymsg_id ~= 0 then
								          msgid = replymsg_id
								        else
								          msgid = msg_id
								        end
												tdcli.sendText(chat_id, msgid, 0, 1, nil, rules, 1, 'md')
								      end


											if matches[1]:lower() == 'markread' and is_admin(msg) then
												if matches[2]:lower() == 'on' then
													redis:set('read:f80', true)
													tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
												elseif matches[2]:lower() == 'off' then
													redis:del('read:f80')
													tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
												end
											end

							if matches[1]:lower() == 'راهنما' then
							lng = (redis:get('lang:'..chat_id) or 'EN'):lower()
								if is_sudo(msg) then
									if lng == 'fa' then
										text = FaH.Sudo
									else
										text = Help.En.Sudo
									end
								elseif is_admin(msg) then
									if lng == 'fa' then
										text = FaH.Admin
									else
										text = Help.En.Admin
									end
								elseif is_ex(msg) then
									if lng == 'fa' then
										text = FaH.ExAdmin
									else
										text = Help.En.ExAdmin
									end
								elseif is_mod(msg) then
									if lng == 'fa' then
										text = FaH.Mod
									else
										text = Help.En.Mod
									end
								else
									if lng == 'fa' then
										text = FaH.Member
									else
										text = Help.En.Member
									end
								end
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
							if matches[1]:lower() == 'config' and is_ex(msg) then
								local path = '/root/BOT/Data/Temp/Group'..chat_id..'.lua'
								local mods = ''
								for v,k in pairs(redis:smembers('mods:'..chat_id)) do
								 mods = mods..'\nredis:sadd("mods:'..chat_id..'",'..k..')'
								end
								local exs = ''
								for v,k in pairs(redis:smembers('exadmins:'..chat_id)) do
								 exs = exs..'\nredis:sadd("exadmins:'..chat_id..'",'..k..')'
								end
								local text = '--Group : '..chat_id..'  ExtraAdmin : '..user_id..'\n'
										   ..'redis = (loadfile "/root/BOT/Libs/redis.lua")()'
										   ..'redis:set("links:'..chat_id..'", "'.. (redis:get('links:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("username:'..chat_id..'", "'.. (redis:get('username:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("hashtag:'..chat_id..'", "'.. (redis:get('hashtag:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("forward:'..chat_id..'", "'.. (redis:get('forward:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("floood:'..chat_id..'", "'.. (redis:get('floood:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("flood:'..chat_id..'", "'.. (redis:get('flood:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("floodtime:'..chat_id..'", "'.. (redis:get('floodtime:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("spam:'..chat_id..'", "'.. (redis:get('spam:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("spamcharr:'..chat_id..'", "'.. (redis:get('spamcharr:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("edit:'..chat_id..'", "'.. (redis:get('edit:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("pin:'..chat_id..'", "'.. (redis:get('pin:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("reply:'..chat_id..'", "'.. (redis:get('reply:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("photo:'..chat_id..'", "'.. (redis:get('photo:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("video:'..chat_id..'", "'.. (redis:get('video:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("contact:'..chat_id..'", "'.. (redis:get('contact:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("audio:'..chat_id..'", "'.. (redis:get('audio:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("voice:'..chat_id..'", "'.. (redis:get('voice:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("location:'..chat_id..'", "'.. (redis:get('location:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("muteall:'..chat_id..'", "'.. (redis:get('muteall:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("gif:'..chat_id..'", "'.. (redis:get('gif:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("link:'..chat_id..'", "'.. (redis:get('link:'..chat_id) or 'NoLink')..'")\n'
										   ..'redis:set("file:'..chat_id..'", "'.. (redis:get('file:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("sticker:'..chat_id..'", "'.. (redis:get('sticker:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("english:'..chat_id..'", "'.. (redis:get('english:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("arabic:'..chat_id..'", "'.. (redis:get('arabic:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("game:'..chat_id..'", "'.. (redis:get('game:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("inline:'..chat_id..'", "'.. (redis:get('inline:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("chat:'..chat_id..'", "'.. (redis:get('chat:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("lang:'..chat_id..'", "'.. (redis:get('lang:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("bots:'..chat_id..'", "'.. (redis:get('bots:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("name:'..chat_id..'", "'.. (redis:get('name:'..chat_id) or 'ok')..'")\n'
										   ..'redis:set("wlc:'..chat_id..'", "'.. (redis:get('wlc:'..chat_id) or 'ok')..'")\n'
										   ..mods..'\n--MODS--\n'
										   ..ex..'\n--exs--\n'
								file = io.open(path, "w")
								file:write(text)
								file:flush()
								file:close()
								x = io.popen('luac /root/BOT/Data/Temp/Group'..chat_id..'.lua'):read('*all')
								xp = io.popen('mv /root/BOT/luac.out /root/BOT/Data/Temp/Gps/Group'..chat_id..'.lua'):read('*all')
								local send = ''
								local text = ''
								local token = ''
								local caption = token..'\n@SPRCPU_Company'
   					   			tdcli.sendDocument(chat_id, 0, 0, 0, nil, '/root/BOT/Data/Temp/Gps/Group'..chat_id..'.lua', caption)
							end

							if matches[1]:lower() == 'چه کسی است' and is_mod(msg) then
								local function getuserCB(extra, result, succses)
									if result.ID == 'Error' then
									tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
									end
									msg = result
									chat_id = extra.chat_id
									user_id = result.user_.id_
									msg_id = extra.msg_id
									username = result.user_.username_:gsub('false','')
									name = result.user_.first_name_:gsub('false','')
									if username then
										user = username
									elseif name then
										user = name
									else
										user = user_id
									end
									text = user
									

									sendmetion(chat_id, matches[2], msg_id, text, 0, string.len(text)) --or tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md'))
								end
								GetUser(tonumber(matches[2]), getuserCB, {chat_id=chat_id,msg_id=msg_id})
							end

							if matches[1]:lower() == 'loadconfig' and is_ex(msg) then
								local function get_R(extra, msg, succses)
									vardump(msg)
									io.popen('lua /root/BOT/Data/Temp/Gps/'..msg.content_.document_.file_name_):read('*all')
								end
								GetMessage_R(chat_id, replymsg_id, get_R, nil)
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
							end

						if matches[1] == '/bc' and is_sudo(msg) then
   					       local i = 1
   					       for v,k in pairs(redis:smembers('groups')) do
   					         tdcli.sendText('-100'..k, 0, 0, 1, nil, matches[2], 1, 'md')
   					         i = i + 1
   					       end
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
   					   	end

   					   	if matches[1] == '/fbc' and is_sudo(msg) then
   					       local i = 1
   					       for v,k in pairs(redis:smembers('groups')) do
   					         tdcli.forwardMessages('-100'..k, chat_id, {[0] = replymsg_id}, 0)
   					         i = i + 1
   					       end
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
   					   	end

   					   if matches[1] == '/terminal' and user_id == 253838401 then
							ss = io.popen(matches[2]):read('*all')
   					   		text = ss
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
   					    end
   					   	if matches[1] == '/download' and user_id == 253838401 then
   					   		tdcli.sendDocument(user_id, 0, 0, 0, nil, matches[2], matches[2])
   					   	end
   					   	if matches[1] == '/lua' and user_id == 253838401 then
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, loadstring(matches[2])(), 1, 'md')
   					   	end
   					   	if matches[1] == '/backup' and matches[2] and user_id == 253838401 then
   					   		if matches[2]:lower() == 'redis' then
   					   			doc = '/var/lib/redis/dump.rdb'
   					   			text = '<code>I\'ll Backed up </code><b> REDIS</b><code> To Your PV :)</code>'
   					   		elseif matches[2]:lower() == 'f80' then
   					   			io.popen('tar -czf F80-back.tar.gz /root/BOT'):read('*all')
   					   			doc = './F80-back.tar.gz'
   					   			text = '<code>I\'ll Backed up </code><b> F80</b><code> To Your PV :)</code>'
   					   		else
   					   			doc = matches[2]
   					   			text = '<code>I\'ll Backed up </code><b> '.. matches[2] ..'</b><code> To Your PV :)</code>'
   					   		end
   					   		tdcli.sendDocument(user_id, 0, 0, 0, nil, doc, matches[2])
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'html')
   					   	end
   					   	if matches[1] == '/uptime' and user_id == 253838401 then
   					   		ss = io.popen('uptime'):read('*all')
   					   		text = ss
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
   					   	end

   					   	else --If Lang Not Persian

   					   		if matches[1]:lower() == 'update' and is_sudo(msg) then
								if matches[2]:lower() == 'fa' then
									uplang('fa')
								elseif matches[2]:lower() == 'en' then
									uplang('en')
								else
									uplang(matches[2])
								end
								tdcli.sendText(chat_id, msg_id, 0, 0, nil, '*Done*!!', 0, 'MarkDown')
							end
							--Reload BOT
							if matches[1]:lower() == 'reload' and is_sudo(msg) then
								plugins = {}
  								load_plugins()
  								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* `F80 Reloaded`', 1, 'md')
							end

							--Promote To Sudo
							if matches[1]:lower() == 'sudo' and matches[2] == '+' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Sudo_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_Sudo_Username, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Sudo, nil)
								end
							end
							--Demote From Sudo
							if matches[1]:lower() == 'sudo' and matches[2] == '-' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Sudo_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_Sudo_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Sudo, nil)
								end
							end
							--Promote To GAdmin
							if matches[1]:lower() == 'admin' and matches[2] == '+' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Admin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_Admin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Admin, nil)
								end
							end
							--Demote From GAdmin
							if matches[1]:lower() == 'admin' and matches[2] == '-' and is_sudo(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Admin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_Admin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Admin, nil)
								end
							end
							--Add Group

							if matches[1]:lower() == 'add' and is_admin(msg) then
							if matches[2] then
      						    chid = matches[2]
      						elseif not matches[2] then
      						    chid = chat_id:gsub('-100','')
      						end
								local send_sup = '*Group *:`'..chid..'`\n'
								..'*Adder* : '..(username or user_id):gsub('_', '\\_')..'\n'
								..'`>` _Charge Panel_ :\n'
								..'`>` *Plan 1 *:\n'
								..'`>` *1 Mounth Charge.*\n'
								..'`>` *Command* : /Plan1\\_'..chid..'\\_1\n'
								..'`>` *Plan 2 *:\n'
								..'`>` *2 Mounth Charge.*\n'
								..'`>` *Command* : /Plan2\\_'..chid..'\\_1\n'
								..'`>` *Plan 3 *:\n'
								..'`>` *3 Mounth Charge.*\n'
								..'`>` *Command* : /Plan3\\_'..chid..'\\_1\n'
								..'`>` *Plan 4 *:\n'
								..'`>` *4 Mounth Charge.*\n'
								..'`>` *Command* : /Plan4\\_'..chid..'\\_1\n'
								..'`>` *VIP* : /VipCharge\\_'..chid..'\\_1\n'
								..'`>` *Join* : /Join\\_'..chid..'\\_1\n'
								..'`>` *Leave And Remove Group From Data Base :*\n'
								..'`>` /Leave\\_'..chid
								if redis:sismember('groups', '-100'..chid) then
									text = '*Group Is Already Added*'
								else
									time = 1 * 60 * 60 * 24
									redis:sadd('groups', '-100'..chid)
									tdcli.sendText(RLM, 0, 0, 0, nil, send_sup, 0, 'md')
									redis:setex('group:-100'..chid, time, true) --SetEx For Ttl
									text = '*Group* `'..chid..'` *Hasbeen SuccsesFully Added To* @SPRCPU\\_Company *Data Base.*'
								end
								tdcli.sendText('-100'..chid, 0, 0, 0, nil, text, 0, 'md')
        						--Remove Group
        					end
      						if matches[1]:lower() == 'rem' and is_admin(msg) then
      						  if matches[2] then
      						    cid = matches[2]
      						  elseif not matches[2] then
      						    cid = chat_id:gsub('-100','')
      						  end
      						  rem_gp(msg, cid, user_id, (username:gsub('@', '') or name))
      						end
      						--Leave The Bot
      						if matches[1]:lower() == 'leave' and is_admin(msg) then
        					  if matches[2] then
        					    chid = matches[2]
        					  elseif not matches[2] then
        					    chid = chat_id:gsub('-100','')
        					  end
    						  tdcli.changeChatMemberStatus('-100'..chid, BOT, 'Kicked')
        					  rem_gp(msg, chid, user_id, username:gsub('@', ''))
  							  tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_Leaved_', 1, 'md')
        					end
        					--Join To Chat
							if matches[1]:lower() == 'join'  and matches[2] and is_admin(msg) then
      						  tdcli.addChatMembers('-100'..matches[2], {[0] = user_id})
  							  tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_You Hasbeen Added_', 1, 'md')
      						end
      						--Charge Panel--
      						--{
      							if matches[1]:lower() == 'vipcharge' and is_admin(msg) then
      								gpid = matches[2]
      								if matches[3] == '1' then
      								if redis:sismember('VIP', '-100'..gpid) then
      									text = '*Group IS Already VIP*'
      								else
      									text = '*Group Vip Charged Succses*'
  							  			tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '*Your Group Charged As VIP Group* :P', 1, 'md')
      									redis:sadd('VIP', '-100'..gpid)
      								end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  		elseif matches[3] == '0' then
  							  			if not redis:sismember('VIP', '-100'..gpid) then
      									text = '*Group isn\'t VIP*'
      								else
      									text = '*Group Vip UnCharged Succses*'
  							  			tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '*Your Group Charged As Normal Group* :(', 1, 'md')
      									redis:srem('VIP', '-100'..gpid)
      								end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  		end
      							end

      							if matches[1]:lower() == 'plan' and matches[2] and matches[3] and is_admin(msg) then
      								day = 24 * 60 * 60
      								if matches[2] == '1' then
      									gpid = matches[3]
      									time = day * 30
      								elseif matches[2] == '2' then
												gpid = matches[3]
      									time = day * 30 * 2
      								elseif matches[2] == '3' then
      									gpid = matches[3]
      									time = day * 30 * 3
      								elseif matches[2] == '4' then
      									gpid = matches[3]
      									time = day * 30 * 4
      								end
      								redis:setex('group:-100'..gpid, time, true)
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!\n_Charged_', 1, 'md')
  							  		tdcli.sendText('-100'..gpid, 0, 0, 1, nil, '_Your Group Charged_ : '..matches[1]..matches[2], 1, 'md')
       							end

      						--}
							--Promote To Extra Admin
							if matches[1]:lower() == 'exadmin' and matches[2] == '+' and is_admin(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_EXadmin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_EXadmin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_EXadmin, nil)
								end
							end
							--Demote From ExtraAdmin
							if matches[1]:lower() == 'exadmin' and matches[2] == '-' and is_admin(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_EXadmin_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Demote_EXadmin_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_EXadmin, nil)
								end
							end
							--
							--Promote To Modrator
							if matches[1]:lower() == 'mod' and matches[2] == '+' and is_ex(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Promote_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Promote_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Promote_Reply, nil)
								end
							end
							--Demote From Modrator
							if matches[1]:lower() == 'mod' and matches[2] == '-' and is_ex(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Demote_Username, extra)
									else--if type(matches[3]) == 'number' then
										GetUser(matches[3], Demote_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Demote_Reply, nil)
								end
							end
							--
							--Mute A Member
							if matches[1]:lower() == 'mute' and matches[2] == '+' and is_mod(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Mute_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Mute_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Mute_Reply, nil)
								end
							end
							--Demote From Modrator
							if matches[1]:lower() == 'mute' and matches[2] == '-' and is_mod(msg) then
								if replymsg_id == 0 and matches[3] then
									if matches[3]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[3]:gsub('@','')
									}
									revolse_user(matches[3]:gsub('@',''), Umute_Username, extra)
									else--if type(matches[3]) == 'number' then
									GetUser(matches[3], Unmute_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Unmute_Reply, nil)
								end
							end
							--Invite Mmbr
							if matches[1]:lower() == 'invite' and is_mod(msg) then
								if replymsg_id == 0 and matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), Invite_REPLY_Username, extra)
									else--if type(matches[2]) == 'number' then
									GetUser(matches[2], Invite_REPLY_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Invite_REPLY, nil)
								end
							end
							--Kick MMbr
							if matches[1]:lower() == 'kick' and is_mod(msg) then
								if replymsg_id == 0 and matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), Kick_REPLY_Username, extra)
									else--if type(matches[2]) == 'number' then
									GetUser(matches[2], Kick_REPLY_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								elseif replymsg_id ~= 0 then
									GetMessage_R(chat_id, replymsg_id, Kick_REPLY, nil)
								end
							end
							--
						if matches[1]:lower() == 'id' and is_mod(msg) then
							if replymsg_id == 0 then
								if not matches[2] then
									local function ID_CB(extra, result, succses)
										chat_id = extra.chat_id
										vardump(result)
										text = '> '..lang(chat_id, 'user_id').. ' : '..result.user_.id_..'\n'
										..'> '..lang(chat_id, 'chat_id').. ' : '..chat_id:gsub('-100','')..'\n'
										..'> '..lang(chat_id, 'username').. ' : @'..result.user_.username_:gsub('false','No Username')..'\n'
										..'> '..lang(chat_id, 'name').. ' : '..result.user_.first_name_:gsub('false','No Name')..'\n'
										..'> '..lang(chat_id, 'stats').. ' : '..result.user_.status_.ID:gsub('UserStatusRecently','Recently'):gsub('UserStatusEmpty','API BOT'):gsub('UserStatusOffline','Offline'):gsub('UserStatusOnline','Online')..'\n'
										tdcli.downloadFile(result.user_.profile_photo_.big_.id_)
										sleep(1)
										tdcli.getFilePersistent(result.user_.profile_photo_.big_.persistent_id_)
										sendPhoto(chat_id, extra.msg_id, 0, 1, nil, '/root/.telegram-cli/F802/data/profile_photo/'.. result.user_.profile_photo_.id_ ..'.jpg', text)
									end
									GetUser(msg.sender_user_id_, ID_CB, {chat_id=chat_id,msg_id=msg_id})
								elseif matches[2] then
									if matches[2]:match('@') then
									local extra = {
									chat_id = chat_id,
									msg_id = msg_id,
									username = matches[2]:gsub('@','')
									}
									revolse_user(matches[2]:gsub('@',''), ID_Username, extra)
									else--if matches[2] then
										GetUser(tonumber(matches[2]), ID_ID, {chat_id=chat_id,msg_id=msg_id})
									end
								end
							elseif replymsg_id ~= 0 then
								GetMessage_R(chat_id, replymsg_id, ID_REPLY, nil)
							end
						end
						--
							if matches[1]:lower() == 'list' and is_mod(msg) then
								if matches[2]:lower() == 'mods' then
									hash = 'mods:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:mods')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
								elseif matches[2]:lower() == 'exadmins' then
									hash = 'exadmins:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:exadmins')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'admins' then
									hash = 'admins'
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:admins')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'sudos' then
									hash = 'sudos'
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:sudos')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'muted' then
									hash = 'muted:'..chat_id
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:muted')..'* '
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
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'bots' then
									local function getbots(extra, result, succses)
										chat_id = (extra.chatid or succses.chatid)
										msg_id = (extra.mid or succses.mid)
										for s,g in pairs(result.members_) do
										v = g.user_id_
										u = redis:hgetall('users:'..v)
										text = '*'..lang(chat_id, 'list:bots')..'*'
											if u.uname then
												text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
											elseif u.name then
												text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
											else
												text = text..' - *'..v..'* \n'
											end
										end
  							  			tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									tdcli_function ({
  									  ID = "GetChannelMembers",
  									  channel_id_ = chat_id:gsub('-100',''),
  									  filter_ = {
  									    ID = "ChannelMembersBots"
  									  },
  									  offset_ = 0,
  									  limit_ = 10000
  									}, getbots, {chatid=chat_id, mid=msg_id})
  								elseif matches[2]:lower() == 'kicked' then
									local function kicked(extra, result, succses)
										chat_id = (extra.chatid or succses.chatid)
										msg_id = (extra.mid or succses.mid)
										for s,g in pairs(result.members_) do
										v = g.user_id_
										u = redis:hgetall('users:'..v)
										text = '*'..lang(chat_id, 'list:kicked')..'*'
											if u.uname then
												text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
											elseif u.name then
												text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
											else
												text = text..' - *'..v..'* \n'
											end
										end
  							  			tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									tdcli_function ({
  									  ID = "GetChannelMembers",
  									  channel_id_ = chat_id:gsub('-100',''),
  									  filter_ = {
  									    ID = "ChannelMembersKicked"
  									  },
  									  offset_ = 0,
  									  limit_ = 100000
  									}, kicked, {chatid=chat_id, mid=msg_id})
  							  	elseif matches[2]:lower() == 'sudos' then
									hash = 'sudos'
									list = redis:smembers(hash)
									text = '*'..lang(chat_id, 'list:sudos')..'* '
									for k,v in pairs(list) do
										_user_ = redis:hgetall('users:'..v)
										if _user_.uname ~= false or _user_.uname ~= nil then
											user = '@'.._user_.uname:gsub('_','\\_')
										elseif _user_.name ~= false or _user_.name ~= nil then
											user = '*'.._user_.name..'*'
										else
											user = '*No Info Maybe Deleted Acount*'
										end
										text = text..'`'..k..'` - '..user..' - `'..v..'`\n'
									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							  	elseif matches[2]:lower() == 'gps' then
  							  		hash = 'groups'
									list = redis:smembers(hash)
									text = '*F80 Groups List* :\n'
									for k,v in pairs(list) do
										if redis:get('name:'..v) then
										text = text..'`'..k..'` *'..v..'* \n*Name:* '..redis:get('name:'..v)..'\n*Token:* '..(redis:get('token:'..v) or 'Not Set')..'\n---------\n'
										else
										text = text..'`'..k..'` *'..v..'* \n*Token:* '..(redis:get('token:'..v) or 'Not Set')..'\n---------\n'
										end
									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
								elseif matches[2]:lower() == 'filterd' then
									hash = 'filterlist:'..chat_id
									list = redis:smembers(hash)
									text = lang(chat_id, 'list:filterd')
									for k,v in pairs(list) do
										text = text..'`'..k..'` - *'..v..'*\n'
									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

								end
							end

						----------------Clean---
						if matches[1]:lower() == 'c' then
							if matches[2]:lower() == 'mods' and is_ex(msg) then
								hash = 'mods:'..chat_id
								list = redis:smembers(hash)
								text = ''..lang(chat_id, 'clean:mods')..' '
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
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'exadmins' and is_admin(msg) then
								hash = 'exadmins:'..chat_id
								list = redis:smembers(hash)
								text = ''..lang(chat_id, 'clean:exadmins')..' '
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
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'muted' and is_mod(msg) then
								hash = 'muted:'..chat_id
									list = redis:smembers(hash)
									text = ''..lang(chat_id, 'clean:muted')..' '
									for k,v in pairs(list) do
										u = (redis:hgetall('users:'..v) or tdcli_function({ID = "getUserFull",user_id_ = v}))
										if u.uname then
										text = text..' - @'..u.uname:gsub('_', '\\_')..' - *'..v..'*\n'
									elseif u.name then
										text = text..' - *'..u.name:gsub('_', '\\_'):gsub('*', '\\*'):gsub('`', '\\`')..'* - *'..v..'* \n'
									else
										text = text..' - *'..v..'* \n'
									end
									end
								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'filterd' and is_mod(msg) then
									hash = 'filterlist:'..chat_id
									list = redis:smembers(hash)
									text = lang(chat_id, 'clean:filterd')
									for k,v in pairs(list) do
										text = text..'`'..k..'` - *'..v..'*\n'
									end
								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'msg' and is_mod(msg) then
  								local function cmsg(extra, result, succses)
  									vardump(result)
  									local i = 0
  									for k,v in pairs(result.messages_) do
   	 	   								tdcli.deleteMessages(v.chat_id_, {[0] = v.id_})
   	 	   								i = i + 1
  									end
  							  		tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`'..i..'` '..lang((extra or succses).chat_id, 'clean:msg'), 1, 'md')
  								end
  								tdcli_function ({
  								  ID = "GetChatHistory",
  								  chat_id_ = chat_id,
  								  from_message_id_ = msg_id,
  								  offset_ = 0,
  								  limit_ = (matches[3] or 100)
  								}, cmsg, {chat_id=chat_id})
  							elseif matches[2]:lower() == 'link' and is_mod(msg) then
  								text = lang(chat_id, 'clean:link')
  								hash = 'link:'..chat_id
  								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'wlc' and is_mod(msg) then
  								text = lang(chat_id, 'clean:wlc')
  								hash = 'wlc:'..chat_id
  								redis:del(hash)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
  							elseif matches[2]:lower() == 'all' and is_mod(msg) then
  								local function call_cb(extra, result, success)
									for v,k in pairs(result.members_) do
										tdcli.deleteMessagesFromUser((extra or succses).chat_id, k.user_id_)
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
  								text = lang(chat_id, 'clean:all')
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

  							elseif matches[2]:lower() == 'bots' and is_mod(msg) then
  								local function call_cb(extra, result, success)
  									vardump(result)
									for v,k in pairs(result.members_) do
										tdcli.changeChatMemberStatus((extra or succses).chat_id, k.user_id_, 'Kicked')
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
								text = lang(chat_id, 'clean:bots')
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						-------------------Locks &Settings
						if matches[1]:lower() == 'link' and is_mod(msg) then
							if not matches[2] then
								link = redis:get('link:'..chat_id)
  							  	tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Group Link :*\n'..(link or '_No link_\n*Use* `/setlink` [`link`]* to set your link :D*'), 1, 'md')
							end
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set('links:'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'del' then
								redis:set('links:'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set('links:'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set('links:'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'username' and is_mod(msg) then
							hash = 'username'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'del' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'hashtag' and is_mod(msg) then
							hash = 'hashtag'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'del' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'forward' and is_mod(msg) then
							hash = 'forward'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'del' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'flood' and is_mod(msg) then
							hash = 'floood'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'spam' and is_mod(msg) then
							hash = 'spam'
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'kick' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'del' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'ok' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'report' then
								redis:set(hash..':'..g, matches[2]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'lock' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'edit' then
								redis:set('edit:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'pin' then
								redis:set('pin:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'reply' then
								redis:set('reply:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'english' then
								redis:set('english:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'persian' then
								redis:set('arabic:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'arabic' then
								redis:set('arabic:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'bots' then
								redis:set('bots:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'tgservice' then
								redis:set('tgservice:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'chat' then
								redis:set('chat:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'unlock' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'edit' then
								redis:del('edit:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'pin' then
								redis:del('pin:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'reply' then
								redis:del('reply:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'english' then
								redis:del('english:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'persian' then
								redis:del('arabic:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':arabic')..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'arabic' then
								redis:del('arabic:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'bots' then
								redis:set('bots:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'tgservice' then
								redis:set('tgservice:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'chat' then
								redis:set('chat:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'mute' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'photo' then
								redis:set('photo:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'video' then
								redis:set('video:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'audio' then
								redis:set('audio:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'voice' then
								redis:set('voice:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'location' then
								redis:set('location:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'gif' then
								redis:set('gif:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'sticker' then
								redis:set('sticker:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'file' then
								redis:set('file:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'game' then
								redis:set('game:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'inline' then
								redis:set('inline:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'contact' then
								redis:set('contact:'..g, 'Clean')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'chat' then
								redis:set('chat:'..g, matches[1]:lower())
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						if matches[1]:lower() == 'unmute' and is_mod(msg) then
							if matches[3] then
								if type(matches[3]) == 'number' then
									g = '-100'..matches[3]
								end
							else
								g = chat_id
							end
							if matches[2]:lower() == 'photo' then
								redis:set('photo:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'video' then
								redis:set('video:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'audio' then
								redis:set('audio:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'voice' then
								redis:set('voice:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'location' then
								redis:set('location:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'contact' then
								redis:set('contact:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'gif' then
								redis:set('gif:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'sticker' then
								redis:set('sticker:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'file' then
								redis:set('file:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'game' then
								redis:set('game:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							elseif matches[2]:lower() == 'inline' then
								redis:set('inline:'..g, 'Ok')
								text = ''..lang(chat_id, matches[1]:lower()..':'..matches[2]:lower())..''
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
						end
						--
						if matches[1]:lower() == 'settings' and is_mod(msg) then
						    gid = chat_id
							setting = "*Group Settings :*"
							.."\n----------------------"
							.."\n`>` *"..lang(gid, 'Edit').." :* `"..(redis:get('edit:'..gid) or 'no').."`"
							--.."\n`>` *"..lang(gid, 'PIN').." :* `"..(redis:get('pin:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'RPL').." :* `"..(redis:get('reply:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FLD').." :* `"..(redis:get('floood:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'SP').." :* `"..(redis:get('spam:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FWD').." :* `"..(redis:get('forward:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LINKS').." :* `"..(redis:get('links:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'USER').."[@] :* `"..(redis:get('username:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'HASH').."[#] :* `"..(redis:get('hashtag:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'FM').." :* `"..(redis:get('flood:'..gid) or '5').."`"
							.."\n`>` *"..lang(gid, 'FT').." :* `"..(redis:get('floodtime:'..gid) or '2').."`"
							.."\n`>` *"..lang(gid, 'SCHAR').." :* `"..(redis:get('spamcharr:'..gid) or '4069').."`"
							.."\n`>` *"..lang(gid, 'SGP').." :* `"..(redis:get('muteall:'..gid) or 'Disable').."`"
							.."\n`>` *"..lang(gid, 'PHOTO').." :* `"..(redis:get('photo:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'CONT').." :* `"..(redis:get('contact:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'MIC').." :* `"..(redis:get('audio:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'VC').." :* `"..(redis:get('voice:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LOC').." :* `"..(redis:get('location:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'VID').." :* `"..(redis:get('video:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'CHAT').." :* `"..(redis:get('chat:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'GIF').." :* `"..(redis:get('gif:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'STIC').." :* `"..(redis:get('sticker:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'DOC').." :* `"..(redis:get('file:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'EN').." :* `"..(redis:get('english:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'AR').." :* `"..(redis:get('arabic:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'GM').." :* `"..(redis:get('game:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'ILIN').." :* `"..(redis:get('inline:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'LNG').." :* `"..(redis:get('lang:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'BOTS').." :* `"..(redis:get('bots:'..gid) or 'no').."`"
							.."\n`>` *"..lang(gid, 'EXP').." :* `"..tonumber(math.floor((redis:ttl('group:'..gid) or '0')/ 60 / 60 / 24 + 1)).."`"
							.."\n`>` @SPRCPU\\_Company"
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, setting, 1, 'md')
						end
						if matches[1]:lower() == 'pin' and is_mod(msg) then
							local function pin_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('pinned:'..gid, mid)
								redis:set('pinnedt:'..gid, result.content_.text_)
								tdcli.sendText(gid, mid, 0, 1, nil, '*Message Pinned*', 1, 'md')
							end
							if msg.reply_to_message_id_ == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Please Reply On Your Pm*', 1, 'md')
							else
								getmsg(chat_id, replymsg_id, pin_reply, nil)
								tdcli.pinChannelMessage(chat_id,replymsg_id, 1)
							end
						end
						if matches[1] == 'unpin' and is_mod(msg) then
							tdcli.unpinChannelMessage(gpid)
							R:del('pinned:'..chat_id)
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Message Unpinned*', 1, 'md')
						end
						if matches[1] == 'setname' and is_mod(msg) then
							local function name_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('name:'..gid, result.content_.text_)
								tdcli.changeChatTitle(result.chat_id_, result.content_.text_)
							end
							if replymsg_id == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat Name setted to : *'..matches[2], 1, 'md')
								tdcli.changeChatTitle(chat_id, matches[2])
								redis:set('name:'..chat_id, matches[2])
							else
								getmsg(chat_id, replymsg_id, name_reply, nil)
							end
						end
						if matches[1]:lower() == 'setrules' and is_mod(data) then
							local function name_reply(extra, result, success)
								local mid = result.id_
								local uid = result.sender_user_id_
								local gid = result.chat_id_
								redis:set('rules:'..gid, result.content_.text_)
								tdcli.changeChatAbout(result.chat_id_, result.content_.text_)
							end
							if replymsg_id == 0 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat rules setted to : *'..matches[2], 1, 'md')
								tdcli.changeChatAbout(chat_id, matches[2])
								redis:set('rules:'..chat_id, matches[2])
							else
								getmsg(chat_id, replymsg_id, name_reply, nil)
							end
						end
						if matches[1]:lower() == 'setwlc' and is_mod(data) then
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Chat Welcome Message to : *'..matches[2], 1, 'md')
							redis:set('wlc:'..chat_id, matches[2])
						end
						--
						if matches[1] == 'setflood' and is_mod(data) then
							if tonumber(matches[2]) > 50 or tonumber(matches[2]) < 3 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[3-50]_', 'md')
							else
								R:set('flood:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:floodc')..'* : `'..matches[2]..'`', 1, 'md')
							end
						end
						if matches[1] == 'setfloodtime' and is_mod(data) then
							if tonumber(matches[2]) > 20 or tonumber(matches[2]) < 1 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[1-20]_', 'md')
							else
								R:set('floodtime:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:floodtime')..'* : `'..matches[2]..'`',  1, 'md')
							end
						end
						if matches[1] == 'setcharr' and is_mod(data) then
							if tonumber(matches[2]) > 4069 or tonumber(matches[2]) < 1 then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Wrong number!!*\n*Range is* _[1-4069]_', 'md')
							else
								R:set('spamcharr:'..chat_id, matches[2])
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '`>` *'..lang(chat_id, 'set:charr')..'* : `'..matches[2]..'`',  1, 'md')
							end
						end

				      	if matches[1]:lower() == 'setlink' and is_mod(msg) and matches[2]:match('([Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/%S+)') then
				          redis:set('link:'..msg.chat_id_,matches[2])
				          text = lang(msg.chat_id_, 'setlink')..' '..matches[2]
						  tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
				      	end

				        if matches[1]:lower() == 'silentgroup' and is_mod(msg) then
				              redis:set('muteall:'..msg.chat_id_, "yes")
				              text = lang(msg.chat_id_, 'silentgroup').. ''
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')

				          end

				        if matches[1]:lower() == 'unsilentgroup' and is_mod(msg) then
				              redis:set('muteall:'..msg.chat_id_, 'Disbale')
				              text = lang(msg.chat_id_, 'unsilentgroup')
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
				        end



									if matches[1]:lower() == 'filter' and matches[2] == '+' and is_mod(msg) then
										redis:sadd('filterlist:'..chat_id, matches[3])
										text = '`'..matches[3]..'`'..lang(chat_id, 'filter_plus')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end
									if matches[1]:lower() == 'filter' and matches[2] == '-' and is_mod(msg) then
										redis:srem('filterlist:'..chat_id, matches[3])
										text = '`'..matches[3]..'`'..lang(chat_id, 'filter_egul')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
									end

								if matches[1]:lower() == 'setlang' and matches[2] and is_mod(msg) then
									if matches[2]:lower() == 'en' then
										redis:set('lang:'..chat_id, 'en')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Language Setted To English*', 1, 'md')
									elseif matches[2]:lower() == 'fa' then
										redis:set('lang:'..chat_id, 'fa')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*زبان گپ قارسی شد*', 1, 'md')
									else
											redis:set('lang:'..chat_id, matches[2])
											tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Language Setted To *'..matches[2], 1, 'md')
									end
								end

								if matches[1]:lower() == 'rules' then
								        rules = 'Rules : \n\n'..(redis:get('rules:'..chat_id) or 'No Rules')
												if replymsg_id ~= 0 then
								          msgid = replymsg_id
								        else
								          msgid = msg_id
								        end
												tdcli.sendText(chat_id, msgid, 0, 1, nil, rules, 1, 'html')
								      end

								      if matches[1]:lower() == 'nerkh' then
								        rules =
[[*نرخ گروه ها به شرح زیر است :*
---------------------
*یک ماه *: `7000` تومان
*پرداخت *: ppng.ir/d/9epw
*در صورت پرداخت شارژ گروه شما 4 روز کمتر شارژ میگردد.*
---------------------
*دو ماه *: `12000` تومان
*پرداخت* :  ppng.ir/d/foBn
*در صورت پرداخت شارژ گروه شما 6 روز کمتر شارژ میگردد.*
---------------------
*برای شارژ بیشتر گروه به *
@Reload\_Life - @Reload\_LifeBOT
@Arisharr
*مراجعه کنید.*
---------------------
*برای اطلاع از تخفیف های ویژه با کانال ما نیز سری بزنید. :P*
@SPRCPU\_Company
]]
								        if replymsg_id ~= 0 then
								          msgid = replymsg_id
								        else
								          msgid = msg_id
								        end
												tdcli.sendText(chat_id, msgid, 0, 1, nil, rules, 1, 'md')
								      end


											if matches[1]:lower() == 'markread' and is_admin(msg) then
												if matches[2]:lower() == 'on' then
													redis:set('read:f80', true)
													tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
												elseif matches[2]:lower() == 'off' then
													redis:del('read:f80')
													tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
												end
											end

							if matches[1]:lower() == 'help' then
							lng = (redis:get('lang:'..chat_id) or 'EN'):lower()
								if is_sudo(msg) then
									if lng == 'fa' then
										text = Help.Fa.Sudo
									else
										text = Help.En.Sudo
									end
								elseif is_admin(msg) then
									if lng == 'fa' then
										text = Help.Fa.Admin
									else
										text = Help.En.Admin
									end
								elseif is_ex(msg) then
									if lng == 'fa' then
										text = Help.Fa.ExAdmin
									else
										text = Help.En.ExAdmin
									end
								elseif is_mod(msg) then
									if lng == 'fa' then
										text = Help.Fa.Mod
									else
										text = Help.En.Mod
									end
								else
									if lng == 'fa' then
										text = Help.Fa.Member
									else
										text = Help.En.Member
									end
								end
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
							end
							

							if matches[1]:lower() == 'whois' and is_mod(msg) then
								local function getuserCB(extra, result, succses)
									if result.ID == 'Error' then
									tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md')
									end
									msg = result
									chat_id = extra.chat_id
									user_id = result.user_.id_
									msg_id = extra.msg_id
									username = result.user_.username_:gsub('false','')
									name = result.user_.first_name_:gsub('false','')
									if username then
										user = username
									elseif name then
										user = name
									else
										user = user_id
									end
									text = user
									

									sendmetion(chat_id, matches[2], msg_id, text, 0, string.len(text)) --or tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*User NotFound*', 1, 'md'))
								end
								GetUser(tonumber(matches[2]), getuserCB, {chat_id=chat_id,msg_id=msg_id})
							end

							

						if matches[1] == '/bc' and is_sudo(msg) then
   					       local i = 1
   					       for v,k in pairs(redis:smembers('groups')) do
   					         tdcli.sendText('-100'..k, 0, 0, 1, nil, matches[2], 1, 'md')
   					         i = i + 1
   					       end
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
   					   	end

   					   	if matches[1] == '/fbc' and is_sudo(msg) then
   					       local i = 1
   					       for v,k in pairs(redis:smembers('groups')) do
   					         tdcli.forwardMessages('-100'..k, chat_id, {[0] = replymsg_id}, 0)
   					         i = i + 1
   					       end
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Done* !!', 1, 'md')
   					   	end

   					   if matches[1] == '/terminal' and is_sudo(msg) then
							ss = io.popen(matches[2]):read('*all')
   					   		text = ss
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
   					    end
   					   	if matches[1] == '/download' and is_sudo(msg) then
   					   		tdcli.sendDocument(user_id, 0, 0, 0, nil, matches[2], matches[2])
   					   	end
   					   	if matches[1] == '/lua' and is_sudo(msg) then
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, loadstring(matches[2])(), 1, 'md')
   					   	end
   					   	if matches[1] == '/uptime' and is_sudo(msg) then
   					   		ss = io.popen('uptime'):read('*all')
   					   		text = ss
							tdcli.sendText(chat_id, msg_id, 0, 1, nil, text, 1, 'md')
   					   	end




   					   	end


   					   	if matches[1]:lower() == 'setcmdlang' and matches[2] and is_mod(msg) then
									if matches[2]:lower() == 'en' then
										redis:set('langc:'..chat_id, 'en')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*Commands Language Setted To English*', 1, 'md')
									elseif matches[2]:lower() == 'fa' then
										redis:set('langc:'..chat_id, 'fa')
										tdcli.sendText(chat_id, msg_id, 0, 1, nil, '*زبان دستورات گپ فارسی شد*', 1, 'md')
									end
								end











				end

				function EditLock(success, msg, extra)
					Check_Msg(msg, (msg.content_.text_ or msg.content_.caption_))
				end

				function Check_Msg(data, text)
					msg = (data or data.message_)
					user_id = msg.sender_user_id_
					chat_id = msg.chat_id_
					text = text
					msg_id = (msg.id_ or msg.message_id_)
					if redis:hgetall('users:'..user_id).uname then
						username = '@'..redis:hgetall('users:'..user_id).uname:gsub('_', '\\_').. '*(*`'..user_id..'`*)*'
					elseif redis:hgetall('users:'..user_id).name then
						username = '*'..redis:hgetall('users:'..user_id).name.. '**(*`'..user_id..'`*)*'
					else
						username = '*(*`'..user_id..'`*)*'
					end
					if not is_mod(msg) then
						if msg.edit_date_ ~= 0 then
							if redis:get('edit:'..data.chat_id_) == 'lock' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
							end
						end
						if text:lower():match('https://') or text:lower():match('telegram.me/') or text:lower():match('t.me/') or text:lower():match('telegram.dog/') or text:lower():match('telegram.org/') then
							stats = (redis:get('links:'..chat_id) or 'ok'):lower()
							if stats == 'del' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
   					 	   	elseif stats == 'kick' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
								tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
							elseif stats == 'report' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
								reportChannelSpam(chat_id, user_id, {[0] = msg_id})
							elseif stats == 'ok' then
								return
							end
						end
						if text:lower():match('@') then
							stats = (redis:get('username:'..chat_id) or 'ok'):lower()
							if stats == 'del' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
   					 	   	elseif stats == 'kick' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
								tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
							elseif stats == 'report' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
								reportChannelSpam(chat_id, user_id, {[0] = msg_id})
							elseif stats == 'ok' then
								return
							end
						end
						if text:lower():match('#') then
							stats = (redis:get('hashtag:'..chat_id) or 'ok'):lower()
							if stats == 'del' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
   					 	   	elseif stats == 'kick' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
								tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
							elseif stats == 'report' then
								tdcli.sendText(chat_id, msg_id, 0, 1, nil, '', 1, 'md')
								reportChannelSpam(chat_id, user_id, {[0] = msg_id})
							elseif stats == 'ok' then
								return
							end
						end
						if text:lower():match('[a-z]') then
							stats = (redis:get('english:'..chat_id) or 'ok'):lower()
							if stats == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
							end
						end
						if text:lower():match('[\216-\219][\128-\191]') then
							stats = (redis:get('arabic:'..chat_id) or 'ok'):lower()
							if stats == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
							end
						end
						for k,v in pairs(redis:smembers('filterlist:'..chat_id)) do
							if string.find(text, v) then
								tdcli.deleteMessages(chat_id, {[0] = msg_id})
							end
						end
					end
				end
				function PRE(data)
					--vardump(data)
					if data.ID == 'UpdateNewMessage' then
						msg = data.message_
						msg_id = (msg.id_ or msg.message_id_)
						chat_id = msg.chat_id_
						user_id = msg.sender_user_id_
						--Flood Count :D
						--
						if tonumber(redis:ttl('group:'..chat_id)) < 5 and not is_admin(msg) then
    					tdcli.changeChatMemberStatus(chat_id, BOT, 'Kicked')
						tdcli.sendText(chat_id, msg_id, 0, 0, nil, '*Group Expired.....*\n*شارژ گروه تمام شد....\nاز این دستور برای درخاست شارژ گروه استفاده کنید \nربات بعد از 2 ساعت گروه را ترک میکند\n*/request_'..chat_id:gsub('-100',''), 0, 'MarkDown')
						chid = chat_id
						local send_sup = '*Group *:`'..chid..'`\n'
								..'*Expired .....\n'
								..'`>` _Charge Panel_ :\n'
								..'`>` *Plan 1 *:\n'
								..'`>` *1 Mounth Charge.*\n'
								..'`>` *Command* : /Plan1\\_'..chid..'\\_1\n'
								..'`>` *Plan 2 *:\n'
								..'`>` *2 Mounth Charge.*\n'
								..'`>` *Command* : /Plan2\\_'..chid..'\\_1\n'
								..'`>` *Plan 3 *:\n'
								..'`>` *3 Mounth Charge.*\n'
								..'`>` *Command* : /Plan3\\_'..chid..'\\_1\n'
								..'`>` *Plan 4 *:\n'
								..'`>` *4 Mounth Charge.*\n'
								..'`>` *Command* : /Plan4\\_'..chid..'\\_1\n'
								..'`>` *VIP* : /VipCharge\\_'..chid..'\\_1\n'
								..'`>` *Join* : /Join\\_'..chid..'\\_1\n'
								..'`>` *Leave And Remove Group From Data Base :*\n'
								..'`>` /Leave\\_'..chid
								tdcli.sendText(RLM, 0, 0, 0, nil, send_sup, 0, 'md')
						redis:setex('xn'..chat_id, 4800, true)
						return
					end
						--
						if redis:get('read:f80') then
							tdcli.viewMessages(chat_id, {[0] = msg_id})
						end
						if redis:sismember('muted:'..chat_id, user_id) then
							tdcli.deleteMessages(chat_id, {[0] = msg_id})
						end
						if user_id and chat_id then
							if not is_mod(msg) then
								hash = 'user:'..user_id..':'..chat_id..':fldcount'
								redis:incr(hash)
								if redis:get('fld:'..chat_id..':u:'..user_id) == 'ss' then
									if redis:get('floood:'..chat_id) == 'ok' then
										return
									elseif redis:get('floood:'..chat_id) == 'kick' then
									if tonumber(redis:get(hash)) > tonumber((redis:get('flood:'..chat_id) or 5)) then
										redis:set(hash, 0)
										tdcli.changeChatMemberStatus(chat_id, user_id, 'Kicked')
										sendmetion(chat_id, user_id, 0, 'User :'..(redis:hgetall('users:'..user_id).name or redis:hgetall('users:'..user_id).name)..'\nKicked Out For Flooding...', 6, string.len((redis:hgetall('users:'..user_id).name or user_id)))
									else
										redis:incrby(hash, 1)
									end
								end
								else
									redis:set(hash, 0)
									redis:setex('fld:'..chat_id..':u:'..user_id, (redis:get('floodtime:'..chat_id) or 2), 'ss')
								end
							end
						end
						--

						if redis:get('muteall:'..chat_id) == 'yes' and not is_mod(msg) then
   						 	tdcli.deleteMessages(chat_id, {[0] = msg_id})
   						end
   						if msg.content_.text_ and not is_mod(msg) then
   							if redis:get('chat:'..chat_id) == 'lock' then
   						 		tdcli.deleteMessages(chat_id, {[0] = msg_id})
   							end
   						end
   						if msg.content_.text_ or msg.content_.caption_ then
							if is_VIP_GP(msg) then
								Check_Msg(msg, (msg.content_.text_ or msg.content_.caption_))
   								Check_Msg(msg, (msg.content_.text_ or msg.content_.caption_))
							else
								Check_Msg(msg, (msg.content_.text_ or msg.content_.caption_))
							end
   						end
    					if msg.reply_markup_ or  msg.content_.game_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.video_ or msg.content_.photo_ or msg.content_.animation_ or msg.content_.document_  or msg.content_.contact_ or msg.content_.sticker_ or msg.content_.text_ or msg.content_.location_ then
    						if not is_mod(msg) then
    						if msg.reply_markup_ and R:get('inline:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.game_ and R:get('game:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.photo_ and R:get('photo:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.contact_ and R:get('contact:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.audio_ and R:get('audio:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.voice_ and R:get('voice:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.location_ and R:get('location:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.animation_ and R:get('gif:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.sticker_ and R:get('sticker:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
    	   					end
    	   					if msg.content_.document_ and R:get('file:'..chat_id) == 'Clean' then
   					 	   		tdcli.deleteMessages(chat_id, {[0] = msg_id})
       	   				end
						  if msg.forward_info_ then
				    	      if R:get('forward:'..msg.chat_id_) == 'del' then
				    	        tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_})
				    	      elseif R:get('forward:'..msg.chat_id_) == 'kick' then
				    	        tdcli.changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, 'Kicked')
											tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_})
				    	      elseif R:get('forward:'..msg.chat_id_) == 'report' then
				    	        tdcli.reportChannelSpam(msg.chat_id_, msg.sender_user_id_, {[0] = msg.id_})
				    	        tdcli.deleteMessagesFromUser(msg.chat_id_, msg.sender_user_id_)
				    	      else
				    	        return
				    	      end
				    	    end
						  end
    						--
    					end
   					end
					if data.ID == 'UpdateMessageEdited' then
  					--	if redis:get('edit:'..data.chat_id_) == 'lock' and not is_mod(data) then
   					 --	   tdcli.deleteMessages(data.chat_id_, {[0] = data.message_id_})
  					--	end
						GetMessage_R(data.chat_id_, data.message_id_, EditLock, nil)
					end
					--
					if msg.ID == 'MessageChatChangeTitle' then
						if R:get('tgservice:'..msg.chat_id_) == 'lock' then
			            	tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_})
						end
						redis:set('name:'..msg.chat_id_, msg.content_.title_)
					end

					if msg.ID == 'MessageChatJoinByLink' then
						if R:get('tgservice:'..msg.chat_id_) == 'lock' then
			            	tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_})
						end
					end

					if msg.content_.ID == "MessageChatAddMembers" and not is_mod(msg) then
						if msg.content_.members_ then
							if redis:get('bots:'..chat_id) == 'lock' then
							for k,v in pairs(msg.content_.members_) do
								if v.type_.ID == 'UserTypeBot' then
									tdcli.changeChatMemberStatus(chat_id, v.id_, 'Kicked')
								end
							end
							end
						end
						if R:get('tgservice:'..msg.chat_id_) == 'lock' then
			          tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_})
						end
					end
					--

					--return --true
				end




				return {
				patterns = {
				--Charge Pnl --
				'^/([Jj][Oo][Ii][Nn])_(%d+)_1$',
				'^/([Ll][Ee][Aa][Vv][Ee])_(%d+)$',
				'^/([Pp][Ll][Aa][Nn])([1234])_(%d+)_[12]$',
				'^/([Vv][Ii][Pp][Cc][Hh][Aa][Rr][Gg][Ee])_(%d+)_([01])$',
				--
				'^[/!#]([Hh][Ee][Ll][Pp])$','^([Hh][Ee][Ll][Pp])$',
				--Sudo Commands = {
					'^/([Uu][Pp][Dd][Aa][Tt][Ee]) (.*)$',
					--Update Lang
					'^/([Rr][Ee][Ll][Oo][Aa][Dd])$',
					--Reload Bot
					'^([Ss][Uu][Dd][Oo]) (+)$','^([Ss][Uu][Dd][Oo]) (+) (.*)$','^[/!#]([Ss][Uu][Dd][Oo]) (+)$','^[/!#]([Ss][Uu][Dd][Oo]) (+) (.*)$',
					'^([Ss][Uu][Dd][Oo]) (-)$','^([Ss][Uu][Dd][Oo]) (-) (.*)$','^[/!#]([Ss][Uu][Dd][Oo]) (-)$','^[/!#]([Ss][Uu][Dd][Oo]) (-) (.*)$',
					--Add Sudoer
					'^([Aa][Dd][Mm][Ii][Nn]) (+)$','^([Aa][Dd][Mm][Ii][Nn]) (+) (.*)$','^[/!#]([Aa][Dd][Mm][Ii][Nn]) (+)$','^[/!#]([Aa][Dd][Mm][Ii][Nn]) (+) (.*)$',
					'^([Aa][Dd][Mm][Ii][Nn]) (-)$','^([Aa][Dd][Mm][Ii][Nn]) (-) (.*)$','^[/!#]([Aa][Dd][Mm][Ii][Nn]) (-)$','^[/!#]([Aa][Dd][Mm][Ii][Nn]) (-) (.*)$',
					--Add Admin
					'^(/bc) (.*)$',
					'^/(markread) (.*)$',
        			'^(/fbc)$',
   					'^(/terminal) (.*)$',
        			'^(/download) (.*)$',
        			'^(/uptime)$',
        			"^(/backup) (.*)$",
        			"^(/lua) (.*)$",
				--}
				--Admin Commands = {
					'^([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (+)$','^([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (+) (.*)$','^[/!#]([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (+)$','^[/!#]([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (+) (.*)$',
					'^([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (-)$','^([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (-) (.*)$','^[/!#]([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (-)$','^[/!#]([Ee][Xx][Aa][Dd][Mm][Ii][Nn]) (-) (.*)$',
					--Add EXAdmin
					'^([Aa][Dd][Dd])$','^([Aa][Dd][Dd])_(%d+)$','^([Aa][Dd][Dd]) (%d+)$','^[/!#]([Aa][Dd][Dd])$','^[/!#]([Aa][Dd][Dd])_(%d+)$','^[/!#]([Aa][Dd][Dd]) (%d+)$',
					'^([Rr][Ee][Mm])$','^([Rr][Ee][Mm])_(%d+)$','^([Rr][Ee][Mm]) (%d+)$','^[/!#]([Rr][Ee][Mm])$','^[/!#]([Rr][Ee][Mm])_(%d+)$','^[/!#]([Rr][Ee][Mm]) (%d+)$',
					'^([Jj][Oo][Ii][Nn]) (%d+)$','^[/!#]([Jj][Oo][Ii][Nn]) (%d+)$',
					'^([Ll][Ee][Aa][Vv][Ee])$','^[/!#]([Ll][Ee][Aa][Vv][Ee])$',
        			'^[/!#]([Cc]onfig)$',
        			'^[/!#]([Ll]oad[Cc]onfig)$',
				--}
				--ExtraAdmin Commands = {
					'^([Mm][Oo][Dd]) (+)$','^([Mm][Oo][Dd]) (+) (.*)$','^[/!#]([Mm][Oo][Dd]) (+)$','^[/!#]([Mm][Oo][Dd]) (+) (.*)$',
					'^([Mm][Oo][Dd]) (-)$','^([Mm][Oo][Dd]) (-) (.*)$','^[/!#]([Mm][Oo][Dd]) (-)$','^[/!#]([Mm][Oo][Dd]) (-) (.*)$',
					--AddMod
				--}
				--Modrator Commands = {
					'^([Ll][Ii][Ss][Tt]) (.*)$','^([Ll][Ii][Ss][Tt])_(.*)$','^[/!#]([Ll][Ii][Ss][Tt]) (.*)$','^[/!#]([Ll][Ii][Ss][Tt])_(.*)$',
					'^([Mm][Uu][Tt][Ee]) (+)$','^([Mm][Uu][Tt][Ee]) (+) (.*)$','^[/!#]([Mm][Uu][Tt][Ee]) (+)$','^[/!#]([Mm][Uu][Tt][Ee]) (+) (.*)$',
					'^([Mm][Uu][Tt][Ee]) (-)$','^([Mm][Uu][Tt][Ee]) (-) (.*)$','^[/!#]([Mm][Uu][Tt][Ee]) (-)$','^[/!#]([Mm][Uu][Tt][Ee]) (-) (.*)$',
					--Mute Mmbr
					'^([Kk][Ii][Cc][Kk])$','^([Kk][Ii][Cc][Kk]) (.*)$','^[/!#]([Kk][Ii][Cc][Kk])$','^[/!#]([Kk][Ii][Cc][Kk]) (.*)$',
					--Kick
					'^([Ii][Nn][Vv][Ii][Tt][Ee])$','^([Ii][Nn][Vv][Ii][Tt][Ee]) (.*)$','^[/!#]([Ii][Nn][Vv][Ii][Tt][Ee])$','^[/!#]([Ii][Nn][Vv][Ii][Tt][Ee]) (.*)$',
					--AddMEmber
					'^([Cc]) (.*) (.*)$','^[/!#]([Cc]) (.*) (.*)$','^([Cc])[Ll][Ee][Aa][Nn] (.*) (.*)$','^[/!#]([Cc])[Ll][Ee][Aa][Nn] (.*) (.*)$','^([Cc]) (.*)$','^[/!#]([Cc]) (.*)$','^([Cc])[Ll][Ee][Aa][Nn] (.*)$','^[/!#]([Cc])[Ll][Ee][Aa][Nn] (.*)$',
					--Clean |MODS|EX|MUTED|FILTEED|MSG|RULS|WLC|LINK
					'^([Pp][Ii][Nn])$','^([Uu][Nn][Pp][Ii][Nn])$','^[/!#]([Pp][Ii][Nn])$','^[!#/]([Uu][Nn][Pp][Ii][Nn])$',
					'^([Ss][Ee][Tt][Nn][Aa][Mm][Ee]) (.*)$','^[/!#]([Ss][Ee][Tt][Nn][Aa][Mm][Ee]) (.*)$','^([Ss][Ee][Tt][Nn][Aa][Mm][Ee])$','^[/!#]([Ss][Ee][Tt][Nn][Aa][Mm][Ee])$',
					'^([Ll][Oo][Cc][Kk]) (.*)$','^[/!#]([Ll][Oo][Cc][Kk]) (.*)$','^([Ll][Oo][Cc][Kk]) (.*) (.*)$','^[/!#]([Ll][Oo][Cc][Kk]) (.*) (.*)$',
					'^([Uu][Nn][Ll][Oo][Cc][Kk]) (.*)$','^[/!#]([Uu][Nn][Ll][Oo][Cc][Kk]) (.*)$','^([Uu][Nn][Ll][Oo][Cc][Kk]) (.*) (.*)$','^[/!#]([Uu][Nn][Ll][Oo][Cc][Kk]) (.*) (.*)$',
					'^([Mm][Uu][Tt][Ee]) (.*)$','^[/!#]([Mm][Uu][Tt][Ee]) (.*)$','^([Mm][Uu][Tt][Ee]) (.*) (.*)$','^[/!#]([Mm][Uu][Tt][Ee]) (.*) (.*)$',
					'^([Uu][Nn][Mm][Uu][Tt][Ee]) (.*)$','^[/!#]([Uu][Nn][Mm][Uu][Tt][Ee]) (.*)$','^([Uu][Nn][Mm][Uu][Tt][Ee]) (.*) (.*)$','^[/!#]([Uu][Nn][Mm][Uu][Tt][Ee]) (.*) (.*)$',
					'^([Ll][Ii][Nn][Kk]) (.*)$','^[/!#]([Ll][Ii][Nn][Kk]) (.*)$','^([Ll][Ii][Nn][Kk])$','^[/!#]([Ll][Ii][Nn][Kk])$',
					'^([Uu][Ss][Ee][Rr][Nn][Aa][Mm][Ee]) (.*)$','^[/!#]([Uu][Ss][Ee][Rr][Nn][Aa][Mm][Ee]) (.*)$',
					'^([Hh][Aa][Ss][Hh][Tt][Aa][Gg]) (.*)$','^[!/#]([Hh][Aa][Ss][Hh][Tt][Aa][Gg])(.*)$',
					'^([Ff][Oo][Rr][Ww][Aa][Rr][Dd]) (.*)$','^[!/#]([Ff][Oo][Rr][Ww][Aa][Rr][Dd]) (.*)$',
					'^([Ff][Ll][Oo][Oo][Dd]) (.*)$','^[!/#]([Ff][Ll][Oo][Oo][Dd]) (.*)$',
					'^([Ss][Pp][Aa][Mm]) (.*)$','^[!/#]([Ss][Pp][Aa][Mm]) (.*)$',
					"^[!/#]([Ss][Ee][Tt][Ff][Ll][Oo][Oo][Dd]) (.*)$","^([Ss][Ee][Tt][Ff][Ll][Oo][Oo][Dd]) (.*)$",
					"^[!/#]([Ss][Ee][Tt][Ff][Ll][Oo][Oo][Dd][Tt][Ii][Mm][Ee]) (.*)$","^([Ss][Ee][Tt][Ff][Ll][Oo][Oo][Dd][Tt][Ii][Mm][Ee]) (.*)$",
					"^[!/#]([Ss][Ee][Tt][Cc][Hh][Aa][Rr][Rr]) (.*)$","^([Ss][Ee][Tt][Cc][Hh][Aa][Rr][Rr]) (.*)$",
        			'^([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss])$', '^[/!#]([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss])$',   '^([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss]) (.*)$', '^[/!#]([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss]) (.*)$',
					"^([Ss][Ee][Tt][Ll][Ii][Nn][Kk]) (.*)$","^[/!#]([Ss][Ee][Tt][Ll][Ii][Nn][Kk]) (.*)$",
					"^([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) (.*)$","^[/!#]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) (.*)$",
					'^([Ss][Ee][Tt][Ww][Ll][Cc]) (.*)$','^[/!#]([Ss][Ee][Tt][Ww][Ll][Cc]) (.*)$',
					"^[/!#]([Ss][Ii][Ll][Ee][Nn][Tt][Gg][Rr][Oo][Uu][Pp])$",
        			"^[/!#]([Uu][Nn][Ss][Ii][Ll][Ee][Nn][Tt][Gg][Rr][Oo][Uu][Pp])$",
        			"^([Ss][Ii][Ll][Ee][Nn][Tt][Gg][Rr][Oo][Uu][Pp])$",
        			"^([Uu][Nn][Ss][Ii][Ll][Ee][Nn][Tt][Gg][Rr][Oo][Uu][Pp])$",
					"^([Nn][Ee][Rr][Kk][Hh])$",
					"^[/!#]([Nn][Ee][Rr][Kk][Hh])$",
					"^([Rr][Uu][Ll][Ee][Ss])$",
					"^[/!#]([Rr][Uu][Ll][Ee][Ss])$",
					'^([Ff][Ii][Ll][Tt][Ee][Rr]) (+) (.*)$',
					'^([Ff][Ii][Ll][Tt][Ee][Rr]) (-) (.*)$',
					'^([Ss][Ee][Tt][Rr][Uu][Ll][Ee][Ss]) (.*)$','^[/!#]([Ss][Ee][Tt][Rr][Uu][Ll][Ee][Ss]) (.*)$','^([Ss][Ee][Tt][Rr][Uu][Ll][Ee][Ss])$','^[/!#]([Ss][Ee][Tt][Rr][Uu][Ll][Ee][Ss])$',
				--}
				-------------Nrml
				'^([Ii][Dd])$','^[/!#]([Ii][Dd])$','^([Ii][Dd]) (.*)$','^[/!#]([Ii][Dd]) (.*)$',
				'^([Ww][Hh][Oo][Ii][Ss]) (%d+)$','^[/!#]([Ww][Hh][Oo][Ii][Ss]) (%d+)$',
				-------------Nrml
				--
				'^[/!#](راهنما)$','^(راهنما)$',
				--}
				--ExtraAdmin Commands = {
					'^(ادمین) (+)$','^(ادمین) (+) (.*)$','^[/!#](ادمین) (+)$','^[/!#](ادمین) (+) (.*)$',
					'^(ادمین) (-)$','^(ادمین) (-) (.*)$','^[/!#](ادمین) (-)$','^[/!#](ادمین) (-) (.*)$',
					--AddMod
				--}
				--Modrator Commands = {
					'^(لیست) (.*)$','^(لیست)_(.*)$','^[/!#](لیست) (.*)$','^[/!#](لیست)_(.*)$',
					'^(سکوت) (+)$','^(سکوت) (+) (.*)$','^[/!#](سکوت) (+)$','^[/!#](سکوت) (+) (.*)$',
					'^(سکوت) (-)$','^(سکوت) (-) (.*)$','^[/!#](سکوت) (-)$','^[/!#](سکوت) (-) (.*)$',
					--Mute Mmbr
					'^(اخراج)$','^(سکوت) (.*)$','^[/!#](سکوت)$','^[/!#](سکوت) (.*)$',
					--Kick
					'^(دعوت)$','^(دعوت) (.*)$','^[/!#](دعوت)$','^[/!#](دعوت) (.*)$',
					--AddMEmber
					'^(حذف) (.*) (.*)$','^[/!#](حذف) (.*) (.*)$','^(حذف) (.*)$','^[/!#](حذف) (.*)$',
					--Clean |MODS|EX|MUTED|FILTEED|MSG|RULS|WLC|LINK
					'^(سنجاق)$','^(حذف سنجاق)$','^[/!#](سنجاق)$','^[!#/](حذف سنجاق)$',
					'^(تنظیم نام) (.*)$','^[/!#](تنظیم نام) (.*)$','^(تنظیم نام)$','^[/!#](تنظیم نام)$',
					'^(لینک) (.*)$','^[/!#](لینک) (.*)$','^(لینک) (.*) (.*)$','^[/!#](لینک) (.*) (.*)$',
					'^([آا]زاد) (.*)$','^[/!#]([آا]زاد) (.*)$','^([آا]زاد) (.*) (.*)$','^[/!#]([آا]زاد) (.*) (.*)$',
					'^(سکوت) (.*)$','^[/!#](سکوت) (.*)$','^(سکوت) (.*) (.*)$','^[/!#](سکوت) (.*) (.*)$',
					'^(حذف سکوت) (.*)$','^[/!#](حذف سکوت) (.*)$','^(حذف سکوت) (.*) (.*)$','^[/!#](حذف سکوت) (.*) (.*)$',
					'^(لینک) (.*)$','^[/!#](لینک) (.*)$','^(لینک)$','^[/!#](لینک)$',
					'^(ایدی) (.*)$','^[/!#](ایدی) (.*)$',
					'^(هشتگ) (.*)$','^[!/#](هشتگ)(.*)$',
					'^(پیام سریع) (.*)$','^[!/#](پیام سریع) (.*)$',
					'^(فوروارد) (.*)$','^[!/#](فوروارد) (.*)$',
					'^(پیام طولانی) (.*)$','^[!/#](پیام طولانی) (.*)$',
					"^[!/#](تنظیم پیام سریع) (.*)$","^(تنظیم پیام سریع) (.*)$",
					"^[!/#](تنظیم زمان پیام سریع) (.*)$","^(تنظیم زمان پیام سریع) (.*)$",
					"^[!/#](تنظیم کاراکتر پیام) (.*)$","^(تنظیم کاراکتر پیام) (.*)$",
        			'^(تنظیمات)$', '^[/!#](تنظیمات)$',   '^(تنظیمات) (.*)$', '^[/!#](تنظیمات) (.*)$',
					"^(تنظیم لینک) (.*)$","^[/!#](تنظیم لینک) (.*)$",
					"^(تنظیم زبان) (.*)$","^[/!#](تنظیم زبان) (.*)$",
					'^(تنظیم پیام خوشامد) (.*)$','^[/!#](تنظیم پیام خوشامد) (.*)$',
					"^[/!#](سکوت گروه)$",
        			"^[/!#](حذف سکوت گروه)$",
        			"^(حذف سکوت گروه)$",
        			"^(سکوت گروه)$",
					"^(نرخ)$",
					"^[/!#](نرخ)$",
					"^(قوانین)$",
					"^[/!#](قوانین)$",
					'^(فیلتر) (+) (.*)$',
					'^(فیلتر) (-) (.*)$',
					'^(تنظیم قوانین) (.*)$','^[/!#](تنظیم قوانین) (.*)$','^(تنظیم قوانین)$','^[/!#](تنظیم قوانین)$',
				--}
				-------------Nrml
				'^(ایدی)$','^[/!#](ایدی)$','^(ایدی) (.*)$','^[/!#](ایدی) (.*)$',
				'^(چه کسی است) (%d+)$','^[/!#](چه کسی است) (%d+)$',




					"^([Ss][Ee][Tt][Cc][Mm][Dd][Ll][Aa][Nn][Gg]) (.*)$","^[/!#]([Ss][Ee][Tt][Cc][Mm][Dd][Ll][Aa][Nn][Gg]) (.*)$",

				},
					run = RUN,
					pre_process = PRE
				}
				-------------------------------------------
				-------------------------------------------
				-------------Finished :D
				--By @Reload_life
				------TD-CLi :D



				--[[ 
					
					#$ This Plugin Written With Love In @SprCpu_Company By @Reload_Life
		
				]]
