
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

# brewのときはpyenvをパスから外す pyenvの中にある *-config ファイルがbrewの邪魔だから。
alias brew="env PATH=${PATH/\/~\/\.pyenv\/shims:/} brew"
# eval $(/usr/libexec/path_helper -s)

# Go to Desktop
alias gotodt="cd ~/Desktop/"

# git 関連の alias。
function change_commit_date() {
    # Usage example: change_commit_date 'Dec 14 10:00:00 2019'
    git commit --amend --no-edit --date="Sat $1 +0900"
    git rebase HEAD~1 --committer-date-is-author-date
    echo '## Check latest commmit date.'
    git log --pretty=fuller -1
}
function mkpr() {
    # $1 : Default branch (where make new branch from)
    # $2 : New branch
    # $3 : If you want to add options to pull-request command
    #    : --reviewer(-r) --assign(-a) --milestone(-M) --labels(-l) --draft(-d)
    #    : --browse(-o)   --message(-m) "Title"        --edit(-e) < path/to/message-template.md
    # tip: When you have .github/PULL_REQUEST_TEMPLATE.md, no need to add -m and -e. Probabil.
    # ref: https://hub.github.com/hub-pull-request.1.html
    git checkout $1
    git checkout -b $2
    git commit --allow-empty -m 'Make PR'
    git push origin $2
    hub pull-request $3
}
