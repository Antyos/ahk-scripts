; List of commonly used emojis
; Included in EssentialKeys.ahk
; Written by Andrew Glick

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Set hotstring options
; * - Don't require an ending character
; ? - Can be triggered inside another word
#Hotstring * ?

;==============================================================================
;                                    EMOJIS
;==============================================================================

::\:)::😊
::\;)::😉
::\:(::🙁
::\wink::😉
::\(: ::🙃
::\yikes::😬
::\sigh::😔
::\:|::😑
:C:\:D::😄
::\XD::😂
::\:P::😛
::\cry::😥
::\ccry::😭
::\grr::😠
::\hmm::🤔
::\angry::😠
::\tup::👍
::\clap::👏
::\facepalm::🤦‍♂️
::\shrug::🤷‍♂️
::\thank::🙏

; Reset hostring options
#Hotstring *0 ?0