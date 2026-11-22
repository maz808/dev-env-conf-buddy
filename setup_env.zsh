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

# Shell Utility Aliases
ln -s ${PWD}/aliases.zsh ~/aliases.zsh

# antidote: zsh plugin manager
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
ln -s ${PWD}/.zsh_plugins.txt ~/.zsh_plugins.txt

# Update/uprade apt Packages
sudo apt update && sudo apt upgrade

# exa: replacement for ls
sudo apt install eza

# gum: shell script utilities
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum

