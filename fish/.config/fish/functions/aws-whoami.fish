function aws-whoami --description 'Describe current AWS session'
  aws sts get-caller-identity | jq
end

