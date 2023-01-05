# dotfiles

## Setup
```
git clone --bare $DOTFILES_REPO_URL $HOME/.dotfiles
alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dtf config --local status.showUntrackedFiles no
dtf reset --hard HEAD
```

### Prerequisites

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [tpm](https://github.com/tmux-plugins/tpm)
- [vim-plug](https://github.com/junegunn/vim-plug)

### Update `git` configuration

```
git config --global user.name <name>
git config --global user.email <email>
```

## Usage
```
dtf add /path/to/file
dtf commit -m "message"
dtf push
```

## Vim
### Plugin Manager
- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```
:PackerSync
```

### Manual Plugin Installation

```
vimplugin='open-browser'
if [[ -n $vimplugin ]]; then
  mkdir -p "$HOME/.config/nvim/pack/$vimplugin/start/"
  cd "$HOME/.config/nvim/pack/$vimplugin/start/"
  git clone --depth 1 git@github.com:tyru/open-browser.vim.git
fi
unset vimplugin
```

