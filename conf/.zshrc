eval $(dircolors -b)
export PROMPT='%n@%m%u:%30<..<%~%b%(!.#.$) ' 
export MAIL=~/Mail/inbox
export EDITOR=jed

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt inc_append_history
setopt promptsubst


alias ls='ls --color=auto'
alias firefox-3.0='firefox-3.0 -p firefox-3.0'
alias less='less -R'
#fra zsh completion function artikkel
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete
zstyle :compinstall filename '/home/sigmunau/.zshrc'

host_stuff() {
    hosts=(`cat ~/.zshhosts`)
    if [ "$hosts" ]; then
        zstyle ':completion:*:hosts' hosts $hosts
    fi
}

preexec() {
    host_stuff
}
host_stuff
#bruk egne funksjoner
fpath=(~/zsh $fpath)
#autoload -U ~/zsh/*(:t)

#mer compintall
autoload -U compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit
prompt wunjo

if [ -d ~/bin ] ; then 
    PATH=$PATH:~/bin
fi
