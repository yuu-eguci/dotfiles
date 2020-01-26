
Dotfiles
===

My dotfiles.

## Usage

```bash
CURRENT_PATH=`pwd`
ln -sf $CURRENT_PATH'/.bash_profile' ~/.bash_profile
ln -sf $CURRENT_PATH'/.bashrc'       ~/.bashrc
ln -sf $CURRENT_PATH'/.gitconfig'    ~/.gitconfig
source ~/.bash_profile

# When windows
ln -sf $CURRENT_PATH'/.gitconfig.win' ~/.gitconfig.local
```

## AutoHotkey

```bash
CURRENT_PATH=`pwd`
ln -sf $CURRENT_PATH'/Autohotkey.ahk' ~/Autohotkey.ahk
```
