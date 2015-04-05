#! /bin/bash

CUR_DIR=$(pwd)

DIRS=(
	vim
	shell
)

for d in $DIRS; do
	cd $CUR_DIR/$d
	./install.sh
done
cd $CUR_DIR


