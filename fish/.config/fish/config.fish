# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# abbreviations
abbr --global -- dotfiles "cd ~/.dotfiles"
abbr --global -- g lazygit

# aliases
alias aws-whoami "aws sts get-caller-identity | jq"
alias nah "git reset --hard"
alias publicip "dig +short myip.opendns.com @resolver1.opendns.com"
alias reload "source ~/.config/fish/config.fish"
alias flushdns "sudo killall -HUP mDNSResponder"
alias listening "sudo lsof -iTCP -sTCP:LISTEN -n -P"

# `ls` → `eza` abbreviation
if type -q eza
  abbr --global ll 'eza --long --classify --all --header --git --no-user --tree --level 1'
end

zoxide init fish | source
