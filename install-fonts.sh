#!/bin/bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
bash ./install.sh SourceCodePro
echo "Fonts have been installed."
cd ..
rm -rf nerd-fonts/
echo "all done"
