source ~/.bash_aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

complete -C '/usr/local/bin/aws_completer' aws

export PATH=$HOME/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

ssh-add -A 2>/dev/null;

# gcloud
source /Users/ablocker/google-cloud-sdk/path.bash.inc
source /Users/ablocker/google-cloud-sdk/completion.bash.inc

# bio-ds config
source /Users/ablocker/workspace/bio-ds/dev_env/tools/gcloud_dataproc_functions.bash

