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

