#               __         
#              /\ \        
# ____     ____\ \ \___    
#/\_ ,`\  /',__\\ \  _ `\  
#\/_/  /_/\__, `\\ \ \ \ \ 
#  /\____\/\____/ \ \_\ \_\
#  \/____/\/___/   \/_/\/_/
#                          
#                          
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# start tmux on terminal 
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
[[ -z "$TMUX" ]] && exec tmux

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to groovy
#export GROOVY_HOME="/home/mnt/.groovy-3.0.9"
#export PATH="$PATH:$GROOVY_HOME/bin"

# Path to your oh-my-zsh installation.
export ZSH="/home/mnt/.oh-my-zsh"

# uniq history commands
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# flutter path
export PATH="$PATH:/home/mnt/Documents/privat/flutter/flutter/bin"
export PATH="$PATH:/home/mnt/Documents/privat/flutter/flutter/bin/dart"

# theme
ZSH_THEME="agnoster"

# git
plugins=(git)

source $ZSH/oh-my-zsh.sh

# system editor vim
export SYSTEMD_EDITOR=vim

# manpage syntax highlight
man() {
  /usr/bin/man $* | \
    col -b | \
    vim -R -c 'set ft=man nomod nolist' -
}

# pfetch
export PF_ASCII="tux"

#vim keys
bindkey '^x^x' edit-command-line

# gpg 
export GPG_TTY=$(tty) 

# aliases
alias py='python3'
alias suu='clear && sudo apt update && sudo apt full-upgrade -y && sudo flatpak update && sudo flatpak upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y && sudo snap refresh'
alias nf="clear && neofetch"
alias u="clear && uptime"
alias o="xdg-open ."
alias cfn="vim $HOME/.config/nvim/init.vim"
alias cfz="vim $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias purge="sudo apt purge -y"
alias search="apt search"
alias h='inpt=$(history | cut -c 8- | fzf -0 --tac) && echo "$inpt" | xclip -r -selection c'
alias v="vim"
alias yt="cat info | xclip -selection c"
alias btc='BTC=$(curl -s https://api.coindesk.com/v1/bpi/currentprice.json | jq -r '.bpi.USD.rate') && printf "BTC $ $BTC\n"'
alias cfa="vim $HOME/.config/alacritty/alacritty.yml"
alias pass="pass -c"
alias g="groovy main.groovy"
alias lc="lolcat"
alias cp="cp -r"
alias t="clear && bash /home/mnt/Documents/privat/twitch/twitch.sh"
alias c="xclip -r -selection c"
alias cfa="vim $HOME/.config/alacritty/alacritty.yml"
alias ae="cd /home/mnt/Documents/privat/RBB/AE/OOP/Decorator/Cielenga_Damian_30_04/Code"
alias main="clear && javac Main.java && java Main"
alias twitch="cd /home/mnt/Documents/privat/twitch"
alias a="cd /home/mnt/Documents/arbeit/"
alias pf="pfetch"
alias ac="sudo apt autoclean && sudo apt autoremove -y"
alias open="xdg-open ."
alias vw="vim /home/mnt/vimwiki/index.wiki"
alias repo="cd /home/mnt/Documents/work/repos/"
alias htop="sudo htop"
alias activate="source venv/bin/activate"
alias ls="exa --icons"
alias l="exa -a --icons"
alias stow="stow -v"
alias tree="exa -Ta"
alias pdf="evince"
alias doc='date +"%Y-%m-%d-" | xclip -r -selection c'
alias tk="tmux kill-session"
alias grep="grep --color=auto -i"
alias cft="vim /home/mnt/.tmux.conf"
alias ns="nslookup"
alias qn="kill -3 $(ps aux | grep notepad | awk '{print $2}' | head -n 1)"

