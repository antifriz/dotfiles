#! /bin/bash

# some deps
sudo apt-get install git zsh cmake build-essential

# install oh my zsh
export ZSH=~/.dotfiles/shell/oh-my-zsh 

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install syntax highlighter
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
# install alias-tips
git clone https://github.com/djui/alias-tips.git $ZSH/custom/plugins/zsh-syntax-highlighting


# paste files

CUR_DIR=$(pwd)

FILES=(
	.bash_profile
	.bashrc
	.zshrc
)

for f in "${FILES[@]}"; do
	test -d "~/$f" && rm ~/$f && test ! -L "~/$f" && mv -v ~/$f ~/$f.old
	test -f "~/$f" && test ! -L "~/$f" && mv -v ~/$f ~/$f.old
	ln -sfv $CUR_DIR/$f ~/
done

# if not zsh prompt switch to zsh
if [ ! -n "$ZSH_VERSION" ]; then
	while true; do
	    read -p "Do you wish to switch to zsh? (y|n)" yn
	    case $yn in
	        [Yy]* ) chsh -s /bin/zsh; break;;
	        [Nn]* ) exit;;
	        * ) echo "Please answer yes or no.";;
	    esac
	done
fi