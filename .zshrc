# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -e
bindkey -v
#bindkey '\eOH'  beginning-of-line
#bindkey '\eOF'  end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pmarkee/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

green=%F{green}
yellow=%F{yellow}
red=%F{red}
blue=%F{blue}
color_reset=%f

PS1="%B┌ ${green}%n${yellow}@${red}%M ${blue}%~${color_reset}"$'\n'"└──>%b "

source $HOME/.scripts/envrc
source $HOME/.scripts/aliasrc

#wal -c && wal -qei Wallpaper --saturate 0.7

