curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
sh ./installer.sh ~/.config/nvim/dein && \
rm ./installer.sh && \
echo "Dein has been installed successfully!"
echo "Run nvim, :UpdateRemotePluggins and restart nvim."
