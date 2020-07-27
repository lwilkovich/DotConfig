#!/bin/bash
echo Copying Tmux Config
cp ./tmux/.tmux.conf ~/
echo Copying Vimrc
cp ./vim/.vimrc ~/
echo Copying Bashrc
cp ./bash/.bashrc ~/
echo Copying Amazon zsh
cp ./zsh/.zshrc ~/

echo Making /prod/bin
sudo mkdir /prod
sudo mkdir /prod/bin
echo Copying Tmux Start Script
sudo cp ./tmux/TmuxStartScript /prod/bin/
source ~/.zshrc

