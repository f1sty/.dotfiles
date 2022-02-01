#!/bin/zsh

autoload -U colors && colors
# PS1="%~ $ "
# autoload -Uz promptinit && promptinit

stty stop undef		# Disable ctrl-s to freeze terminal.

HISTFILE=$XDG_CACHE_HOME/zsh/history
HISTSIZE=10000000
SAVEHIST=10000000

setopt autocd extendedglob
setopt interactive_comments
setopt auto_pushd           # push the old directory onto the stack on cd.
setopt pushd_ignore_dups    # do not store duplicates in the stack.
setopt pushd_silent         # do not print the directory stack after pushd or popd.
setopt correct              # spelling correction
setopt cdable_vars          # change directory to a path stored in a variable.
setopt extended_history          # write the history file in the ':start:elapsed;command' format.
setopt share_history             # share history between all sessions.
setopt hist_expire_dups_first    # expire a duplicate event first when trimming history.
setopt hist_ignore_dups          # do not record an event that was just recorded again.
setopt hist_ignore_all_dups      # delete an old recorded event if a new event is a duplicate.
setopt hist_find_no_dups         # do not display a previously found event.
setopt hist_ignore_space         # do not record an event starting with a space.
setopt hist_save_no_dups         # do not write a duplicate event to the history file.
setopt hist_verify               # do not execute immediately upon history expansion.
# setopt GLOB_COMPLETE      # Show autocompletion menu with globs
setopt menu_complete        # automatically highlight first element of completion menu
setopt auto_list            # automatically list choices on ambiguous completion.
setopt complete_in_word     # complete from both ends of a word.

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/bash/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/bash/aliases"

bindkey -v
export KEYTIMEOUT=1

zstyle :compinstall filename '$XDG_CONFIG_HOME/zsh/.zshrc'

zmodload zsh/complist
zmodload zsh/zprof

autoload -U compinit && compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots) # Include hidden files.

# Define completers
zstyle ':completion:*' completer _extensions _complete _approximate
# Use cache for commands using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
# Complete the alias when _expand_alias is used as a function
zstyle ':completion:*' complete true
zle -C alias-expension complete-word _generic
bindkey '^A' alias-expension
zstyle ':completion:alias-expension:*' completer _expand_alias
# Allow you to select in a menu
zstyle ':completion:*' menu select
# Autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true
zstyle ':completion:*' file-sort modification
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# Colors for files and directory
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}
# Only display some tags for the command cd
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
# zstyle ':completion:*:complete:git:argument-1:' tag-order !aliases
# Required for completion to be in good groups (named after the tags)
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
# See ZSHCOMPWID "completion matching control"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' keep-prefix true
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source $XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
# source $XDG_CONFIG_HOME/zsh/plugins/zsh-git-prompt/zshrc.sh
source $HOME/scripts/git-prompt.sh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/asdf-vm/asdf.sh
# setopt PROMPT_SUBST
# PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
# PROMPT='[%~ $(git_super_status)] \$ '

# fix git gpg autosigning
export GPG_TTY=$(tty)

# PROMPT='%B%m%~%b$(git_super_status) %# '

# git-prompt.sh settings
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="auto"

precmd () { __git_ps1 "" "%~ $ " "%s:" }

sd () {
    sdcv -n --utf8-output --color "$@" 2>&1 | \
        fold --width=$(tput cols) | \
        less -FRX
}

shot () {
    scrot -s -e 'mv $f ~/media/images/screenshots/'
}


yta() {
    mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}
