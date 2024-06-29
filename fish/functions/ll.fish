function ll --description 'Use eza instead of ls -lah'
  eza --long --classify --all --header --git --icons --tree --level 1 $argv
end
