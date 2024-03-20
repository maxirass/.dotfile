
### ---- History Configuration -----------------------------------
HISTSIZE=10000               #How many lines of history to keep in memory
HISTFILE=$ZSH/.zsh_history     #Where to save history to disk
SAVEHIST=10000               #Number of history entries to save to disk
setopt appendhistory
setopt share_history
setopt hist_ignore_all_dups