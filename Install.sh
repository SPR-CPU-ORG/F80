#!/bin/bash
tgcli_version=1222
TMUX_SESSION=F80
luarocks_version=2.4.2

lualibs=(
'luasec'
'luarepl'
'lbase64 20120807-3'
'luafilesystem'
'lub'
'lua-term'
'luaexpat'
'redis-lua'
'lua-cjson'
'fakeredis'
'xml'
'feedparser'
'serpent'
)

today=`date +%F`

get_sub() {
    local flag=false c count cr=$'\r' nl=$'\n'
    while IFS='' read -d '' -rn 1 c; do
        if $flag; then
            printf '%c' "$c"
        else
            if [[ $c != $cr && $c != $nl ]]; then
                count=0
            else
                ((count++))
                if ((count > 1)); then
                    flag=true
                fi
            fi
        fi
    done
}

get_firstname_by_username() {
	user=`./bin/telegram-cli --disable-link-preview -C -R -D -e \
	'resolve_username '${1}'' 2>/dev/null`
    space_index=`echo ${user} | tr -cd ' '  | wc -c`
	msg=null
	if [[ ! ${user} ]] || [[ ${user} =~ 400 ]]; then
		echo $msg
	else
		msg=`echo ${user} | cut -d ' ' -f${space_index}- | cut -d ' ' -f1`
		echo "${msg}"
	fi
}

make_progress() {
exe=`lua <<-EOF
    print(tonumber($1)/tonumber($2)*100)
EOF
`
    echo ${exe:0:4}
}



function download_libs_lua() {
    if [[ ! -d "logs" ]]; then mkdir logs; fi
    if [[ -f "logs/logluarocks_${today}.txt" ]]; then rm logs/logluarocks_${today}.txt; fi
    local i
    for ((i=0;i<${#lualibs[@]};i++)); do
        printf "\r\33[2K"
        printf "\rF80: wait... [`make_progress $(($i+1)) ${#lualibs[@]}`%%] [$(($i+1))/${#lualibs[@]}] ${lualibs[$i]}"
        ./.luarocks/bin/luarocks install ${lualibs[$i]} &>> logs/logluarocks_${today}.txt
    done
    sleep 0.2
    printf "\nLogfile created: $PWD/logs/logluarocks_${today}.txt\nDone\n"
    rm -rf luarocks-2.2.2*
}

function update() {
    git checkout Install.sh ApiPlugins/ Bot/ Plugins/
    git pull
    echo chmod +x Install.sh | /bin/bash
}

function configure() {
    dir=$PWD
    wget http://luarocks.org/releases/luarocks-${luarocks_version}.tar.gz &>/dev/null
    tar zxpf luarocks-${luarocks_version}.tar.gz &>/dev/null
    cd luarocks-${luarocks_version}
    if [[ ${1} == "--no-null" ]]; then
        ./configure --prefix=$dir/.luarocks --sysconfdir=$dir/.luarocks/luarocks --force-config
        make bootstrap
    else
        ./configure --prefix=$dir/.luarocks --sysconfdir=$dir/.luarocks/luarocks --force-config &>/dev/null
        make bootstrap &>/dev/null
    fi
    cd ..; rm -rf luarocks*
    if [[ ${1} != "--no-download" ]]; then
        download_libs_lua
        wget --progress=bar:force https://valtman.name/files/telegram-cli-${tgcli_version} 2>&1 | get_sub
	
        if [ ! -d "bin" ]; then mkdir bin; fi
        cp telegram-cli-${tgcli_version} ./bin/telegram-cli; chmod +x ./bin/telegram-cli
        chmod +x $home/F80/Bot/Telegram-cli/Telegram-Cli
	      mv telegram-cli-${tgcli_version} TGCLI; chmod +x TGCLI
    fi
    for ((i=0;i<101;i++)); do
        printf "\rConfiguring... [%i%%]" $i
        sleep 0.007
    done
    printf "\nDone\n"
}

function start_bot() {
    ./TGCLI -p F80Bot ./Run/Bot.lua $@
}

function show_logo_slowly() {
    seconds=0.009
    logo=(
    "SprCpu :))"
    "Cloned"
    "Bb"
    )
    printf "\033[38;5;208m\t"
    local i x
    for i in ${!logo[@]}; do
        for ((x=0;x<${#logo[$i]};x++)); do
            printf "${logo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
    printf "\n"
}

function show_logo() {
    figlet SPR-CPU Company
}

case $1 in
    install)
    	show_logo_slowly
    	configure ${2}
    	exit ;;
    update)
    	show_logo
    	update
    	exit ;;
    tmux)
    	if [ ! -f "/usr/bin/tmux" ]; then echo "Please install tmux"; exit; fi
    	ok=`tmux new-session -s $TMUX_SESSION -d "./TGCLI -s ./Run/Bot.lua"`
    	if [[ $ok ]]; then echo "New session tmux: ${TMUX_SESSION}"; else echo "Error while run tgcli"; fi
    	exit ;;
    attach)
    	if [ ! -f "/usr/bin/tmux" ]; then echo "Please install tmux"; exit; fi
		tmux attach-session -t $TMUX_SESSION
		exit ;;
    kill)
    	if [ ! -f "/usr/bin/tmux" ]; then echo "Please install tmux"; exit; fi
    	tmux kill-session -t $TMUX_SESSION
    	exit ;;
    whois)
        name=`get_firstname_by_username "${2}"`
        if [[ $name == null ]]; then
        	echo "Error resolving the user."
        	exit 1
        else
        	echo "${name}"
        	exit 0
        fi ;;
esac

redis-cli DEL Reloaded
show_logo

show_logo

show_logo
#start_bot $@
exit 0
