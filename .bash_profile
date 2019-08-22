export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin

export PATH="~/local/bin:$PATH"

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
#export PATH="~/anaconda3/bin:$PATH"

#export PATH="$PATH:~/kafka_2.12-2.1.0/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/Users/nchatha/.sdkman"
#[[ -s "/Users/nchatha/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nchatha/.sdkman/bin/sdkman-init.sh"
#
export ZONE="us-east4-b"
export INSTANCE_NAME="pingu"

alias henlo="echo 'henlo monky'"
alias gpu-ssh="gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080"
alias pno="conda activate pianofortai && cd ~/projects/pno-ai/"

export PATH=$HOME/bin:$PATH

export VISUAL=vim
export EDITOR="$VISUAL"
export PS1="\h:\W nikkuSahib\$ "

# added by Miniconda3 4.6.14 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/nikku/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/nikku/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nikku/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/nikku/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nikku/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nikku/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nikku/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nikku/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$PATH:~/.gem/ruby/2.6.0/bin
export PATH=$PATH:/usr/local/opt/ruby/bin
