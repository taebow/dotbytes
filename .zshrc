ZINIT_HOME="/usr/share/zinit"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light starship/starship
zi snippet OMZL::git.zsh
zi snippet OMZP::git

ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[directory]='none'

eval "$(starship init zsh)"
