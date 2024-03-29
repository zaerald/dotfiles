# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,functions,extra}; do
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

