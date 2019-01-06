source ~/.bash_aliases

complete -C '/usr/local/bin/aws_completer' aws

export PATH=$HOME/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

ssh-add -A 2>/dev/null;

# brew
if type brew 2&>/dev/null; then
  source "$(brew --prefix)/etc/bash_completion"
else
  echo "run: brew install git bash-completion"
fi

# Google Cloud SDK
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# bio-ds config
source /Users/ablocker/workspace/bio-ds/dev_env/tools/gcloud_dataproc_functions.bash

