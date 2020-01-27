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

; ScrollLock->Kana
ScrollLock::vkF2
; Pause->Eisuu
Pause::vk1D

; Ctrl + Alt + R to reload this script.
^!r::Reload
; Ctrl + Alt + E to edit this script.
^!e::Edit

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

; Disable CapsLock
; CapsLock::Return
; sc03a::Return

; CapsLock+Number->Shortcut to other desktop
; デスクトップが6枚であることを前提にしています。
sc03a & 1::Send ^#{Left 5}
sc03a & 2::
    Send ^#{Left 5}
    Send ^#{Right 1}
    Return
sc03a & 3::
    Send ^#{Left 5}
    Send ^#{Right 2}
    Return
sc03a & 4::
    Send ^#{Right 5}
    Send ^#{Left 2}
    Return
sc03a & 5::
    Send ^#{Right 5}
    Send ^#{Left 1}
    Return
sc03a & 6::Send ^#{Right 5}

; CapsLock+K->カタカナ
; FIXME: 使っていると、 K が効かなくなるときがある。
; sc03a & K::Send {F7}

; Open previous virtual desktop, next virtual desktop | Make them Mac-Like
sc03a & Left::Send ^#{Left}
sc03a & Right::Send ^#{Right}

; Open previous editor, next editor | Make them Mac-like
^#Left::Send ^{PgUp}
^#Right::Send ^{PgDn}
