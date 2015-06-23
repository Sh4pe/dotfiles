# replace this with the zsh
if [ -x /bin/zsh ]; then
    exec /bin/zsh --login
elif [ -x /usr/bin/zsh ]; then
    exec /usr/bin/zsh --login
else
    echo "could not find zsh (wanted to replace bash with it)"
    echo "Okay, I'll use bash then..."
fi

# I want a lot of history
HISTFILESIZE=10000
HISTSIZE=10000
