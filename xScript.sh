#!/bin/bash
echo Copying Tmux Config
cp ./.tmux.conf ~/
echo Copying Vimrc
cp ./.vimrc ~/
echo Copying Bashrc
cp ./.bashrc ~/
echo Copying Amazon zsh
cp ./.zshrc ~/

echo Making /prod/bin
sudo mkdir /prod
sudo mkdir /prod/bin
echo Copying Tmux Start Script
sudo cp ./TmuxStartScript /prod/bin/
source ~/.zshrc

