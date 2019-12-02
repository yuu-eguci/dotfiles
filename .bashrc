
# シェルを起動するたびに実行されるシェルスクリプトだよ。
# rc は Run Commands の略だよ。
# 用途は以下。
#     環境変数でない変数を設定する (export しない変数)。
#     エイリアスを定義する。
#     シェル関数を定義する。
#     コマンドライン補完の設定をする。

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

# vagrant リセット
alias vagrantreset="vagrant halt && vagrant destroy -f && vagrant up"

# venv で環境変えると環境名がターミナルに表示されちまうのがイヤだったら使ってください。
# export VIRTUAL_ENV_DISABLE_PROMPT=1

# プロンプトの設定 \wにすればパスが全部表示される
PS1='\[\e[34m\]\W \[\e[37m\]\$\[\e[0m\] '
# 日付も出るやつ
# PS1="\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\w \[\e[0;31m\]\$\[\e[m\] "
