# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# nvm-sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

