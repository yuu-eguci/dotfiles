; WindowsAPIの SendInput関数を利用してシステムに一連の操作イベントをまとめて送り込む方式。
; http://ahkwiki.net/SendMode
; NumLock & n 系の処理の不具合を防止するため追加。
SendMode, Input

; # Windows key
; ! Alt
; ^ Ctrl
; + Shift
; & Combine keys
; Key list: http://ahkwiki.net/KeyList

; Activate this setting
; CURRENT_PATH=`pwd`
; ln -sf $CURRENT_PATH'/Autohotkey.ahk' ~/Autohotkey.ahk
; Ctrl+Alt+R

; ScrollLock->かな
ScrollLock::vkF2
; Pause->無変換(そしてこれを Google 日本語入力で IME 無効にマップ。)
Pause::vk1D

; Improve Ctrl+Arrows Mac-like.

; Ctrl+up->Ctrl+Home
^Up::Send ^{Home}
^+Up::Send ^+{Home}

; Ctrl+down->Ctrl+End
^Down::Send ^{End}
^+Down::Send ^+{End}

; Ctrl+left->Home
^Left::Send {Home}
^+Left::Send +{Home}

; Ctrl+right->End
^Right::Send {End}
^+Right::Send +{End}

; Win+left->Ctrl+left
; NOTE: Windows+左右は鬱陶しいのも解決する一石二鳥。
; NOTE: Alt+左右にしてしまうとウィンドウ切り替えのときの左右移動が無効化される。 Win+ にするのが正解だ。
#Left::Send ^{Left}
#+Left::Send ^+{Left}

; Win+right->Ctrl+right
#Right::Send ^{Right}
#+Right::Send ^+{Right}

; Open previous editor, next editor | Make them Mac-like
^#Left::Send ^{PgUp}
^#Right::Send ^{PgDn}
