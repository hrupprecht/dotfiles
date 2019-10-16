for i in /usr/local/etc/bash_completion.d/*;do . $i;done
eval $(thefuck --alias)

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export SSH_AGENT_PID
else
    eval $( gpg-agent --daemon ~/.gpg-agent-info )
fi

alias ccready="source ~/workspace/mytools/ccready.sh"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

