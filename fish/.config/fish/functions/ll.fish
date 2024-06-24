function ll --description 'Use eza instead of ls -lah'
  eza --long --classify --all --header --git --no-user --icons --level 1 $argv
end