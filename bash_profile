for i in /usr/local/etc/bash_completion.d/*;do . $i;done
eval $(thefuck --alias)

GPG_TTY=$(tty)
export GPG_TTY

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export SSH_AGENT_PID
else
    eval $( gpg-agent --daemon )
fi

alias ccready="source ~/workspace/mytools/ccready.sh"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi


# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib -L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include -I/usr/local/opt/zlib/include"
export DYLD_LIBRARY_PATH="/usr/local/opt/openssl@1.1/lib"
