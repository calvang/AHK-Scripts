#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

; ensure admin access
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

; === Toggle Rainmeter ===
#+r::
Process, Exist, Rainmeter.exe
If errorlevel
	Process, Close, Rainmeter.exe
If(!errorlevel)
	Run, rainmeter.exe, C:\Program Files\Rainmeter
return

; === Toggle CoreTemp ===
#+1::
Process, Exist, Core Temp.exe
If errorlevel
	Process, Close, Core Temp.exe
If(!errorlevel)
	Run, Core Temp.exe, C:\Program Files\Core Temp
return

; === Open Bash terminal ===
#+b::
; MsgBox, Bash Time!
Run, bash.exe
return

; === Open powershell ===
#+p::
Run, powershell.exe
return

; === Open cmd ===
#+c::
Run, cmd.exe
return

; === Open File Explorer ===
#+f::
Run, explorer, Documents
return

; === Open VirtualBox ===
#+v::
Run, VirtualBox.exe, C:\Program Files\Oracle\VirtualBox
return

; === Open Typora ===
#+t::
Run, Typora.exe, C:\Program Files\Typora
return

; === Open Default Developer Suit ===
#+d::
Run, Code.exe, C:\Users\calvi\AppData\Local\Programs\Microsoft VS Code
Run, Typora.exe, C:\Program Files\Typora
Run, Vivaldi.exe, C:\Users\calvi\AppData\Local\Vivaldi\Application
Run, bash.exe
return
