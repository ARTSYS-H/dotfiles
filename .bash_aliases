# My Addition here:

# Adding path to Go install place programs
export PATH="$HOME/go/bin:$PATH"

# Personalize Bash prompt
# PS1='\[\e[34;1;3m\]➜\[\e[0m\] ${debian_chroot:+($debian_chroot)}\[\e[37m\][\[\e[33m\]\t\[\e[37m\]]\[\e[0m\] \[\e[37m\][\[\e[33m\]\j\[\e[37m\]:\[\e[33m\]$?\[\e[37m\]]\[\e[0m\] \[\e[32;1m\]\u\[\e[32m\]@\[\e[32m\]\h\[\e[0m\]:\[\e[34;1m\]\w\[\e[0m\]\$ '

# Alias definitions.
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=normal -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
