SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# Creating soft links to configuration files.
ln -s $SCRIPTPATH/.vimrc ~/.vimrc
ln -s $SCRIPTPATH/tmux.conf ~/.tmux.conf
ln -s $SCRIPTPATH/.gitconfig ~/.gitconfig

# Setuping vim plugins.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
