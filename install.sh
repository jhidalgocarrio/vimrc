#!/usr/bin/env sh

# Installation directory
VIM_DIR=~/.vim
BUNDLE_DIR=$VIM_DIR/bundle/neobundle.vim
NOW=`date "+%m%d%H%M%Y"`

info () {
    echo "=> $1"
}

if [ -e $VIM_DIR ]; then
    info "$VIM_DIR already exists"
    info "Backup $VIM_DIR"
    mv $VIM_DIR $VIM_DIR.bak.$NOW
fi

# check git command
if type git; then
    : # You have git command. No Problem.
else
    info 'Please install git or update your path to include the git executable!'
    exit 1;
fi

# make bundle dir and fetch neobundle
info "Begin fetching vimrc."
mkdir -p $VIM_DIR
git clone https://github.com/jhidalgocarrio/vimrc $VIM_DIR
info "Done."

if [ -s ~/.vimrc ]; then
    info "Backup old ~/.vimrc file."
    mv ~/.vimrc ~/.vimrc.bak.$NOW
fi
ln -s ~/.vim/vimrc ~/.vimrc

info "Install NeoBundle"
info "Don't worry to see some warning like: not found in 'runtimepath': \"autoload/vimproc.vim\""
mkdir -p $BUNDLE_DIR
git clone https://github.com/Shougo/neobundle.vim $BUNDLE_DIR
. $BUNDLE_DIR/bin/neoinstall
info "Done."

info "Installing YouCompleteMe"
if [ -f ~/.vim/bundle/YouCompleteMe/install.py ]; then
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
    cd --
    info "Done"
else
    info "[Error] YouCompleteMe is not selected in bundles"
fi

# install the nerd-fonts needed by vim-devicons
git clone git@github.com:ryanoasis/nerd-fonts.git
chmod +x ~/nerd-fonts/install.sh
./nerd-fonts/install.sh DroidSansMono

info "OK! Happy hacking."
