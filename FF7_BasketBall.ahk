#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
j::
Loop, 200
{
Send, {p down}
Sleep 455 ;Hold for .460 sec
Send, {p up}
Sleep 5500 ; Hold for 5.5 sec
}
return
