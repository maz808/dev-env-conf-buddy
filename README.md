# dev-env-conf-buddy

Change default shell to zsh if not already:
'''
chsh -s $(which zsh)
'''

Create links and copy files:
'''
ln -s ${PWD}/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local 
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/powerlevel10k ~/powerlevel10k
ln -s ${PWD}/tmux_startup.zsh ~/tmux_startup.zsh
ln -s ${PWD}/zsh_plugins ~/zsh_plugins
cp .zshrc ~/.zshrc
cp .zprofile ~/.zprofile
'''

Ensure python3 (w/ pip) and vim (w/ python3 enabled) are installed. Then run:
'''
python3 -m pip install powerline-status
'''

