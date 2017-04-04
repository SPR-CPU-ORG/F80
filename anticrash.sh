cd $home/F80
figlet Running
figlet SprCpu Company
while true; do
  tmux kill-session -t F80-CLI
  tmux new-session -d -s F80-CLI "./Cli.sh"
  tmux detach -s Cli.sh
  tmux kill-session -t F80-API
  tmux new-session -d -s F80-API "./Api.sh"
  tmux detach -s Api.sh
  figlet Bots Are Running !
sleep 100000
done
