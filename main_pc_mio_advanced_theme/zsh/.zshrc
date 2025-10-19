# Enable colors and change prompt
autoload -U colors && colors

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

# Custom prompt with git support
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%F{blue}%b%f %F{red}%u%f%F{yellow}%c%f"
zstyle ':vcs_info:git:*' actionformats "%F{blue}%b%f (%F{red}%a%f) %F{red}%u%f%F{yellow}%c%f"

setopt prompt_subst
PROMPT='%F{#00a6fb}%n%f@%F{#0582ca}%m%f:%F{#006494}%~%f ${vcs_info_msg_0_}
%F{#051923}❯%f '

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias pcs='sudo pacman -S'
alias pcsuy='sudo pacman -Suy'
alias upd='sudo pacman -Suy && yay -Suy'

# Colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Syntax highlighting (requires zsh-syntax-highlighting package)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Auto suggestions (requires zsh-autosuggestions package)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#006494'

# Start neofetch
neofetch