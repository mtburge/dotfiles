function aws-whoami --description 'Describe current AWS session'
  aws sts get-caller-identity | jq
end

function aws-ctx --description 'Switch AWS profile'
  export AWS_PROFILE="$(aws configure list-profiles | fzf)"
  echo "Switched to $AWS_PROFILE profile."
end