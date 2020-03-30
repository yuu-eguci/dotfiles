
# ログイン時に実行されるシェルスクリプト。
# これを編集したら source ~/.bash_profile を実行。
# このファイルには環境変数(export する変数)を設定します。

# .bashrcの実行
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# 環境変数の設定
#export PATH=$PATH:コマンド検索パス
export EDITOR='subl -w'

# tar圧縮のときリフォークソース(._)を除外する設定
export COPYFILE_DISABLE=true

# phpunitを使うためにパスを通す
export PATH=$PATH:~/.composer/vendor/bin/

# もともと入ってる /usr/bin のコマンドよりも brew のコマンドを優先する。
export PATH=/usr/local/bin:$PATH

# venv で環境変えると環境名がターミナルに表示されちまうのがイヤだったら使ってください。
# export VIRTUAL_ENV_DISABLE_PROMPT=1

# プロンプトの設定 \wにすればパスが全部表示される
PS1='\[\e[34m\]\W \[\e[37m\]\$\[\e[0m\] '
# 日付も出るやつ
# PS1="\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\w \[\e[0;31m\]\$\[\e[m\] "

# node を使うまで
# brew install nodebrew
# mkdir -p ~/.nodebrew/src
# nodebrew install-binary stable
# nodebrew ls
# nodebrew use v***(↑で出たバージョン)
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenvにパスを通す設定
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
# export PATH="$PYENV_ROOT/bin:$PATH"
# これ、一番下に書かないとpyenvが有効になんなかった。(具体的には $ which python が ~/.pyenv/shims/python になんない)
# pyenv-virtualenv のための設定。
# eval "$(pyenv virtualenv-init -)"

export PATH="/usr/local/opt/ruby/bin:$PATH"

# bash prevents you from overwriting existing files when redirecting.
# 新規ファイルでのみ echo "foo" > foo を許可する。
# 既存ファイルでは > が出来ず、 >> のみ許可(追記)。
set -o noclobber