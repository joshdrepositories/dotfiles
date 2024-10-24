# Created by newuser for 5.9
# Set path if required

source ~/.shell/commonrc

#prompt
setopt PROMPT_SUBST

get_pwd () {
  echo "$(~/.shell/shortpath)"
}

PS1="%F{blue}%n\
%F{cyan} \$(get_pwd)%f\
%F{yellow}\$(git_branch)%f\
%F{magenta}$%f "

#colors
autoload -U colors && colors

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration
alias update="sudo apt update && sudo apt upgrade"
alias inst="sudo apt update && sudo apt install"
alias cdw="cd ~/Documents/WorkRepos/"
alias vin="vagrant init"
alias vu="vagrant up"
alias vd="vagrant destroy -f"
alias vdu="vagrant destroy -f && vagrant up"
alias vp="vagrant provision"
alias vim="nvim"
alias t="todo.sh"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcdu="docker compose down && docker compose up -d"
alias dcdul="docker compose down && docker compose up -d && docker compose logs -f"
alias gs="git status"
alias gf="git fetch"
alias gd="git diff"
alias gp="git push"
alias ga="git add"

# Use vi keybindings even if our EDITOR is set to vi
bindkey -e

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# zplug - manage plugins
source /usr/share/zplug/init.zsh && zplug update > /dev/null
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "marlonrichert/zsh-autocomplete"
zplug "junegunn/fzf"

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose > /dev/null

# Set the style for vi mode indicator
#zstyle ':vi-mode' vi_mode_style 'highlight'  # Options: none, highlight, bold

fpath+=${ZDOTDIR:-~}/.zsh_functions

# Created by `pipx` on 2024-09-25 03:18:24
export PATH="$PATH:$HOME/.local/bin"
