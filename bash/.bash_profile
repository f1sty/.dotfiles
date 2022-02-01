export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
export AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator 
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export _JAVA_AWT_WM_NONREPARENTING=1
export ERL_AFLAGS="-kernel shell_history enabled"
export TERM=screen-256color
export PATH="$HOME/scripts:$PATH"

if [ -f '/home/f1st/bin/google-cloud-sdk/path.bash.inc' ]; then . '/home/f1st/bin/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/home/f1st/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/home/f1st/bin/google-cloud-sdk/completion.bash.inc'; fi

[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc
[[ -f ~/.config/bash/aliases ]] && . ~/.config/bash/aliases
[[ -f ~/.config/bash/secrets ]] && . ~/.config/bash/secrets

complete -C /usr/bin/terraform terraform
