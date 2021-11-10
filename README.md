# dotfiles

## Setup
```
git clone --bare $DOTFILES_REPO_URL $HOME/dotfiles
alias dtf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
dtf config --local status.showUntrackedFiles no
dtf reset --hard HEAD
```

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

## Brew
Generate bundle
```
rm -rf $HOME/.Brewfile; brew bundle dump --describe --global
```

Install bundle
```
brew bundle install --global
```

## Vim
### Plugin Manager
- [vim-plug](https://github.com/junegunn/vim-plug)

```
:PluginInstall
:PluginUpdate
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

