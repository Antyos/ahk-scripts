; An assortment of miscellaneous hotkeys/strings
; Written by Andrew Glick

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;
; HyperScroll
; Press F19 to toggle scrolling more lines at a time
; From: https://www.autohotkey.com/boards/viewtopic.php?t=36720
; Note: This seems to only work if is the first thing in the script

Speed2 = 6
toggle := 0
F19::toggle := !toggle
#If toggle
WheelUp::Send {WheelUp %speed2%}
WheelDown::Send {WheelDown %speed2%}
#If

; Set hotstring options
; * - Don't require an ending character
; ? - Can be triggered inside another word
#Hotstring * ?

;==============================================================================
;                                    EMAILS
;==============================================================================

; Hidden for privacy reasons

;::n@e::name@example.com

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

; No-width space (Doesn't work in all programs)
::\\nwsp::{U+0x200B}

; Reset hotstring options
#Hotstring C0 *0 ?0

; Right alt -> App key (Rick click button)
RALT::AppsKey

;==============================================================================
;                               LAUNCH PROGRAMS
;==============================================================================

; Old calculator
#c::Run "C:\Windows\System32\calc1.exe"
; return

; Everything (Search)
#s::Run "C:\Program Files\Everything\Everything.exe"
; return

; Run Sublime Text - Create new file
+#s::Run "C:\Program Files\Sublime Text 3\subl.exe" --command new untitled
; return

; Advanced Sleep
; My computer wakes itself almost instantly from standard sleep for whatever reason
+^#s::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
; Parameter #1: Pass 1 instead of 0 to hibernate rather than suspend.
; Parameter #2: Pass 1 instead of 0 to suspend immediately rather than asking each application for permission.
; Parameter #3: Pass 1 instead of 0 to disable all wake events.

;==============================================================================
;                               MISCELLANEOUS
;==============================================================================

; Ctrl + Backspace fix for File Explored and Notepad
; source and context: http://superuser.com/a/636973/124606
#IfWinActive ahk_class CabinetWClass ; File Explorer
    ^Backspace::
#IfWinActive ahk_class Notepad
    ^Backspace::
    Send ^+{Left}{Backspace}
#IfWinActive ; endif
