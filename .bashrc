
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

# PATH 環境変数に pyenv のディレクトリが入っていると warning が出る。
# pyenv の中にある *-config ファイルが邪魔だからだ。
# というわけで brew を実行するときの環境変数を決め打ちする。
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
# eval $(/usr/libexec/path_helper -s)

# Go to Desktop
alias gotodt="cd ~/Desktop/"

# これが覚えられないのはしょうがなくない?!
alias so="source ~/.bash_profile"

# git 関連の alias。
function git_ccd() {
    # git change commit date
    # Usage example: git_ccd "2020-02-20 12:00"
    # $1 : Date string such as "2020-02-20 12:00"

    # Mac デフォルトの BSD unix の date コマンドを、 GNU linux の date にする。
    # あらかじめ brew install coreutils が必要。
    if [ -e /usr/local/bin/gdate ]; then
        DATE_COMMAND="/usr/local/bin/gdate"
    else
        DATE_COMMAND="date"
    fi

    # Create RFC format date like 'Thu, 20 Feb 2020 12:00:00 +0900'
    RFC_DATE=`$DATE_COMMAND -d "$1" -R`

    git commit --amend --no-edit --date="$RFC_DATE"
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

# Effective Debugging で知った Git 補完スクリプトのコピーを取得。
if ! [ -f ~/.bash_completion.d/git-completion.bash ] ; then
    mkdir -p ~/.bash_completion.d
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash \
        >~/.bash_completion.d/git-completion.bash
fi
source ~/.bash_completion.d/git-completion.bash
