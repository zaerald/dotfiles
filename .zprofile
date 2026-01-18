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
  show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
  export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
  export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
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

# make neovim the default editor
if which nvim > /dev/null 2>&1; then
  export EDITOR='nvim';
  export VISUAL='nvim';
fi

# jenv
if which jenv > /dev/null 2>&1; then
  export JAVA_HOME="$(jenv prefix)"
  eval "$(jenv init -)"
fi

# bun
if which bun > /dev/null 2>&1; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
  # bun completions
  [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
fi

