#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Alt-Tab every 60 seconds
;press Ctrl+j to start script

^j::
loop{
	Sleep, 60000
	send, {Alt down}{Tab down}
	Sleep, 20
	send, {Alt up}{Tab up}
}