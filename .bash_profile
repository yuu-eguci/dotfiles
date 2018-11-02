
# ログイン時に実行されるシェルスクリプトだよ。
# これを編集したら $ source ~/.bash_profile を実行しましょ。

# .bashrcの実行
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# 環境変数の設定
#export PATH=$PATH:コマンド検索パス
export EDITOR='subl -w'

# pyenvにパスを通す設定
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# tar圧縮のときリフォークソース(._)を除外する設定
export COPYFILE_DISABLE=true

# phpunitを使うためにパスを通す
export PATH=$PATH:~/.composer/vendor/bin/

# もともと入ってる /usr/bin のコマンドよりも brew のコマンドを優先する。
export PATH=/usr/local/bin:$PATH

# brewのときはpyenvをパスから外す pyenvの中にある *-config ファイルがbrewの邪魔だから。
alias brew="env PATH=${PATH/\/~\/\.pyenv\/shims:/} brew"
# eval $(/usr/libexec/path_helper -s)

# これ、一番下に書かないとpyenvが有効になんなかった。(具体的には $ which python が ~/.pyenv/shims/python になんない)
eval "$(pyenv init -)"

# pyenv-virtualenv のための設定。
eval "$(pyenv virtualenv-init -)"
