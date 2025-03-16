# color00's config.fish 2025-03-16

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove fish greeting
set -g fish_greeting

# aliases
# move up the file system
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."

alias ls="eza -lah --group-directories-first"

# packages size, highest to lowest
alias psize="paru -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5, name}' | sort -hr"

# global find
alias gf="find / 2>&1 | grep -v 'Permission denied' | grep -v '.snapshots' | grep -v 'icons' | grep -i"

# git dotfiles
# this process is better explained here:
# https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/
alias gd="git --git-dir=$HOME/.gitdot --work-tree=$HOME"
alias gda="gd add"
alias gdc="gd commit -a -m"
alias gdp="gd push -u origin main"
alias gds="gd status"

# default session variables
set -U TERMINAL foot
set -U EDITOR hx
set -U VISUAL hx
set -U BROWSER firefox

# set path
fish_add_path -U $HOME/.local/bin
fish_add_path -U $HOME/bin

# autorun
# fastfetch
