function aws-ctx --description 'Switch AWS profile'
  export AWS_PROFILE="$(aws configure list-profiles | fzf)"

  # for SSO profiles, refresh the session
  if test -n "$(aws configure get profile.$AWS_PROFILE.sso_session)"
    aws sso login --profile "$AWS_PROFILE"
  end

  echo "Switched to $AWS_PROFILE profile."
end
