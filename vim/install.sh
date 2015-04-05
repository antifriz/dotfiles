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
