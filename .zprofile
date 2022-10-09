# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# fnm
if which fnm > /dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi

# tmuxifier
if which tmuxifier > /dev/null 2>&1; then
  eval "$(tmuxifier init -)"
fi

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

