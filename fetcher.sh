#! /bin/bash

cp -r ~/.config/i3 .
mkdir nvim
cp -r ~/.config/nvim/colors/customized.vim ./nvim
cp -r ~/.config/nvim/bundle/vim-airline-themes/autoload/airline/themes/customized.vim ./nvim/airline_customized.nvim
cp -r ~/.config/polybar .
cp -r ~/.Xresources .
cp -r ~/.zshrc .
