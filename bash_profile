source ~/.bash_aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH=$HOME/phabricator/arcanist/bin/:$PATH
source $HOME/phabricator/arcanist/resources/shell/bash-completion

complete -C '/usr/local/bin/aws_completer' aws

export PATH=$HOME/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

ssh-add -A 2>/dev/null;
