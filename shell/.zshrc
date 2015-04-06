# oh-my-zsh

ZSH=$HOME/.dotfiles/shell/oh-my-zsh
ZSH_THEME="bureau"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git sudo sublime fasd zsh-syntax-highlighting alias-tips)

source $ZSH/oh-my-zsh.sh

# personal modifications

source ~/.bash_profile