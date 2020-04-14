HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# fixed my auto_menu issue
autoload -Uz compinit
compinit

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path 
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# Other
setopt prompt_subst

# Using antibody for my plugin manager
# i add my plugins in ~/.zsh_plugins.txt
# and then run this to produce the .zsh_plugins.sh file
# note: this two file method has the fastest load time
    # antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

# my color customizations for spaceship prompt (light background)
# source ~/.zsh_spaceship_custom.sh

# neofetch
/usr/local/bin/neofetch

export PATH=$PATH:$HOME/chromedriver:$HOME/bin
