
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

# Useful tools
open https://www.google.co.jp/ime/
open https://www.logicool.co.jp/ja-jp/product/options
open https://karabiner-elements.pqrs.org/
open https://slack.com/get-started#/find
open https://www.spectacleapp.com/
open https://www.alfredapp.com/
open https://www.sublimetext.com/3
open http://firealpaca.com/
open https://apps.apple.com/jp/app/xcode/id497799835

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
```