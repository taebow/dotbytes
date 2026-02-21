ZINIT_HOME="/usr/share/zinit"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=34:ln=36:so=35:pi=33:ex=32:bd=33;1:cd=33;1:su=37;41:sg=30;43:tw=30;42:ow=34;42'

zi light zsh-users/zsh-completions
zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light zsh-users/zsh-history-substring-search
zi light starship/starship
zi light zpm-zsh/ls

zi snippet OMZL::git.zsh
zi snippet OMZP::git
zi snippet OMZP::docker
zi snippet OMZP::docker-compose
zi snippet OMZL::history.zsh

ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[directory]='none'

eval "$(starship init zsh)"

alias yay="yay --noconfirm"
