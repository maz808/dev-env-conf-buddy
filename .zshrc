source ~/powerlevel10k/powerlevel10k.zsh-theme

# Antigen
source ~/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle softmoth/zsh-vim-mode@main

antigen apply
# Antigen end

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to inser%s'
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

