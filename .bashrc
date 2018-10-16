
# シェルを起動するたびに実行されるシェルスクリプトだよ。

# エイリアスの設定
# ls（カラー表示）
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
# カレントディレクトリ以下のDS_Storeを削除します。
alias deletedsstore="find . -name '*.DS_Store' -type f -ls -delete"
# apacheの再起動
alias apacherestart="sudo apachectl restart"
# macのスリープ履歴
alias sleephistory="pmset -g log | grep \"Kernel Idle sleep preventers\""

# Finderが重いときよく使う。
alias kf="killall Finder"

# venv で環境変えると環境名がターミナルに表示されちまうのが目障りなので消す。
export VIRTUAL_ENV_DISABLE_PROMPT=1

# プロンプトの設定 \wにすればパスが全部表示される
PS1='\[\e[34m\]\W \[\e[37m\]\$\[\e[0m\] '
# 日付も出るやつ
# PS1="\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\w \[\e[0;31m\]\$\[\e[m\] "

# cowsay起動
# fortune | cowsay
