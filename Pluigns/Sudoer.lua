-- SudoS :)
	
	function Run(msg, matches)
	
		if rank.is_Sudo(msg) then
			if matches[1]:lower() == 'plugins' then
				text = 'Plugins List : \n'
				for v, plugins in pairs(redis:smembers('F80:Plugins')) do
					text = text..'- `'..v..'` ) *'..plugins..'* \n'
				end
          	cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, text, 0, 'MarkDown')
			end
			-------------------------------------------------------
         if matches[1]:lower() == 'addlinks' then
            redis:sadd('Links:DB', matches[2])
            cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, ("%s Added to link Database"):format(matches[2]), 0, 'MarkDown')
         end

         if matches[1]:lower() == 'reload' then
         	plugins = {}
			   loadPlugins()
            cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'Reloaded', 0, 'MarkDown')
         end
         







            if matches[1] == 'update fa' and rank.is_Sudo(msg) then
            	LANG = 'fa'
            	lang.set_text(LANG, 'Error:API:B', 'ارور شماره نمیتواند این باشد')
            	lang.set_text(LANG, 'list:mods', 'لیست مدیر های گروه :\n')
  				lang.set_text(LANG, 'list:modsE', 'هیچ مدیری وجود ندارد')
            	lang.set_text(LANG, 'list:exadmins', '\n----------------\nلیست ادمین های اصلی گروه :\n')
				lang.set_text(LANG, 'list:exadminsE', '\n----------------\nهیچ مدیر اصلی وجود ندارد')
            	lang.set_text(LANG, 'list:muted', 'لیست کاربر های در حالت سکوت گروه :\n')
				lang.set_text(LANG, 'list:mutedE', 'هیچ کاربری در حالت سکوت قرار ندارد ')
				lang.set_text(LANG, 'list:sudos', 'لیست سودو های F80 :\n')
				lang.set_text(LANG, 'list:admins', 'لیست ادمین های جهانی F80 :\n')
				lang.set_text(LANG, 'list:bots', 'لیست ربات های داخل گروه :\n')
            	lang.set_text(LANG, 'list:filterd', 'لیست کلمات سانسور شده گروه :\n')
				lang.set_text(LANG, 'list:filterdE', 'هیچ کلمه ای فیلتر نشده')
				lang.set_text(LANG, 'clean:mods', '*ادمین ها پاک شدند.*\n_اخرین ادمین ها_.:\n')
				lang.set_text(LANG, 'clean:exadmins', '*ادمین های اصلی پاک شدند.*\n_اخرین ادمین های اصلی_.:\n')
				lang.set_text(LANG, 'clean:muted', '*کاربر های در حالت سکوت پاک شدند.*\n_اخرین کاربران در حالت سکوت_.:\n')
				lang.set_text(LANG, 'clean:filterd', '*کلمات فیلتر شده پاک شدند.*\n_اخرین کلمات فیلتر شده_.:\n')
				lang.set_text(LANG, 'clean:msg', '*پیام ها پاک شدند*\n')
				lang.set_text(LANG, 'clean:link', '*لینک گروه پاک شد.*\n')
				lang.set_text(LANG, 'clean:wlc', '*پیام خوش امد گویی گروه پاک شد.*\n')
				lang.set_text(LANG, 'clean:all', '*تمام پیام هایی که به ان ها دسترسی داشتم پاک شدند.*\n')
				lang.set_text(LANG, 'clean:bots', '*بات های گروه پاک شدند.*\n')
   				lang.set_text(LANG, 'ID:1', 'ایدی چت')
   				lang.set_text(LANG, 'ID:2', 'ایدی کاربر')
   				lang.set_text(LANG, 'ID:3', 'یوزرنیم')
   				lang.set_text(LANG, 'ID:4', 'نام')
   				lang.set_text(LANG, 'Prom:1', '`مقام کاربر بیشتر است ...`')
   				lang.set_text(LANG, 'Prom:2', '`نمیتوانم خودم را ارتقا دهم...`')
   				lang.set_text(LANG, 'Prom:3', ' در حال حاضر ادمین میباشد.')
   				lang.set_text(LANG, 'Prom:4', ' به ادمین ارتقا یافت.')
   				lang.set_text(LANG, 'Dem:1', ' ادمین نیست.')
   				lang.set_text(LANG, 'Dem:2', ' دیگه ادمین نیست.')
   				lang.set_text(LANG, 'ExA:3', ' در حال حاضر ادمین اصلی میباشد.')
   				lang.set_text(LANG, 'ExA:4', ' به ادمین اصلی ارتقا یافت.')
   				lang.set_text(LANG, 'ExAD:1', ' ادمین اصلی نمیباشد.')
   				lang.set_text(LANG, 'ExAD:2', ' دیگه ادمین اصلی نیست.')
   				lang.set_text(LANG, 'Owner:3', ' در حال حاضر صاحب گروه میباشد.')
   				lang.set_text(LANG, 'Owner:4', ' به عنوان صاحب گروه تنظیم شد.')
   				lang.set_text(LANG, 'OwnerD:1', ' صاحب گروه نمیباشد.')
   				lang.set_text(LANG, 'OwnerD:2', ' دیگه صاحب گروه نمیباشد.')
   				lang.set_text(LANG, 'Sudo:2', ' در حال حاضر سودو میباشد.')
   				lang.set_text(LANG, 'Sudo:3', ' به سودو ارتقا یافت.')
   				lang.set_text(LANG, 'SudoD:1', ' سودو نمیباشد.')
   				lang.set_text(LANG, 'SudoD:2', ' دیگه سودو نیست.')
   				lang.set_text(LANG, 'Admin:3', ' در حال حاضر ادمین جهانی میباشد.')
   				lang.set_text(LANG, 'Admin:4', ' به ادمین جهانی ارتقا یافت.')
   				lang.set_text(LANG, 'AdminD:1', ' ادمین جهانی نمیباشد.')
   				lang.set_text(LANG, 'AdminD:2', ' دیگه ادمین جهانی نیست.')
   				lang.set_text(LANG, 'Kicked:3', ' کیک شد.')
   				lang.set_text(LANG, 'Invite:1', ' دعوت شد.')
   				lang.set_text(LANG, 'Kicked:2', ' نمیتوانم خودم را کیک کنم...')
   				lang.set_text(LANG, 'Kicked:1', ' کاربر دارای مقام میباشد...')
   				lang.set_text(LANG, 'ban:1', '`مقام کاربر بالا تر است ...`')
   				lang.set_text(LANG, 'ban:2', '`من نمیتوانم خودم را بن کنم...`')
   				lang.set_text(LANG, 'ban:3', ' در حال حاضر بن میباشد.')
   				lang.set_text(LANG, 'ban:4', ' بن شد.')
   				lang.set_text(LANG, 'uban:1', ' بن نشده است.')
   				lang.set_text(LANG, 'uban:2', ' از بن در امد.')
   				lang.set_text(LANG, 'mute:1', '`مقام کاربر بالا تر است ...`')
   				lang.set_text(LANG, 'mute:2', '`من نمیتوانم خودم را در حالت سکوت قرار دهم...`')
   				lang.set_text(LANG, 'mute:3', ' در حال حاضر در حالت سکوت میباشد.')
   				lang.set_text(LANG, 'mute:4', ' در حالت سکوت قرار گرفت.')
   				lang.set_text(LANG, 'unmute:1', ' در حالت سکوت قرار ندارد.')
   				lang.set_text(LANG, 'unmute:2', ' از حالت سکوت در امد.')
   				lang.set_text(LANG, 'Settings:1', 'لینک ها')
   				lang.set_text(LANG, 'Settings:2', 'هشتگ #')
   				lang.set_text(LANG, 'Settings:3', 'صدا کردن فرد')
   				lang.set_text(LANG, 'Settings:4', 'ادیت پیام')
   				lang.set_text(LANG, 'Settings:5', 'سنجاق پیام')
   				lang.set_text(LANG, 'Settings:6', 'پیام سریع')
   				lang.set_text(LANG, 'Settings:6c', 'تعداد پیام سریع')
   				lang.set_text(LANG, 'Settings:6t', 'زمان پیام سریع')
   				lang.set_text(LANG, 'Settings:7', 'پیام طولانی')
   				lang.set_text(LANG, 'Settings:7c', 'تعداد کاراکتر پیام طولانی')
   				lang.set_text(LANG, 'Settings:8', 'پیام کوتاه')
   				lang.set_text(LANG, 'Settings:8c', 'تعداد کاراکتر پیام کوتاه')
   				lang.set_text(LANG, 'Settings:9', 'زیرنویس فایل چند رسانه ای')
   				lang.set_text(LANG, 'Settings:10', 'زیرنویس فارسی')
   				lang.set_text(LANG, 'Settings:11', 'زیرنویس انگلیسی')
   				lang.set_text(LANG, 'Settings:12', 'متن')
   				lang.set_text(LANG, 'Settings:13', 'متن فارسی')
   				lang.set_text(LANG, 'Settings:14', 'متن انگلیسی')
   				lang.set_text(LANG, 'Settings:15', 'پیام چند رسانه ای')
   				lang.set_text(LANG, 'Settings:16', 'فوروارد')
   				lang.set_text(LANG, 'Settings:17', 'فوروارد از کانال')
   				lang.set_text(LANG, 'Settings:18', 'فوروارد از کاربر')
   				lang.set_text(LANG, 'Settings:19', 'پاسخ')
   				lang.set_text(LANG, 'Settings:20', 'درون خطی')
   				lang.set_text(LANG, 'Settings:21', 'کیبورد')
   				lang.set_text(LANG, 'Settings:22', 'بازی درون خطی')
   				lang.set_text(LANG, 'Settings:23', 'صدا')
   				lang.set_text(LANG, 'Settings:24', 'اهنگ')
   				lang.set_text(LANG, 'Settings:25', 'مکان')
   				lang.set_text(LANG, 'Settings:26', 'انگلیسی')
   				lang.set_text(LANG, 'Settings:27', 'فارسی')
   				lang.set_text(LANG, 'Settings:28', 'عکس')
   				lang.set_text(LANG, 'Settings:29', 'فیلم')
   				lang.set_text(LANG, 'Settings:30', 'به اشتراک گذاری شماره')
   				lang.set_text(LANG, 'Settings:31', 'صفحات وب')
   				lang.set_text(LANG, 'Settings:32', 'AtSign @')
   				lang.set_text(LANG, 'Settings:33', 'انیمیشن')
   				lang.set_text(LANG, 'Settings:34', 'فایل ها')
   				lang.set_text(LANG, 'Settings:35', 'استیکر ها')
   				lang.set_text(LANG, 'Settings:36', 'ربات ها')
   				lang.set_text(LANG, 'Settings:37', 'زبان')
   				lang.set_text(LANG, 'Settings:38', 'زبان دستورات')
   				lang.set_text(LANG, 'Settings:39', 'منقضی')
   				lang.set_text(LANG, 'Settings:40', 'حالت سکوت')
   				lang.set_text(LANG, 'Settings:41', 'حالت api')
   				lang.set_text(LANG, 'lock:edit:f', '> *خطا* _ویرایش پیام ها قفل میباشد_')
   				lang.set_text(LANG, 'lock:edit:d', '> _ویرایش پیام قفل میباشد_')
   				lang.set_text(LANG, 'Unlock:edit:f', '> *خطا* _ویرایش پیام ها قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:edit:d', '> _قفل بودن ویرایش پیام ها غیر فعال شد_')
   				lang.set_text(LANG, 'lock:pin:f', '> *خطا* _سنجاق زدن پیام ها قفل میباشد_')
   				lang.set_text(LANG, 'lock:pin:d', '> _سنجاق زدن پیام ها قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:pin:f', '> *خطا* _سنجاق زدن پیام ها قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:pin:d', '> _قفل بودن سنجاق زدن پیام ها غیر فعال شد_')
   				lang.set_text(LANG, 'lock:flood:f', '> *خطا*\n`>`_پیام سریع قفل میباشد..._')
   				lang.set_text(LANG, 'lock:flood:d', '> _پیام سریع قفل میباشد_\n[این چیه?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:flood:f', '> *خطا* _پیام سریع قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:flood:d', '> _پیام سریع ازاد شد_')
   				lang.set_text(LANG, 'lock:longmessage:f', '> *خطا*\n`>`فرستادن *پیام طولانی* _بیشتر از _: `%d`_ قفل میباشد..._')
   				lang.set_text(LANG, 'lock:longmessage:d', '> ارسال *پیام طولانی* _بیشتر از _: `%d`_ قفل میبشاد..._\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:longmessage:f', '> *خطا* _ارسال پیام طولانی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:longmessage:d', '> _ارسال پیام طولانی  باز شد_')
   				lang.set_text(LANG, 'lock:shortmessage:f', '> *خطا*\n`>`_ارسال_ *پیام کوتاه* _کمتر _: `%d`_ قفل میباشد..._')
   				lang.set_text(LANG, 'lock:shortmessage:d', '> _ارسال_ *پیام کوتاه* _کمتر از _: `%d`_ قفل شده..._\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:shortmessage:f', '> *خطا* _ارسال پیام کوتاه قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:shortmessage:d', '> _ارسال پیام کوتاه ازاد شد_')
   				lang.set_text(LANG, 'lock:caption:f', '> *خطا*\n_زیرنویس در حال حاضر قفل میباشد_')
   				lang.set_text(LANG, 'lock:caption:d', '> _زیرنویس در حال حاضر قفل میباشد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:caption:f', '> *خطا* _زیرنویس قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:caption:d', '> _زیرنویس ازاد شد_')
   				lang.set_text(LANG, 'lock:forward:f', '> *خطا*\n _فوروارد پیام قفل میباشد_')
   				lang.set_text(LANG, 'lock:forward:d', '> _فوروارد پیام قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:forward:f', '> *خطا* _فوروارد پیام قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:forward:d', '> _فوروارد پیام ازاد شد_')
   				lang.set_text(LANG, 'lock:channelforward:f', '> *خطا*\n _فوروارد پیام از کانال قفل میباشد_')
   				lang.set_text(LANG, 'lock:channelforward:d', '> _فوروارد پیام قفل شد_\n[این چیه?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:channelforward:f', '> *خطا* _فوروارد پیام از کانال ازاد میباشد_')
   				lang.set_text(LANG, 'Unlock:channelforward:d', '> _فوروارد پیام از کانال ازاد شد_')
   				lang.set_text(LANG, 'lock:userforward:f', '> *خطا*\n _فوروارد پیام از کاربر ها (نه کانال ها) قفل میباشد_')
   				lang.set_text(LANG, 'lock:userforward:d', '> _فوروارد پیام از کاربر ها قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:userforward:f', '> *خطا* _فوروارد پیام از کاربر ها ازاد میباشد_')
   				lang.set_text(LANG, 'Unlock:userforward:d', '> _فوروارد پیام از کاربران ازاد شد_')
   				lang.set_text(LANG, 'lock:reply:f', '> *خطا*\n _پاسخ به پیام ها قفل میباشد_')
   				lang.set_text(LANG, 'lock:reply:d', '> _پاسخ بر روی پیام ها قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:reply:f', '> *خطا* _پاسخ به پیام ها قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:reply:d', '> _پاسخ به پیام ها قفل نمیباشد_')
   				lang.set_text(LANG, 'lock:inline:f', '> *خطا*\n _درون خطی قفل میباشد_')
   				lang.set_text(LANG, 'lock:inline:d', '> _درون خطی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:inline:f', '> *خطا* _درون خطی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:inline:d', '> _درون خطی ازاد شد_')
   				lang.set_text(LANG, 'lock:game:f', '> *خطا*\n _بازی درون خطی قفل میباشد_')
   				lang.set_text(LANG, 'lock:game:d', '> _بازی درون خطی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:game:f', '> *خطا* _بازی درون خطی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:game:d', '> _بازی درون خطی ازاد شد_')
   				lang.set_text(LANG, 'lock:keyboard:f', '> *خطا*\n _کیبورد درون خطی قفل میباشد_')
   				lang.set_text(LANG, 'lock:keyboard:d', '> _کیبورد درون خطی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:keyboard:f', '> *خطا* _کیبورد درون خطی قفل نبود_')
   				lang.set_text(LANG, 'Unlock:keyboard:d', '> _استفاده از کیبورد درون خطی ازاد شد_')
   				lang.set_text(LANG, 'lock:text:f', '> *خطا*\n _چت کردن قفل میباشد_')
   				lang.set_text(LANG, 'lock:text:d', '> _چت کردن قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:text:f', '> *خطا* _چت کردن قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:text:d', '> _چت کردن ازاد شد_')
   				lang.set_text(LANG, 'lock:متنarabic:f', '> *خطا*\n _چت کردن عربی قفل میباشد_')
   				lang.set_text(LANG, 'lock:متنarabic:d', '> _چت کردن عربی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:متنarabic:f', '> *خطا* _چت کردن عربی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:متنarabic:d', '> _چت کردن عربی ازاد شد_')
   				lang.set_text(LANG, 'lock:متنenglish:f', '> *خطا*\n _چت کردن انگلیسی قفل میباشد_')
   				lang.set_text(LANG, 'lock:متنenglish:d', '> _چت کردن انگلیسی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:متنenglish:f', '> *خطا* _چت کردن انگلیسی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:متنenglish:d', '> _چت کردن انگلیسی ازاد شد_')
   				lang.set_text(LANG, 'lock:arabic:f', '> *خطا*\n _کلمات عربی قفل میباشد_')
   				lang.set_text(LANG, 'lock:arabic:d', '> _کلمات عربی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:arabic:f', '> *خطا* _کلمات عربی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:arabic:d', '> _کلمات عربی ازاد شد_')
   				lang.set_text(LANG, 'lock:english:f', '> *خطا*\n _کلمات انگلیسی قفل میباشد_')
   				lang.set_text(LANG, 'lock:english:d', '> _کلمات انگلیسی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:english:f', '> *خطا* _کلمات انگلیسی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:english:d', '> _کلمات انگلیسی ازاد شد_')
   				lang.set_text(LANG, 'lock:captionarabic:f', '> *خطا*\n _زیرنویس عربی در حال حاضر قفل میباشد_')
   				lang.set_text(LANG, 'lock:captionarabic:d', '> _زیرنویس عربی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:captionarabic:f', '> *خطا* _زیرنویس عربی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:captionarabic:d', '> _زیرنویس عربی ازاد شد_')
   				lang.set_text(LANG, 'lock:captionenglish:f', '> *خطا*\n _زیرنویس انگلیسی قفل میباشد_')
   				lang.set_text(LANG, 'lock:captionenglish:d', '> _ زیرنویس انگلیسی قفل شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:captionenglish:f', '> *خطا* _زیرنویس انگلیسی قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:captionenglish:d', '> _زیرنویس انگلیسی ازاد شد_')
   				lang.set_text(LANG, 'lock:voice:f', '> *خطا*\n _صدا قفل میباشد_')
   				lang.set_text(LANG, 'lock:voice:d', '> _صدا قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:voice:f', '> *خطا* _صدا قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:voice:d', '> _صدا ازاد شد_')
   				lang.set_text(LANG, 'lock:music:f', '> *خطا*\n _موزیک قفل میباشد_')
   				lang.set_text(LANG, 'lock:music:d', '> _موزیک قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:music:f', '> *خطا* _موزیک قفل نبود_')
   				lang.set_text(LANG, 'Unlock:music:d', '> _موزیک ازاد شد_')
   				lang.set_text(LANG, 'lock:location:f', '> *خطا*\n _مکان قفل میباشد_')
   				lang.set_text(LANG, 'lock:location:d', '> _مکان قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:location:f', '> *خطا* _مکان قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:location:d', '> _مکان ازاد شد_')
   				lang.set_text(LANG, 'lock:photo:f', '> *خطا*\n _عکس قفل میباشد_')
   				lang.set_text(LANG, 'lock:photo:d', '> _عکس قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:photo:f', '> *خطا* _عکس قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:photo:d', '> _عکس ازاد شد_')
   				lang.set_text(LANG, 'lock:video:f', '> *خطا*\n _فیلم قفل میباشد_')
   				lang.set_text(LANG, 'lock:video:d', '> _فیلم قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:video:f', '> *خطا* _فیلم قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:video:d', '> _فیلم ازاد شد_')
   				lang.set_text(LANG, 'lock:sharenumber:f', '> *خطا*\n _شیر کردن شماره قفل میباشد_')
   				lang.set_text(LANG, 'lock:sharenumber:d', '> _شیر کردن شماره قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:sharenumber:f', '> *خطا* _شیر کردن شماره قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:sharenumber:d', '> _شیر کردن شماره ازاد شد_')
   				lang.set_text(LANG, 'lock:webpage:f', '> *خطا*\n _صفحات وب قفل میباشد_')
   				lang.set_text(LANG, 'lock:webpage:d', '> _صفحات وب قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:webpage:f', '> *خطا* _صفحات وب قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:webpage:d', '> _صفحات وب ازاد شد_')
   				lang.set_text(LANG, 'lock:link:f', '> *خطا*\n _لینک قفل میباشد_')
   				lang.set_text(LANG, 'lock:link:d', '> _لینک قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:link:f', '> *خطا* _لینک قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:link:d', '> _لینک ازاد شد_')
   				lang.set_text(LANG, 'lock:mention:f', '> *خطا*\n _اشاره به افراد(@) قفل میباشد_')
   				lang.set_text(LANG, 'lock:mention:d', '> _اشاره به افراد(@) قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:mention:f', '> *خطا* _اشاره به افراد(@) قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:mention:d', '> _اشاره به افراد(@) ازاد شد_')
   				lang.set_text(LANG, 'lock:hashtag:f', '> *خطا*\n _هشتگ # قفل میباشد_')
   				lang.set_text(LANG, 'lock:hashtag:d', '> _هشتگ # قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:hashtag:f', '> *خطا* _هشتگ # قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:hashtag:d', '> _هشتگ # ازاد شد_')
   				lang.set_text(LANG, 'lock:atsign:f', '> *خطا*\n _@ قفل میباشد_')
   				lang.set_text(LANG, 'lock:atsign:d', '> _@ قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:atsign:f', '> *خطا* _@ قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:atsign:d', '> _@ ازاد شد_')
   				lang.set_text(LANG, 'lock:file:f', '> *خطا*\n _فایل قفل میباشد_')
   				lang.set_text(LANG, 'lock:file:d', '> _فایل قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:file:f', '> *خطا* _فایل قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:file:d', '> _فایل ازاد شد_')
   				lang.set_text(LANG, 'lock:animation:f', '> *خطا*\n _انیمیشن قفل میباشد_')
   				lang.set_text(LANG, 'lock:animation:d', '> _انیمیشن قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:animation:f', '> *خطا* _انیمیشن قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:animation:d', '> _انیمیشن ازاد شد_')
   				lang.set_text(LANG, 'lock:stickers:f', '> *خطا*\n _استیکر قفل میباشد_')
   				lang.set_text(LANG, 'lock:stickers:d', '> _استیکر قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:stickers:f', '> *خطا* _استیکر قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:stickers:d', '> _استیکر ازاد شد_')
   				lang.set_text(LANG, 'lock:bots:f', '> *خطا*\n _ورود ربات ها قفل میباشد_')
   				lang.set_text(LANG, 'lock:bots:d', '> _ورود ربات ها قفل شد_\n')
   				lang.set_text(LANG, 'Unlock:bots:f', '> *خطا* _ورود ربات ها قفل نمیباشد_')
   				lang.set_text(LANG, 'Unlock:bots:d', '> _ورود ربات ها ازاد شد_')
				   lang.set_text(LANG, 'lock:APIMOD:f', '> *خطا*\n _APIMode فعال است_')
   				lang.set_text(LANG, 'lock:APIMOD:d', '> _APIMode فعال شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:APIMOD:f', '> *خطا* _APIMode فعال نیست_')
   				lang.set_text(LANG, 'Unlock:APIMOD:d', '> _APIMode غیر فعال شد_')
   				lang.set_text(LANG, 'lock:SilenMode:f', '> *خطا*\n _حالت سکوت فعال است_')
   				lang.set_text(LANG, 'lock:SilenMode:d', '> _حالت سکوت فعا شد_\n[این چیست?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:SilenMode:f', '> *خطا* _حالت سکوت فعال نیست_')
   				lang.set_text(LANG, 'Unlock:SilenMode:d', '> _حالت سکوت غیر فعال شد_')
   				---------------
   				--Question Language DataBase :D
   				---------------
   				lang.set_text(LANG, 'Help', '> راهنماℹ️')
               lang.set_text(LANG, 'Back', '> بازگشت 🔙')
   				lang.set_text(LANG, 'Send', '> ارسال [MarkDownFormat] >>')
               lang.set_text(LANG, 'Next', '> بعدی >>')
               lang.set_text(LANG, 'Cancel', '> لغو')
   				lang.set_text(LANG, 'Canceled', '> لغو شد')
   				lang.set_text(LANG, 'Relang', '> انتخاب دوباره زبان➰')
   				lang.set_text(LANG, 'Start_TEXT', '> *سلام :)*\n`خوش امدید به QuestionRobot`')
   				lang.set_text(LANG, 'HelpTXT', '> `از دکمه ها استفاده کنید تا راهنمای هر افزونه را ببینید `')
   				lang.set_text(LANG, 'HelpSupport', '> راهنما و پشتیبانی')
   				lang.set_text(LANG, 'SendChannel', '> ارسال کانال')
   				lang.set_text(LANG, 'Buy:P', '> خرید صفحه')
   				lang.set_text(LANG, 'SendChannel:H', '> `ارسال به کانال`\n'
   					..'> `شما میتوانید از این قابلیت استفاده کنید برای ارسال` *مارک داون* `و` *کیبورد شیشه ای* `به کانال`\n'
   					..'> `استفاده کنید از` [/SendChannel](t.me/Question_Robot?start=sendchannel) `برای استارت ;)`')
   				lang.set_text(LANG, 'Upload', '> اپلودر')
   				lang.set_text(LANG, 'Uploader:H', '> `اپلودر فایل`\n'
   					..'> *اپلود* `فایل های شما به سرور و دریافت لینک دانلود`*(تا سقف 1.5GiB)*` ... `\n'
   					..'> `استفاده کنید از` [/Upload](t.me/Question_Robot?start=upload) `برای شروع ;)`')
   				lang.set_text(LANG, 'Download', '> دانلودر')
   				lang.set_text(LANG, 'DownLoader:H', '> `دانلود`\n'
   					..'> *دانلود* `فایل های شما و ارسال ان ها به صورت فایل `*(تا سقف  1.5GiB)*` ... `\n'
   					..'> `استفاده کنید از` [/Download](t.me/Question_Robot?start=download) `برای شروع ;)`')
   				lang.set_text(LANG, 'GroupBuying', '> خرید گروه')
   				lang.set_text(LANG, 'Buy:H', '> `گروه های F80`\n'
   					..'> `خرید یک ربات کلاینت برای مدیریت راحت تر گروه های شما`\n'
   					..'> *از دکمه روبرو استفاده کنید برای پرداخت :D*')
   				lang.set_text(LANG, 'Buy:N', '> `گروه های F80 `\n'
   					..'> *اول کلیک کنید* [اینجا](%s) *سپس پرداخت کنید*\n*سپس از دکمه روبرو استفاده کنید*\n'
   					..'> `سپس لینک گروه خود را بفرستید و بقیه کار های مورد نیاز رو انجام دهید ;)`')
   				lang.set_text(LANG, 'Buy:S', '> `طرح مورد نظرتون رو انتخاب کنید :`')
   				lang.set_text(LANG, 'Buy:1', '> طرح 1 >>')
   				lang.set_text(LANG, 'Buy:2', '> طرح 2 >>')
   				lang.set_text(LANG, 'Buy:3', '> طرج 3 >>')
   				lang.set_text(LANG, 'Buy:4', '> طرح 4 >>')
   				lang.set_text(LANG, 'Buy:5', '> طرح تست >>')
   				lang.set_text(LANG, 'Buy:D', '> صفحه بعد برای پرداخت')
   				lang.set_text(LANG, 'Buy:SU', '> پرداخت شد >>')
   				lang.set_text(LANG, 'Buy:PLNS:1', '> طرح `1` انتخاب شده\n> هزینه : `40000` ریال\n>زمان `1` ماه')
   				lang.set_text(LANG, 'Buy:PLNS:2', '> طرح `2` انتخاب شده\n> هزینه : `70000` ریال\n>زمان `2` ماه')
   				lang.set_text(LANG, 'Buy:PLNS:3', '> طرح `3` انتخاب شده\n> هزینه : `110000` ریال\n>زمان `3` ماه')
   				lang.set_text(LANG, 'Buy:PLNS:4', '> طرح `4` انتخاب شده\n> هزینه : `200000` ریال\n>زمان *نامحدود*')
   				lang.set_text(LANG, 'Buy:PLNS:5', '> طرح `تست` انتخاب شده\n> هزینه : `0` ریال\n>زمان `2` روز')
   				lang.set_text(LANG, 'Buy:True', '> پرداخت شد >>')
   				lang.set_text(LANG, 'Buy:False', '> `پرداخت نشده`\n')
   				lang.set_text(LANG, 'Buy:FALSE:S', '> `شما طرح تست را قبلا استفاده کردید ;)`')
   				lang.set_text(LANG, 'Buy:True', '> `پرداخت شد`\n`لینک گروه خود را ارسال کنید `')
               lang.set_text(LANG, 'LetMeCheck', '> `در حال بررسی  ...`')
               lang.set_text(LANG, 'linkF', '> `لینک صحیح نیست`')
               lang.set_text(LANG, 'linkT', '> `من وارد گروه شما شدم`')
               lang.set_text(LANG, 'UsNX', '> `از دکمه ها استفاده کنید`')
               lang.set_text(LANG, 'UsNXt', '> `یک پیام از ادمین های گروهتان ارسال کنید`')
               lang.set_text(LANG, 'UserADD', '> `کاربر %s به عنوان ادمین اصلی تنظیم شد`\n*حالا میتوانید از گروه استفاده کنید*\n>شما صاحب گروه هستید :D')
               lang.set_text(LANG, 'ChS', '[َ](https://storage.pwrtelegram.xyz/Question_RoBot/video/file_540.mp4)> `ارسال کننده کانال فعال شد`\n> *اول من رو ادمین کانال کنین سپس یوزرنیم کانال رو بفرستین*')
               lang.set_text(LANG, 'UploadS', '> `فایل خود را ارسال کنید <فیلم\\عکس\\فایل>`')
   				lang.set_text(LANG, 'DownLoadS', '> `لینک خود را ارسال کنید <فقط فایل های زیپ>`')
               lang.set_text(LANG, 'Link:H', '> `لینک شما`\n'
                  ..'> *استفاده کنید از *[/Link](t.me/Question_Robot?start=MyLink) *برای دیدن لینک خود*\n'
                  ..'> `شیر کنید و سکه جمع کنید ...`')
               lang.set_text(LANG, 'Link', '> لینک شما\n'
                  ..'> t.me/Question_Robot?start=%s \n'
                  ..'> پخش کنید و سکه جمع کنید ...')
               lang.set_text(LANG, 'Coins:H', '> `سکه های شما`\n> *شما دارای* : `%d` *باقی مانده هستید*')
               lang.set_text(LANG, 'MyCoinsJ', '> سکه ها')
               lang.set_text(LANG, 'LinkJ', '> لینک شما')
               lang.set_text(LANG, 'InstaDL', '> دانلودر اینستاگرام')
               lang.set_text(LANG, 'time', '> زمان')
               lang.set_text(LANG, 'time:H', '> `زمان`\n> از دکمه استفاده کنید تا زمان را ببینید ;)')
               lang.set_text(LANG, 'time:P', '> زمان را ببینید')
               lang.set_text(LANG, 'Insta:P', '> استفاده کنید ;)')
               lang.set_text(LANG, 'Insta:H', '> `دانلودر اینستا`\n> *دکمه روبرو را فشار دهید سپس لینک اینستا را ارسال کنید*\n')
               lang.set_text(LANG, 'InstaDLRS', [[
1⃣ کلیک کنید بر روی "*...*" کنار عکس موردنظر.

2⃣  وقتی منو بالا امد, کلیک کنید برو روی "*Copy Share URL*", و یک پیام بالا میاید که میگوید "*Link copied to clipboard*".

3⃣ برای دانلود کردن ان باید تلگرام را باز کنید و ان را برای من ارسال کنید!
کلیک کنید و نگه دارید بر روی قسمت ارسال مسیج. دکمه پیست ظاهر میشود. بر روی پیست کلیک کنید و گزینه روبرو رو ارسال کنید "*Send*".

4⃣ من ارسال میکنم عکس یا فیلم را از لینک مورد نظر.

5⃣ لذت ببرید!

`به یاد داشته باشید: من کار نمیکنم اگر لینک را از صفحه های شخصی ارسال کنید`.]])

               lang.set_text(LANG, 'LMC:V', '> در حال بررسی...')
               lang.set_text(LANG, 'DLD:V', '> `فیلم دانلود شد...`\n')
               lang.set_text(LANG, 'SNDNG:V', '> `در حال اپلود ...`')
               lang.set_text(LANG, 'ColC:H', '> `شما سکه نیاز دارید :P`\n> از دکمه ها استفاده کنید برای اموزش دریافت سکه')
               lang.set_text(LANG, 'ColC', '> دریافت سکه')
               lang.set_text(LANG, 'ShareLink', '> پخش کردن لینک')
               lang.set_text(LANG, 'NFC', '> سکه ها کم است ... >> بیشتر جمع کنید > [/Link](t.me/Question_Robot?start=MyLink)')
               lang.set_text(LANG, 'InlineHelp', [[
*راهنمای درون خطی*
`مترجم` 
`@Question_Robot tr [متن شما]`
_مثال_ : `@Question_Robot tr Hello`
`ترجمه شده را تحویل میدهد` *Hello*
`مخفی کن` 
`@Question_Robot مخفی کن your [متن شما]`
_مثال_ : `@Question_Robot مخفی کن Hello`
`یک پیام مخفی ارسال میکند`
`دانلودر` 
`@Question_Robot download [لینک]`
_مثال_ : `@Question_Robot download SomeLinks`
`سپس فایل را از لینک ارسال میکند`
`سیستم تکرار` 
`@Question_Robot [متن شما]`
_مثال_ : `@Question_Robot Hello`
`میفرستد hello`
 `-- میتوانید از مارک داون و html استفاده کنید`
]])
               lang.set_text(LANG, 'ChS:1', '> `یوزرنیم کانال خود را ارسال کنید ...`')
               lang.set_text(LANG, 'ChS:2', '> `متن یا فایل چند رسانه ای خود را ارسال کنید <نوع فایل چند رسانه ای : عکس, فیلم, فایل> ...`')
               lang.set_text(LANG, 'ChS:2;F', '> `من را در کانال خود ادمین کنید و سپس امتحان کنید`')
               lang.set_text(LANG, 'ChS:2:F', '> `شما ادمین این کانال نیستید`')
               lang.set_text(LANG, 'Cancel:Download', '> لغو')
               lang.set_text(LANG, 'Download:APP', '> دانلود >>')
               lang.set_text(LANG, 'App:Dl', '> دانلود کنید %s برنامه را با کلیک بر روی دکمه')
               lang.set_text(LANG, 'DLD:F', '> `در حال دانلود فایل...`')
               lang.set_text(LANG, 'SNDNG:F', '> `اپلود به تلگرام ...`')
               lang.set_text(LANG, 'IG:I', '> اینستاگرام➰ 📸')
               lang.set_text(LANG, 'IG:T', '> اینستاگرام 📸')
               lang.set_text(LANG, 'APK:I', '> جستجوی apk➰ 📲')
               lang.set_text(LANG, 'DLR:I', '> دانلودر فایل➰ 📥')
               lang.set_text(LANG, 'DLR:T', '> دانلودر فایل 📥')
               lang.set_text(LANG, 'ECO:T', '> تکرار 🎙')
               lang.set_text(LANG, 'ECO:I', '> تکرار➰ 🎙')
               lang.set_text(LANG, 'HDT:I', '> مخفی کن➰ ♻️')
               lang.set_text(LANG, 'PY:I', '> پرداخت➰ 💳')
               lang.set_text(LANG, 'PY:T', '> پرداخت 💳')
               lang.set_text(LANG, 'TR:I', '> مترجم➰ 💱')
               lang.set_text(LANG, 'H:IG:I', '> `دانلودر اینستاگرام`\n\n`<درون خطی>`\n\n*هزینه💰* : `5` SPRs برای عکس ها & `8` SPRs برای ویدیو ها.\n\n> *کاربرد >>*\n\n`@Question_Robot instadownloader لینک اینستای شما`\n\n*مثال* : `@Question_Robot instadownloader https://instagram.com/p/BLuufSdDnwj`\n\n#Good\\_Luck ;)')
               lang.set_text(LANG, 'H:IG:T', '> `دانلودر اینستاگرام`\n\n*هزینه💰* : `5` SPRs For Photos & `8` SPRs For Videos.\n\n> *کاربرد >>*\n\n`/instadownloader Your InstaLINK`\n\n*مثال* : `/instadownloader https://instagram.com/p/BLuufSdDnwj`\n\n#Good\\_Luck ;)')
               lang.set_text(LANG, 'H:APK:I', '> `جستجوی apk`\n\n> `<درون خطی>`\n\n*> کاربرد >>*\n\n> `@Question_Robot apksearch <AppName>`\n\n*E.G* : `@Question_Robot apksearch Telegram`')
               lang.set_text(LANG, 'H:DLR:I', '> `دانلودر`\n\n> `<درون خطی>`\n\n*> کاربرد >>*\n\n> `@Question_Robot download <لینک {فقط فایل های زیپ و پی دی اف}>`\n\n*مثال* : `@Question_Robot download https://telegram.org/Question_RoBot/document/file_570.pdf`')
               lang.set_text(LANG, 'H:DLR:T', '> `دانلودر`\n\n*> کاربرد >>*\n\n> [/Download](t.me/Question_Robot?start=download)\n\n`سپس لینک خود را ارسال کنید ;)`')
               lang.set_text(LANG, 'H:ECO:T', '> `تکرار`\n\n\n\n*> کاربرد >>*\n\n `/echo متن` <متن Format MarkDown|HTML>\n\n*E.G* : `/echo *Hello*`\n\nراهنمای مارک داون : \\*Bold\\* \n\n- \\_Italic\\_ \n\n- \\`PreCode\\` \n\n- \\[متن](Link) Hyperlink\n\nHTML Help : <b>Bold</b> \n\n- <i>Italic</i> \n\n- <code>PreCode</code> \n\n- <a href="LINK">متن</a> HyperLink')
               lang.set_text(LANG, 'H:ECO:I', '> `تکرار`\n\n`<درون خطی>`\n\n*> کاربرد >>*\n\n `@Question_Robot echo متن` <متن Format MarkDown|HTML>\n\n*مثال* : `@Question_Robot echo *Hello*`\n\nMarkdown HELP : \\*Bold\\* \n\n- \\_Italic\\_ \n\n- \\`PreCode\\` \n\n- \\[متن]\\(Link) Hyperlink\n\nHTML Help : <b>Bold</b> \n\n- <i>Italic</i> \n\n- <code>PreCode</code> \n\n- <a href="LINK">متن</a> HyperLink')
               lang.set_text(LANG, 'H:HDT:I', '> `ارسال پیام مخفی`\n\n`<درون خطی>`\n\n*> کاربرد >>*\n `@Question_Robot مخفی کن <متن>`\n\n*E.G* : `@Question_Robot مخفی کن Hello`')
               lang.set_text(LANG, 'H:PY:I', '> `پرداخت درون خطی`\n\n*> کاربرد >>*\n> `@QuestionRobot pay <Fee <In Tomans>>`\n\n*مثال* : `@Question_Robot pay 10000`\n\n')
               lang.set_text(LANG, 'H:PY:T', '> `پرداخت`\n\n*> کاربرد >>*\n> `/pay <Fee <In Tomans>>`\n\n*E.G* : `/pay 10000`\n\n')
               lang.set_text(LANG, 'H:TR:I', '> `مترجم درون خطی`\n\n*> کاربرد >>*\n\n> `@Question_Robot translate <متن>`\n\n*E.G* : `@Question_Robot translate <متن>`')
               lang.set_text(LANG, 'Owner', 'مالک اصلی :')
               lang.set_text(LANG, 'list:banned', 'لیست مسدودین :\n')
               lang.set_text(LANG, 'list:bannedE', 'هیچ مسدود شده ای نیست ;) ')


               lang.set_text(LANG, 'SET:Rules', ' قوانین گروه تنظیم شد !! ')
               lang.set_text(LANG, 'SET:link', ' لینک گروه تنظیم شد !! ')
               lang.set_text(LANG, 'SET:name', ' نام گروه تنظیم شد !! ')
               lang.set_text(LANG, 'filter_egul', ' ازاد شد ')
               lang.set_text(LANG, 'filter_plus', ' فیلتر شد')

               --filter_egul
            	cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, 'زبان فارسی بهروز شد!', 0, 'MarkDown')
         	end
			-------------------------------------------------------
            if matches[1] == 'update en' and rank.is_Sudo(msg) then
  				LANG = 'en'
            lang.set_text(LANG, 'SET:Rules', ' Rules Saved !! ')
               lang.set_text(LANG, 'SET:link', ' Link Saved !! ')
               lang.set_text(LANG, 'SET:name', ' Group Name Changed !! ')
lang.set_text(LANG, 'filter_egul', ' unfilterd ')
               lang.set_text(LANG, 'filter_plus', ' filterd')
               lang.set_text(LANG, 'list:banned', 'Group Banlist :\n')
               lang.set_text(LANG, 'list:bannedE', 'there are No BannedUsers ;) ')
               lang.set_text(LANG, 'Error:API:B', 'Error NumberCant be That')
            	lang.set_text(LANG, 'Owner', 'Owner :')
            	lang.set_text(LANG, 'list:mods', 'Group Moderators List :\n')
  				   lang.set_text(LANG, 'list:modsE', 'thare are no Moderators')
            	lang.set_text(LANG, 'list:exadmins', '\n----------------\nGroup ExtraAdmins List :\n')
				   lang.set_text(LANG, 'list:exadminsE', '\n----------------\nthere are No ExtraAdmins')
            	lang.set_text(LANG, 'list:muted', 'Group MutedUsers List :\n')
				   lang.set_text(LANG, 'list:mutedE', 'there are No MutedUsers ')
				   lang.set_text(LANG, 'list:sudos', 'F80 Sudoers List :\n')
				   lang.set_text(LANG, 'list:admins', 'F80 GloballyAdmins List :\n')
				   lang.set_text(LANG, 'list:bots', 'Group API Bots List :\n')
            	lang.set_text(LANG, 'list:filterd', 'Group FilterdWords List :\n')
				   lang.set_text(LANG, 'list:filterdE', 'There Are No FilterdWords')
				   lang.set_text(LANG, 'clean:mods', '*Moderators Cleand.*\n_Last Moderators_.:\n')
				   lang.set_text(LANG, 'clean:exadmins', '*ExtraAdmins Cleand.*\n_Last ExtraAdmins_.:\n')
				   lang.set_text(LANG, 'clean:muted', '*MutedUsers Cleand.*\n_Last MutedUsers_.:\n')
				   lang.set_text(LANG, 'clean:filterd', '*FilterdWords Cleand.*\n_Last FilterdWords_.:\n')
				   lang.set_text(LANG, 'clean:msg', '*Messages Cleaned*\n')
				   lang.set_text(LANG, 'clean:link', '*Group Link Cleaned.*\n')
				   lang.set_text(LANG, 'clean:wlc', '*Group Welcome Message Cleaned.*\n')
				   lang.set_text(LANG, 'clean:all', '*All Of Messages That I Have Accsess Deleted.*\n')
				   lang.set_text(LANG, 'clean:bots', '*Group API Bots Cleaned.*\n')
   				lang.set_text(LANG, 'ID:1', 'ChatID')
   				lang.set_text(LANG, 'ID:2', 'UserID')
   				lang.set_text(LANG, 'ID:3', 'Username')
   				lang.set_text(LANG, 'ID:4', 'Name')
   				lang.set_text(LANG, 'Prom:1', '`User Rank is Higher ...`')
   				lang.set_text(LANG, 'Prom:2', '`I Can\' Promote MySelf...`')
   				lang.set_text(LANG, 'Prom:3', ' is Already a Moderator.')
   				lang.set_text(LANG, 'Prom:4', ' Promoted To Moderator.')
   				lang.set_text(LANG, 'Dem:1', ' is not a Moderator.')
   				lang.set_text(LANG, 'Dem:2', ' is nolonger a Moderator.')
   				lang.set_text(LANG, 'ExA:3', ' is Already an ExtraAdmin.')
   				lang.set_text(LANG, 'ExA:4', ' Promoted To ExtraAdmin.')
   				lang.set_text(LANG, 'ExAD:1', ' is not an ExtraAdmin.')
   				lang.set_text(LANG, 'ExAD:2', ' is not longer An ExtraAdmin.')
   				lang.set_text(LANG, 'Owner:3', ' is Already Group Owner.')
   				lang.set_text(LANG, 'Owner:4', ' Seted as GroupOwner.')
   				lang.set_text(LANG, 'OwnerD:1', ' is Not Group Owner.')
   				lang.set_text(LANG, 'OwnerD:2', ' is nolonger GroupOwner.')
   				lang.set_text(LANG, 'Sudo:2', ' is Already Sudoer.')
   				lang.set_text(LANG, 'Sudo:3', ' is now a Sudoer.')
   				lang.set_text(LANG, 'SudoD:1', ' is not Sudoer.')
   				lang.set_text(LANG, 'SudoD:2', ' is nolonger a Sudoer.')
   				lang.set_text(LANG, 'Admin:3', ' is Already GloballyAdmin.')
   				lang.set_text(LANG, 'Admin:4', ' is now a GloballyAdmin.')
   				lang.set_text(LANG, 'AdminD:1', ' is not GloballyAdmin.')
   				lang.set_text(LANG, 'AdminD:2', ' is nolonger a GloballyAdmin.')
   				lang.set_text(LANG, 'Kicked:3', ' Kicked.')
   				lang.set_text(LANG, 'Invite:1', ' Invited.')
   				lang.set_text(LANG, 'Kicked:2', ' I Cant Kick Myself...')
   				lang.set_text(LANG, 'Kicked:1', ' User Have Rank...')
   				lang.set_text(LANG, 'ban:1', '`User Rank is Higher ...`')
   				lang.set_text(LANG, 'ban:2', '`I Can\' Ban MySelf...`')
   				lang.set_text(LANG, 'ban:3', ' is Already Banned.')
   				lang.set_text(LANG, 'ban:4', ' Banned.')
   				lang.set_text(LANG, 'uban:1', ' is not Banned.')
   				lang.set_text(LANG, 'uban:2', ' UnBanned.')
   				lang.set_text(LANG, 'mute:1', '`User Rank is Higher ...`')
   				lang.set_text(LANG, 'mute:2', '`I Can\' Ban MySelf...`')
   				lang.set_text(LANG, 'mute:3', ' is Already Mute.')
   				lang.set_text(LANG, 'mute:4', ' Muted.')
   				lang.set_text(LANG, 'unmute:1', ' is not Muted.')
   				lang.set_text(LANG, 'unmute:2', ' UnMuted.')
   				lang.set_text(LANG, 'Settings:1', 'Links')
   				lang.set_text(LANG, 'Settings:2', 'Hashtag #')
   				lang.set_text(LANG, 'Settings:3', 'Mention')
   				lang.set_text(LANG, 'Settings:4', 'Edit Message')
   				lang.set_text(LANG, 'Settings:5', 'Pin Message')
   				lang.set_text(LANG, 'Settings:6', 'FastMessage')
   				lang.set_text(LANG, 'Settings:6c', 'FastMessageCount')
   				lang.set_text(LANG, 'Settings:6t', 'FastMessageTime')
   				lang.set_text(LANG, 'Settings:7', 'longmessage')
   				lang.set_text(LANG, 'Settings:7c', 'longmessageCharr')
   				lang.set_text(LANG, 'Settings:8', 'ShortMessage')
   				lang.set_text(LANG, 'Settings:8c', 'ShortMessageCharr')
   				lang.set_text(LANG, 'Settings:9', 'Media Caption')
   				lang.set_text(LANG, 'Settings:10', 'Persian Caption')
   				lang.set_text(LANG, 'Settings:11', 'English Caption')
   				lang.set_text(LANG, 'Settings:12', 'Text')
   				lang.set_text(LANG, 'Settings:13', 'Persian Text')
   				lang.set_text(LANG, 'Settings:14', 'English Text')
   				lang.set_text(LANG, 'Settings:15', 'Media')
   				lang.set_text(LANG, 'Settings:16', 'Forward')
   				lang.set_text(LANG, 'Settings:17', 'Forward from Channel')
   				lang.set_text(LANG, 'Settings:18', 'Forward from User')
   				lang.set_text(LANG, 'Settings:19', 'Reply')
   				lang.set_text(LANG, 'Settings:20', 'Inline')
   				lang.set_text(LANG, 'Settings:21', 'Keyboard')
   				lang.set_text(LANG, 'Settings:22', 'InlineGame')
   				lang.set_text(LANG, 'Settings:23', 'Voice')
   				lang.set_text(LANG, 'Settings:24', 'Music')
   				lang.set_text(LANG, 'Settings:25', 'Location')
   				lang.set_text(LANG, 'Settings:26', 'English')
   				lang.set_text(LANG, 'Settings:27', 'Persian')
   				lang.set_text(LANG, 'Settings:28', 'Photo')
   				lang.set_text(LANG, 'Settings:29', 'Video')
   				lang.set_text(LANG, 'Settings:30', 'Share PhoneNumber')
   				lang.set_text(LANG, 'Settings:31', 'WebPages')
   				lang.set_text(LANG, 'Settings:32', 'AtSign @')
   				lang.set_text(LANG, 'Settings:33', 'Animation')
   				lang.set_text(LANG, 'Settings:34', 'Files')
   				lang.set_text(LANG, 'Settings:35', 'Stickers')
   				lang.set_text(LANG, 'Settings:36', 'Bots')
   				lang.set_text(LANG, 'Settings:37', 'Language')
   				lang.set_text(LANG, 'Settings:38', 'Commands Language')
   				lang.set_text(LANG, 'Settings:39', 'Expire')
   				lang.set_text(LANG, 'Settings:40', 'SilentMode')
   				lang.set_text(LANG, 'Settings:41', 'Api Mode')
   				lang.set_text(LANG, 'lock:edit:f', '> *Error* _Edit Message Text Is Already Locked_')
   				lang.set_text(LANG, 'lock:edit:d', '> _Edit Message Text hasbeen Locked_')
   				lang.set_text(LANG, 'Unlock:edit:f', '> *Error* _Edit Message Text Is not Locked_')
   				lang.set_text(LANG, 'Unlock:edit:d', '> _Edit Message Unlocked_')
   				lang.set_text(LANG, 'lock:pin:f', '> *Error* _Pining a Message is already locked_')
   				lang.set_text(LANG, 'lock:pin:d', '> _Pinning Messages Locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:pin:f', '> *Error* _Pinning A Message is not locked_')
   				lang.set_text(LANG, 'Unlock:pin:d', '> _Pinning A Message Unlocked_')
   				lang.set_text(LANG, 'lock:flood:f', '> *Error*\n`>`_Flooding is already Locked..._')
   				lang.set_text(LANG, 'lock:flood:d', '> _Flooding Hasbeen Locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:flood:f', '> *Error* _Flood is not Locked_')
   				lang.set_text(LANG, 'Unlock:flood:d', '> _Flooding Unlocked_')
   				lang.set_text(LANG, 'lock:longmessage:f', '> *Error*\n`>`_Sending_ *LongMessage* _More than _: `%d`_ is Already Locked..._')
   				lang.set_text(LANG, 'lock:longmessage:d', '> _Sending_ *LongMessage* _More than _: `%d`_ hasbeen Locked..._\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:longmessage:f', '> *Error* _Sending LongMessage is not locked_')
   				lang.set_text(LANG, 'Unlock:longmessage:d', '> _Sending LongMessage Unlocked_')
   				lang.set_text(LANG, 'lock:shortmessage:f', '> *Error*\n`>`_Sending_ *ShortMessage* _Lower than _: `%d`_ is Already Locked..._')
   				lang.set_text(LANG, 'lock:shortmessage:d', '> _Sending_ *ShortMessage* _Lower than _: `%d`_ hasbeen Locked..._\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:shortmessage:f', '> *Error* _Sending ShortMessage is not locked_')
   				lang.set_text(LANG, 'Unlock:shortmessage:d', '> _Sending ShortMessage Unlocked_')
   				lang.set_text(LANG, 'lock:caption:f', '> *Error*\n_Caption is already locked_')
   				lang.set_text(LANG, 'lock:caption:d', '> _Caption hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:caption:f', '> *Error* _Caption Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:caption:d', '> _Caption Unlocked_')
   				lang.set_text(LANG, 'lock:forward:f', '> *Error*\n _Forwarding Message is already locked_')
   				lang.set_text(LANG, 'lock:forward:d', '> _Forwarding Message hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:forward:f', '> *Error* _Forwarding Message Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:forward:d', '> _Forwarding Message Unlocked_')
   				lang.set_text(LANG, 'lock:channelforward:f', '> *Error*\n _Forwarding Message from Channels is already locked_')
   				lang.set_text(LANG, 'lock:channelforward:d', '> _Forwarding Message from Channels hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:channelforward:f', '> *Error* _Forwarding Message from Channels Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:channelforward:d', '> _Forwarding Message from Channels Unlocked_')
   				lang.set_text(LANG, 'lock:userforward:f', '> *Error*\n _Forwarding Message from Users(NotChannels) is already locked_')
   				lang.set_text(LANG, 'lock:userforward:d', '> _Forwarding Message from Users(NotChannels) hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:userforward:f', '> *Error* _Forwarding Message from Users(NotChannels) Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:userforward:d', '> _Forwarding Message from Users(NotChannels) Unlocked_')
   				lang.set_text(LANG, 'lock:reply:f', '> *Error*\n _Reply(OnMessages) is already locked_')
   				lang.set_text(LANG, 'lock:reply:d', '> _Reply(OnMessages) hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:reply:f', '> *Error* _Reply(OnMessages) Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:reply:d', '> _Reply(OnMessages) Unlocked_')
   				lang.set_text(LANG, 'lock:inline:f', '> *Error*\n _Inline(E.g @BOLD) using is already locked_')
   				lang.set_text(LANG, 'lock:inline:d', '> _Inline(E.g @BOLD) using hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:inline:f', '> *Error* _Inline(E.g @BOLD) using Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:inline:d', '> _Inline(E.g @BOLD) using Unlocked_')
   				lang.set_text(LANG, 'lock:game:f', '> *Error*\n _Inline Game(E.g @Gamee) using is already locked_')
   				lang.set_text(LANG, 'lock:game:d', '> _Inline Game(E.g @Gamee) using hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:game:f', '> *Error* _Inline Game(E.g @Gamee) using Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:game:d', '> _Inline Game(E.g @Gamee) using Unlocked_')
   				lang.set_text(LANG, 'lock:keyboard:f', '> *Error*\n _Inline Keyboard using is already locked_')
   				lang.set_text(LANG, 'lock:keyboard:d', '> _Inline Keyboard using hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:keyboard:f', '> *Error* _Inline Keyboard using Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:keyboard:d', '> _Inline Keyboard using Unlocked_')
   				lang.set_text(LANG, 'lock:text:f', '> *Error*\n _Chat is already locked_')
   				lang.set_text(LANG, 'lock:text:d', '> _Chat hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:text:f', '> *Error* _Chating Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:text:d', '> _Chat Unlocked_')
   				lang.set_text(LANG, 'lock:textarabic:f', '> *Error*\n _Arabic Chating is already locked_')
   				lang.set_text(LANG, 'lock:textarabic:d', '> _Arabic Chating hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:textarabic:f', '> *Error* _Arabic Chating Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:textarabic:d', '> _Arabic Chating Unlocked_')
   				lang.set_text(LANG, 'lock:textenglish:f', '> *Error*\n _English Chating is already locked_')
   				lang.set_text(LANG, 'lock:textenglish:d', '> _English Chating hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:textenglish:f', '> *Error* _English Chating Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:textenglish:d', '> _English Chating Unlocked_')
   				lang.set_text(LANG, 'lock:arabic:f', '> *Error*\n _Arabic Words is already locked_')
   				lang.set_text(LANG, 'lock:arabic:d', '> _Arabic Words hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:arabic:f', '> *Error* _Arabic Words Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:arabic:d', '> _Arabic Words Unlocked_')
   				lang.set_text(LANG, 'lock:english:f', '> *Error*\n _English Words is already locked_')
   				lang.set_text(LANG, 'lock:english:d', '> _English Words hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:english:f', '> *Error* _English Words Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:english:d', '> _English Words Unlocked_')
   				lang.set_text(LANG, 'lock:captionarabic:f', '> *Error*\n _Arabic Caption is already locked_')
   				lang.set_text(LANG, 'lock:captionarabic:d', '> _Arabic Caption hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:captionarabic:f', '> *Error* _Arabic Caption Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:captionarabic:d', '> _Arabic Caption Unlocked_')
   				lang.set_text(LANG, 'lock:captionenglish:f', '> *Error*\n _English Caption is already locked_')
   				lang.set_text(LANG, 'lock:captionenglish:d', '> _English Caption hasbeen locked_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:captionenglish:f', '> *Error* _English Caption Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:captionenglish:d', '> _English Caption Unlocked_')
   				lang.set_text(LANG, 'lock:voice:f', '> *Error*\n _Voice is Already Locked_')
   				lang.set_text(LANG, 'lock:voice:d', '> _Voice hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:voice:f', '> *Error* _Voice Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:voice:d', '> _Voice Unlocked_')
   				lang.set_text(LANG, 'lock:music:f', '> *Error*\n _Musics is Already Locked_')
   				lang.set_text(LANG, 'lock:music:d', '> _Musics hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:music:f', '> *Error* _Musics Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:music:d', '> _Musics Unlocked_')
   				lang.set_text(LANG, 'lock:location:f', '> *Error*\n _Location is Already Locked_')
   				lang.set_text(LANG, 'lock:location:d', '> _Location hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:location:f', '> *Error* _Location Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:location:d', '> _Location Unlocked_')
   				lang.set_text(LANG, 'lock:photo:f', '> *Error*\n _Photo is Already Locked_')
   				lang.set_text(LANG, 'lock:photo:d', '> _Photo hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:photo:f', '> *Error* _Photo Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:photo:d', '> _Photo Unlocked_')
   				lang.set_text(LANG, 'lock:video:f', '> *Error*\n _Video is Already Locked_')
   				lang.set_text(LANG, 'lock:video:d', '> _Video hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:video:f', '> *Error* _Video Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:video:d', '> _Video Unlocked_')
   				lang.set_text(LANG, 'lock:sharenumber:f', '> *Error*\n _ContactSharing is Already Locked_')
   				lang.set_text(LANG, 'lock:sharenumber:d', '> _ContactSharing hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:sharenumber:f', '> *Error* _ContactSharing Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:sharenumber:d', '> _ContactSharing Unlocked_')
   				lang.set_text(LANG, 'lock:webpage:f', '> *Error*\n _WebPages is Already Locked_')
   				lang.set_text(LANG, 'lock:webpage:d', '> _WebPages hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:webpage:f', '> *Error* _WebPages Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:webpage:d', '> _WebPages Unlocked_')
   				lang.set_text(LANG, 'lock:link:f', '> *Error*\n _Link is Already Locked_')
   				lang.set_text(LANG, 'lock:link:d', '> _Link hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:link:f', '> *Error* _Link Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:link:d', '> _Link Unlocked_')
   				lang.set_text(LANG, 'lock:mention:f', '> *Error*\n _Mention is Already Locked_')
   				lang.set_text(LANG, 'lock:mention:d', '> _Mention hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:mention:f', '> *Error* _Mention Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:mention:d', '> _Mention Unlocked_')
   				lang.set_text(LANG, 'lock:hashtag:f', '> *Error*\n _Hashtag # is Already Locked_')
   				lang.set_text(LANG, 'lock:hashtag:d', '> _Hashtag # hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:hashtag:f', '> *Error* _Hashtag # Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:hashtag:d', '> _Hashtag # Unlocked_')
   				lang.set_text(LANG, 'lock:atsign:f', '> *Error*\n _AtSign @ is Already Locked_')
   				lang.set_text(LANG, 'lock:atsign:d', '> _AtSign @ hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:atsign:f', '> *Error* _AtSign @ Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:atsign:d', '> _AtSign @ Unlocked_')
   				lang.set_text(LANG, 'lock:file:f', '> *Error*\n _File/Documents is Already Locked_')
   				lang.set_text(LANG, 'lock:file:d', '> _File/Documents hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:file:f', '> *Error* _File/Documents Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:file:d', '> _File/Documents Unlocked_')
   				lang.set_text(LANG, 'lock:animation:f', '> *Error*\n _Animation/Gifs is Already Locked_')
   				lang.set_text(LANG, 'lock:animation:d', '> _Animation/Gifs hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:animation:f', '> *Error* _Animation/Gifs Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:animation:d', '> _Animation/Gifs Unlocked_')
   				lang.set_text(LANG, 'lock:stickers:f', '> *Error*\n _Stickers is Already Locked_')
   				lang.set_text(LANG, 'lock:stickers:d', '> _Stickers hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:stickers:f', '> *Error* _Stickers Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:stickers:d', '> _Stickers Unlocked_')
   				lang.set_text(LANG, 'lock:bots:f', '> *Error*\n _API Bots is Already Locked_')
   				lang.set_text(LANG, 'lock:bots:d', '> _API Bots hasbeen locked_\n')
   				lang.set_text(LANG, 'Unlock:bots:f', '> *Error* _API Bots Wasn\'t locked_')
   				lang.set_text(LANG, 'Unlock:bots:d', '> _API Bots Unlocked_')
				   lang.set_text(LANG, 'lock:APIMOD:f', '> *Error*\n _APIMode Was Enable_')
   				lang.set_text(LANG, 'lock:APIMOD:d', '> _APIMode Enabled_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:APIMOD:f', '> *Error* _APIMode Wasn\'t Enable_')
   				lang.set_text(LANG, 'Unlock:APIMOD:d', '> _APIMode Disabled_')
   				lang.set_text(LANG, 'lock:SilenMode:f', '> *Error*\n _SilentMode Was Enable_')
   				lang.set_text(LANG, 'lock:SilenMode:d', '> _SilentMode Enabled_\n[Whats That?](t.me/SPRCPU_Help)')
   				lang.set_text(LANG, 'Unlock:SilenMode:f', '> *Error* _SilentMode Wasn\'t Enable_')
   				lang.set_text(LANG, 'Unlock:SilenMode:d', '> _SilentMode Disabled_')
   				---------------
   				--Question Language DataBase :D
   				---------------
   				lang.set_text(LANG, 'Help', '> Helpℹ️')
               lang.set_text(LANG, 'Back', '> Return 🔙')
   				lang.set_text(LANG, 'Send', '> Send [MarkDownFormat] >>')
               lang.set_text(LANG, 'Next', '> Next >>')
               lang.set_text(LANG, 'Cancel', '> Cancel')
   				lang.set_text(LANG, 'Canceled', '> Action Canceled')
   				lang.set_text(LANG, 'Relang', '> ReSelect Language➰')
   				lang.set_text(LANG, 'Start_TEXT', '> *Hello :)*\n`Welcome To QuestionRobot`')
   				lang.set_text(LANG, 'HelpTXT', '> `Use Buttems to See Each Plugin\'s Help `')
   				lang.set_text(LANG, 'HelpSupport', '> Help & Support')
   				lang.set_text(LANG, 'SendChannel', '> Channel Sending')
   				lang.set_text(LANG, 'Buy:P', '> Buy Page')
   				lang.set_text(LANG, 'SendChannel:H', '> `Send Channel`\n'
   					..'> `You Can Use This Feature To Send` *MarkDown* `And` *GlassKeyboard* `To Your Channel`\n'
   					..'> `Use` [/SendChannel](t.me/Question_Robot?start=sendchannel) `To Start ;)`')
   				lang.set_text(LANG, 'Upload', '> UpLoader')
   				lang.set_text(LANG, 'Uploader:H', '> `FileUploader`\n'
   					..'> *Upload* `Your Files To Our Servers and get A Link For Downloading`*(Up to 1.5GiB)*` ... `\n'
   					..'> `Use` [/Upload](t.me/Question_Robot?start=upload) `To Start ;)`')
   				lang.set_text(LANG, 'Download', '> DownLoader')
   				lang.set_text(LANG, 'DownLoader:H', '> `Download`\n'
   					..'> *Download* `Your Files To Telegram Servers and Send it as A File `*(Up to 1.5GiB)*` ... `\n'
   					..'> `Use` [/Download](t.me/Question_Robot?start=download) `To Start ;)`')
   				lang.set_text(LANG, 'GroupBuying', '> GroupBuying')
   				lang.set_text(LANG, 'Buy:H', '> `F80 Groups`\n'
   					..'> `Buy A Cli GroupManaget Bot To Manage You Group(s) Easily`\n'
   					..'> *Use Buttem Bellow To Pay And Got The Bot :D*')
   				lang.set_text(LANG, 'Buy:N', '> `F80 Groups`\n'
   					..'> *First Click* [Here](%s) *Then Pay it*\n*then Use Buttem Bellow*\n'
   					..'> `Then Send You Group Link & Do Other works we need it ;)`')
   				lang.set_text(LANG, 'Buy:S', '> `Select Your Plan :`')
   				lang.set_text(LANG, 'Buy:1', '> Plan 1 >>')
   				lang.set_text(LANG, 'Buy:2', '> Plan 2 >>')
   				lang.set_text(LANG, 'Buy:3', '> Plan 3 >>')
   				lang.set_text(LANG, 'Buy:4', '> Plan 4 >>')
   				lang.set_text(LANG, 'Buy:5', '> Plan TEST >>')
   				lang.set_text(LANG, 'Buy:D', '> Next Page For Pay')
   				lang.set_text(LANG, 'Buy:SU', '> Payed >>')
   				lang.set_text(LANG, 'Buy:PLNS:1', '> Plan `1` Selected\n> Cost : `40000` Rials\n>Time `1` Mounth')
   				lang.set_text(LANG, 'Buy:PLNS:2', '> Plan `2` Selected\n> Cost : `70000` Rials\n>Time `2` Mounths')
   				lang.set_text(LANG, 'Buy:PLNS:3', '> Plan `3` Selected\n> Cost : `110000` Rials\n>Time `3` Mounths')
   				lang.set_text(LANG, 'Buy:PLNS:4', '> Plan `4` Selected\n> Cost : `200000` Rials\n>Time *Unlimited*')
   				lang.set_text(LANG, 'Buy:PLNS:5', '> Plan `TEST` Selected\n> Cost : `0` Rials\n>Time `2` Days')
   				lang.set_text(LANG, 'Buy:True', '> Payed >>')
   				lang.set_text(LANG, 'Buy:False', '> `UnPayed`\n')
   				lang.set_text(LANG, 'Buy:FALSE:S', '> `You Used Test plan one time sorry ;)`')
   				lang.set_text(LANG, 'Buy:True', '> `Pay Success`\n`SendYour Group Link `')
               lang.set_text(LANG, 'LetMeCheck', '> `Let Me Check Your Link ...`')
               lang.set_text(LANG, 'linkF', '> `Link NotValied`')
               lang.set_text(LANG, 'linkT', '> `I joined Your group`')
               lang.set_text(LANG, 'UsNX', '> `Use Buttem`')
               lang.set_text(LANG, 'UsNXt', '> `Forward A Message From Your Group Admins`')
               lang.set_text(LANG, 'UserADD', '> `User %s Added As ExtraAdmin`\n*Now You Can Use Your Group*\n>You Are Group Owner :D')
               lang.set_text(LANG, 'ChS', '[َ](https://storage.pwrtelegram.xyz/Question_RoBot/video/file_540.mp4)> `Channel Sender Enabled`\n> *First Promote Me As Admin to your channel then Send Your Channel username*')
               lang.set_text(LANG, 'UploadS', '> `Send Your File <Video\\Photo\\Documents>`')
   				lang.set_text(LANG, 'DownLoadS', '> `SendYour Link <Just ZIP Files>`')
               lang.set_text(LANG, 'Link:H', '> `YourLink`\n'
                  ..'> *Use *[/Link](t.me/Question_Robot?start=MyLink) *To See Your Link*\n'
                  ..'> `Share Your Link And Collect Coins ...`')
               lang.set_text(LANG, 'Link', '> YourLink\n'
                  ..'> t.me/Question_Robot?start=%s \n'
                  ..'> Share it And Collect Coins ...')
               lang.set_text(LANG, 'Coins:H', '> `Your Coins`\n> *You have* : `%d` *Coins Left*')
               lang.set_text(LANG, 'MyCoinsJ', '> Coins')
               lang.set_text(LANG, 'LinkJ', '> YourLink')
               lang.set_text(LANG, 'InstaDL', '> InstaDownloader')
               lang.set_text(LANG, 'Time', '> Time')
               lang.set_text(LANG, 'Time:H', '> `Time`\n> Use Buttem to see Time ;)')
               lang.set_text(LANG, 'Time:P', '> See Time')
               lang.set_text(LANG, 'Insta:P', '> Use it ;)')
               lang.set_text(LANG, 'Insta:H', '> `Insta DownLoader`\n> *After useing buttem bellow then send instalink*\n')
               lang.set_text(LANG, 'InstaDLRS', [[
1⃣ Tap the "*...*" icon below the photo.

2⃣  When the menu pops up, click "*Copy Share URL*", and a quick message will pop up that says "*Link copied to clipboard*".

3⃣ To Download it, you must open Telegram and send it to me!
Tap and hold the message field. When you let go, the paste option will appear. Tap it to paste the link and click "*Send*".

4⃣ i will send you photo or video from you'r link.

5⃣ Have Fun!

`Remember: i will not work if you send link from private users on instagram`.]])

               lang.set_text(LANG, 'LMC:V', '> LetMeCheck Your Video')
               lang.set_text(LANG, 'DLD:V', '> `Video Downloaded...`\n')
               lang.set_text(LANG, 'SNDNG:V', '> `Uploading ...`')
               lang.set_text(LANG, 'ColC:H', '> `You need Coins :P`\n> Use Buttems for help in each method for getting coins')
               lang.set_text(LANG, 'ColC', '> Collect Coins')
               lang.set_text(LANG, 'ShareLink', '> LinkSharing')
               lang.set_text(LANG, 'NFC', '> NotEnogh Coins ... >> Collect more > [/Link](t.me/Question_Robot?start=MyLink)')
               lang.set_text(LANG, 'InlineHelp', [[
*Inline Usage Help*
`Translator` 
`@Question_Robot tr your text`
_e.g_ : `@Question_Robot tr Hello`
`Will Return Translated of` *Hello*
`HideIT` 
`@Question_Robot hideit your text`
_e.g_ : `@Question_Robot hideit Hello`
`Will send a hidden message`
`DownLoader` 
`@Question_Robot download Link`
_e.g_ : `@Question_Robot download SomeLinks`
`Will send file of link`
`Echo System` 
`@Question_Robot TEXT`
_e.g_ : `@Question_Robot Hello`
`Return Hello`
 `-- You Can Use MarkDown Format and HTML Format`
]])
               lang.set_text(LANG, 'ChS:1', '> `Send Your Channel Username ...`')
               lang.set_text(LANG, 'ChS:2', '> `SendYour Text/Media <Media Type : photo, Video, Documents> ...`')
               lang.set_text(LANG, 'ChS:2;F', '> `Promote Me To Adminstrator In your channel First then Try Again`')
               lang.set_text(LANG, 'ChS:2:F', '> `You Are not that channel Adminstrator`')
               lang.set_text(LANG, 'Cancel:Download', '> Cancel')
               lang.set_text(LANG, 'Download:APP', '> Download >>')
               lang.set_text(LANG, 'App:Dl', '> Download Your %s App by click here on buttem')
               lang.set_text(LANG, 'DLD:F', '> `Downloading Your File...`')
               lang.set_text(LANG, 'SNDNG:F', '> `Uploading To Telegram Servers ...`')
               lang.set_text(LANG, 'IG:I', '> instagram➰ 📸')
               lang.set_text(LANG, 'IG:T', '> instagram 📸')
               lang.set_text(LANG, 'APK:I', '> ApkSearch➰ 📲')
               lang.set_text(LANG, 'DLR:I', '> FileDownloader➰ 📥')
               lang.set_text(LANG, 'DLR:T', '> FileDownloader 📥')
               lang.set_text(LANG, 'ECO:T', '> Echo 🎙')
               lang.set_text(LANG, 'ECO:I', '> Echo➰ 🎙')
               lang.set_text(LANG, 'HDT:I', '> Hideit➰ ♻️')
               lang.set_text(LANG, 'PY:I', '> Payment➰ 💳')
               lang.set_text(LANG, 'PY:T', '> Payment 💳')
               lang.set_text(LANG, 'TR:I', '> Translator➰ 💱')
               lang.set_text(LANG, 'H:IG:I', '> `Instagram Downloader`\n\n`<Inline Mode>`\n\n*Cost💰* : `5` SPRs For Photos & `8` SPRs For Videos.\n\n> *Usage >>*\n\n`@Question_Robot instadownloader Your InstaLINK`\n\n*E.G* : `@Question_Robot instadownloader https://instagram.com/p/BLuufSdDnwj`\n\n#Good\\_Luck ;)')
               lang.set_text(LANG, 'H:IG:T', '> `Instagram Downloader`\n\n*Cost💰* : `5` SPRs For Photos & `8` SPRs For Videos.\n\n> *Usage >>*\n\n`/instadownloader Your InstaLINK`\n\n*E.G* : `/instadownloader https://instagram.com/p/BLuufSdDnwj`\n\n#Good\\_Luck ;)')
               lang.set_text(LANG, 'H:APK:I', '> `ApkSearcher`\n\n> `<Inline Mode>`\n\n*> Usage >>*\n\n> `@Question_Robot apksearch <AppName>`\n\n*E.G* : `@Question_Robot apksearch Telegram`')
               lang.set_text(LANG, 'H:DLR:I', '> `Downloader`\n\n> `<Inline Mode>`\n\n*> Usage >>*\n\n> `@Question_Robot download <Link {Just ZIP & PDF Files}>`\n\n*E.G* : `@Question_Robot download https://telegram.org/Question_RoBot/document/file_570.pdf`')
               lang.set_text(LANG, 'H:DLR:T', '> `Downloader`\n\n*> Usage >>*\n\n> [/Download](t.me/Question_Robot?start=download)\n\n`Then Send Your link ;)`')
               lang.set_text(LANG, 'H:ECO:T', '> `Echo`\n\n\n\n*> Usage >>*\n\n `/Echo TEXT` <TEXT Format MarkDown|HTML>\n\n*E.G* : `/Echo *Hello*`\n\nMarkdown HELP : \\*Bold\\* \n\n- \\_Italic\\_ \n\n- \\`PreCode\\` \n\n- \\[TEXT](Link) Hyperlink\n\nHTML Help : <b>Bold</b> \n\n- <i>Italic</i> \n\n- <code>PreCode</code> \n\n- <a href="LINK">TEXT</a> HyperLink')
               lang.set_text(LANG, 'H:ECO:I', '> `Echo`\n\n`<Inline Mode>`\n\n*> Usage >>*\n\n `@Question_Robot echo TEXT` <TEXT Format MarkDown|HTML>\n\n*E.G* : `@Question_Robot echo *Hello*`\n\nMarkdown HELP : \\*Bold\\* \n\n- \\_Italic\\_ \n\n- \\`PreCode\\` \n\n- \\[TEXT]\\(Link) Hyperlink\n\nHTML Help : <b>Bold</b> \n\n- <i>Italic</i> \n\n- <code>PreCode</code> \n\n- <a href="LINK">TEXT</a> HyperLink')
               lang.set_text(LANG, 'H:HDT:I', '> `SendHidden Message`\n\n`<Inline Mode>`\n\n*> Usage >>*\n `@Question_Robot hideit <Text>`\n\n*E.G* : `@Question_Robot hideit Hello`')
               lang.set_text(LANG, 'H:PY:I', '> `Inline Payment`\n\n*> Usage >>*\n> `@QuestionRobot pay <Fee <In Tomans>>`\n\n*E.G* : `@Question_Robot pay 10000`\n\n')
               lang.set_text(LANG, 'H:PY:T', '> `Payment`\n\n*> Usage >>*\n> `/pay <Fee <In Tomans>>`\n\n*E.G* : `/pay 10000`\n\n')
               lang.set_text(LANG, 'H:TR:I', '> `Inline Translator`\n\n*> Usage >>*\n\n> `@Question_Robot translate <TEXT>`\n\n*E.G* : `@Question_Robot translate <TEXT>`')


          	cli.sendText(msg.chat_id_, msg.id_, 0, 0, nil, '> *Down*\n> `English Database Updated`', 0, 'MarkDown')
  			end
		end
	end



	return {
		patterns = {
			'^([Pp][Ll][Uu][Gg][Ii][Nn][Ss])$',
			'^(update en)$',
			'^(update fa)$',
			'^(reload)$',
	--		'^(!) (https://telegram.me/joinchat/%S+) plan(.*)',
			'^(addlinks) (.*)',
		},
		run = Run
	}