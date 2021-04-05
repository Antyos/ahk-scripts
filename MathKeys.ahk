; This AutoHotKey script allows for easy typing of greek letters, script letters and other common math functions
; Written by Andrew Glick
; Version 2.2.1

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Make hotstrings not require an end character (*) and allow replacing inside of a word (?)
#Hotstring C0 * ?

;==============================================================================
;                                GREEK LETTERS
;==============================================================================

::\\alpha::α
::\\beta::β
::\\gamma::γ
::\\delta::δ
::\\epsilon::ε
::\\zeta::ζ
::\\eta::η
::\\theta::θ
::\\iota::ι
::\\kappa::κ
::\\lambda::λ
::\\mu::μ
::\\nu::ν
::\\xi::ξ
::\\omicron::ο
::\\pi::π
::\\rho::ρ
::\\sigma::σ
::\\tau::τ
::\\upsilon::υ
::\\phi::φ
::\\chi::χ
::\\psi::ψ
::\\omega::ω

::\\sum::Σ ; For convenience when doing sums
::\\ohm::Ω ; For convenience when typing resistance values

;==============================================================================
;                                MATH HOTKEYS
;==============================================================================

!/::Send √      ; Sends square root             (U+221A)
+!8::Send ⋅     ; Sends multiplication dot - '⋅' (U+22C5)
!2::Send ²      ; Sends superscript 2 - '²'     (U+00B2)
!3::Send ³      ; Sends superscript 3 - '³'     (U+00B3)
!0::Send ₀      ; Sends subscript 0 - '₀'       (U+2080)
+!0::Send °     ; Sends degrees symbol - '°'    (U+00B0)
;!8::Send {U+221E}   ; Sends infinity                (U+221E)
+!,::Send ≤  ; Sends less than or equal to   (U+2264)
+!.::Send ≥  ; Sends greater than or equal to (U+2265)
+!=::Send ±  ; Sends plus-minus          (U+00B1)
;^-::Send {Asc 0151} ; Send longer hyphen

#Hotstring C * O

;==============================================================================
;                    SCRIPT LETTERS & OTHER MATH FUNCTIONS
;==============================================================================

; Primarily taken from: https://en.wikipedia.org/wiki/Mathematical_Alphanumeric_Symbols
;    3rd column, Serif Italic
::\\AA::𝐴
::\\BB::𝐵
::\\CC::𝐶
::\\DD::𝐷
::\\EE::𝐸
::\\FF::𝐹
::\\GG::𝐺
::\\HH::𝐻
::\\II::𝐼
::\\JJ::𝐽
::\\KK::𝐾
::\\LL::𝐿
::\\MM::𝑀
::\\NN::𝑁
::\\OO::𝑂
::\\PP::𝑃
::\\QQ::𝑄
::\\RR::𝑅
::\\SS::𝑆
::\\TT::𝑇
::\\UU::𝑈
::\\VV::𝑉
::\\WW::𝑊
::\\XX::𝑋
::\\YY::𝑌
::\\ZZ::𝑍

::\\aa::𝑎
::\\bb::𝑏
::\\cc::𝑐
::\\dd::𝑑
::\\ee::𝑒
::\\ff::𝑓
::\\gg::𝑔
::\\hh::ℎ
::\\ii::𝑖
::\\jj::𝑗
::\\kk::𝑘
::\\ll::𝑙
::\\mm::𝑚
::\\nn::𝑛
::\\oo::𝑜
::\\pp::𝑝
::\\qq::𝑞
::\\rr::𝑟
::\\ss::𝑠
::\\tt::𝑡
::\\uu::𝑢
::\\vv::𝑣
::\\ww::𝑤
::\\xx::𝑥
::\\yy::𝑦
::\\zz::𝑧

::\\xy::𝑥𝑦
::\\xz::𝑥𝑧
::\\yz::𝑦𝑧

; ::\\ll::{U+2113}  ; Curly l (ℓ)
; ::\\ee::ℯ         ; Euler's number (ℯ)
; ::\\ff::{U+0192}  ; F with hook (ƒ)
; ::\\rr::{U+8477} ; All real numbers ; BROKEN

#Hotstring C0 * ? O0

::\\cross::×      ; Cross / times sign
::\\times::×      ; Cross / times sign

::\\ceil::{U+2308}{U+2309} {Left 2} ; Open and close ceiling characters (cursor ends in middle)
::\\floor::{U+230A}{U+230B} {Left 2} ; Open and close floor characters (cursor ends in middle)

::\\gradient::∇ ; Nabla / Gradient
::\\grad::∇     ; Nabla / Gradient
::\\nabla::∇    ; Nabla / Gradient

::\\infty::{U+221E} ; Sends infinity

::\\->::→ ; Sends left arrow
::\\<-::← ; Sends right arrow

::\\diam::⌀ ; Diameter

; ::\limfty::lim_(n→∞)⁡{Space}      ; Sends limit as n approaches ∞
; ::\intfty::\int_(1){^}∞{Space}   ; Sends integral from 1 to infinity
; ::\sumfty::\sum_(n=1){^}∞{Space} ; Sends sum to infinity
; ::\lintfty::lim_(t→∞)⁡{Space}\int_(1){^}t{Space} ; Sends limit for improper integral from 1 to infinity

#Hotstring C0 *0 ?0
