# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# fnm
eval "$(fnm env --use-on-cd)"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

