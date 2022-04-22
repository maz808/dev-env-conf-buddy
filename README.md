# dev-env-conf-buddy

Change default shell to zsh if not already:

```console
chsh -s $(which zsh)
```

Create links and copy files:

```console
ln -s ${PWD}/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local 
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/powerlevel10k ~/powerlevel10k
ln -s ${PWD}/tmux_startup.zsh ~/tmux_startup.zsh
curl -L git.io/antigen > ~/antigen.zsh
cp .zshrc ~/.zshrc
cp .zprofile ~/.zprofile
```

