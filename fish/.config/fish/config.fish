status --is-interactive; and begin

  # abbreviations
  abbr --add --global -- dotfiles 'cd ~/.dotfiles'
  abbr --add --global -- g lazygit

  # aliases
  alias aws-whoami 'aws sts get-caller-identity'
  alias nah 'git reset --hard'
  alias publicip 'dig +short myip.opendns.com @resolver1.opendns.com'
  alias reload 'source ~/.config/fish/config.fish'

end


