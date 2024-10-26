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
source /usr/share/zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "marlonrichert/zsh-autocomplete", defer:2
zplug "junegunn/fzf", defer:2

# Check for updates only if more than 7 days have passed
if [[ ! -f ~/.zplug_update_time ]] || (( $(date +%s) - $(stat -c %Y ~/.zplug_update_time) > 604800 )); then
    zplug update
    touch ~/.zplug_update_time
fi

zplug load > /dev/null
