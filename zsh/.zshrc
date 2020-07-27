source /apollo/env/envImprovement/var/zshrc

export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short

for f in SDETools envImprovement AmazonAwsCli OdinTools; do
    if [[ -d /apollo/env/$f ]]; then
        export PATH=$PATH:/apollo/env/$f/bin
    fi
done

export AUTO_TITLE_SCREENS="NO"

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}

alias e=emacs
alias bb=brazil-build

alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'

#Added
PATH=$PATH:/prod/bin


alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias untargz="tar xvzf "
alias pdf="xdg-open "
alias tmls="tmux ls"
alias tmks="tmux kill-session -t 0"
alias tmd="tmux detach"
alias tm="TmuxStartScript"
alias tma="tmux attach -t 0"
alias cler='clear'
alias clearls='clear && ls'


if [ -f ~/.zshrc-dev-dsk-post ]; then
    source ~/.zshrc-dev-dsk-post
fi
