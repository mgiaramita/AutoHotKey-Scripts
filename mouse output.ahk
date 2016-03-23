#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

loop{
If (getkeystate("MButton","P")){	
	keywait, MButton

	MouseGetPos, xpos, ypos 
	loop{
		MouseGetPos, xNew, yNew

		if(yNew > ypos){
			send, {a down}{a up}
			MouseMove, xpos, ypos
		}
		if(yNew < ypos){
				send, {b down}{b up}
		MouseMove, xpos, ypos
		}
	
		If (getkeystate("MButton","P"))
		{	keywait, MButton
			break
		}

		Sleep, 10
	}
}
Sleep, 10
}