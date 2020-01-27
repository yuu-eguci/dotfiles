; # Windows key
; ! Alt
; ^ Ctrl
; + Shift
; & Combine keys
; Key list: http://ahkwiki.net/KeyList

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

; Alt+left->Ctrl+left
!Left::Send ^{Left}
!+Left::Send ^+{Left}

; Alt+right->Ctrl+right
!Right::Send ^{Right}
!+Right::Send ^+{Right}

; Disable CapsLock
; CapsLock::Return
; sc03a::Return

; CapsLock+Number->Shortcut to other desktop
; デスクトップが6枚であることを前提にしています。
sc03a & 1::Send ^#{Left 5}
sc03a & 2::Send ^#{Left 5} ^#{Right 1}
sc03a & 3::Send ^#{Left 5} ^#{Right 2}
sc03a & 4::Send ^#{Right 5} ^#{Left 2}
sc03a & 5::Send ^#{Right 5} ^#{Left 1}
sc03a & 6::Send ^#{Right 5}

; CapsLock+K->カタカナ
sc03a & K::Send {F7}
