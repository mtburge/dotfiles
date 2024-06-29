function aws-ctx --description 'Switch AWS profile'
  export AWS_PROFILE="$(aws configure list-profiles | fzf)"
  echo "Switched to $AWS_PROFILE profile."
end
