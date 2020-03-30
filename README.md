
Dotfiles
===

My dotfiles.

## Usage

```bash
CURRENT_PATH=`pwd`
ln -sf $CURRENT_PATH'/.bash_profile'  ~/.bash_profile
ln -sf $CURRENT_PATH'/.bashrc'        ~/.bashrc
ln -sf $CURRENT_PATH'/.gitconfig'     ~/.gitconfig
ln -sf $CURRENT_PATH'/karabiner.json' ~/.config/karabiner/karabiner.json
source ~/.bash_profile

# When windows
ln -sf $CURRENT_PATH'/.gitconfig.win' ~/.gitconfig.local
```

## AutoHotkey

```bash
CURRENT_PATH=`pwd`
ln -sf $CURRENT_PATH'/Autohotkey.ahk' ~/Autohotkey.ahk
```

## Set up Mac

```bash
defaults write com.apple.finder AppleShowAllFiles -boolean true
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true
killall Finder

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Ricty font
brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# Other fonts
open https://github.com/edihbrandon/RictyDiminished
open https://myrica.estable.jp/
open https://github.com/adobe-fonts/source-han-code-jp/releases

# Useful tools
open https://www.spectacleapp.com/
```