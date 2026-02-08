# tmux Configuration
ln -s ${PWD}/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local 

# vim Configuration
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux Session Startup Script
ln -s ${PWD}/tmux_startup.zsh ~/tmux_startup.zsh

# zsh Configuration
ln -s ${PWD}/shared.zshrc ~/shared.zshrc
cp .zshrc ~/.zshrc
cp .zprofile ~/.zprofile

# Shell Utility Functions
ln -s ${PWD}/shell_funcs.zsh ~/shell_funcs.zsh

# antidote: zsh plugin manager
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
ln -s ${PWD}/.zsh_plugins.txt ~/.zsh_plugins.txt

# Update/uprade apt Packages
sudo apt update && sudo apt upgrade

# exa: replacement for ls
sudo apt install eza

