# COLORED man pages


export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan


# Add color to ls command wget 
# run $wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors 
export LS_OPTIONS='--color'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
eval $(dircolors -b ~/.dircolors)

# for ssh
if [[ $- == *i* ]]
then
    export SHELL=/bin/zsh
    exec /bin/zsh -l
fi

