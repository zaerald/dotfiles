# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm
if which fnm > /dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi

# fzf
if which fzf > /dev/null 2>&1; then
  source <(fzf --zsh)
fi

# tmuxifier
if which tmuxifier > /dev/null 2>&1; then
  eval "$(tmuxifier init -)"
fi

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# buildpack
if which pack > /dev/null 2>&1; then
  . $(pack completion --shell zsh)
fi

# docker
if which docker > /dev/null 2>&1; then
  fpath=(/Users/zaerald/.docker/completions $fpath)
  autoload -Uz compinit
  compinit
fi

