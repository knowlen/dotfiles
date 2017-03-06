# COLORED man pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan


# keeps track of the last machines I've logged into. 
NODE=$(uname -n)
if [[ $NODE != $(tail -n 1 .last_nodes.txt) ]];then
           uname -n >> ~/.nk_dispatch/.last_nodes.txt &
fi


# Add color to ls command wget 
# run $wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors 
# Use my .dircolors file for slightly less crazy color variance.
export LS_OPTIONS='--color'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
eval $(dircolors -b ~/.dircolors)
