#! /bin/bash

CUR_DIR=$(pwd)

FILES=(
	.vimrc
	.vim
)

for f in "${FILES[@]}"; do
	test -d "~/$f" && rm ~/$f && test ! -L "~/$f" && mv -v ~/$f ~/$f.old
	test -f "~/$f" && test ! -L "~/$f" && mv -v ~/$f ~/$f.old
	ln -sfv $CUR_DIR/$f ~/
done

exit 0

BUNDLE_DIR=.vim/bundle

# Compile YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git "$BUNDLE_DIR/YouCompleteMe"
cd "$BUNDLE_DIR/YouCompleteMe" && ./install.sh --clang-completer --omnisharp-completer

# Install bundles
vim +PluginInstall +qall

cd $CUR_DIR