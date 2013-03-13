export ZSHPLUGINS=$ZDOTDIR/plugins

export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export BROWSER=chromium

export LESSHISTFILE="-"     # ugh, stupid less. Disable ridiculous history file

export NODE_PATH=/usr/local/lib/node

if [[ "$OSTYPE" == darwin* ]]
then
    export BROWSER=open
    export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
elif [[ -a /etc/arch-release ]]
then
    # "Arch -- Let's Make Python Difficult, Together."
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
    export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv2
fi
