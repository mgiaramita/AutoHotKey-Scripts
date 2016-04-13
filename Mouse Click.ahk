#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

loop{
If (getkeystate("MButton","P")){	
	keywait, MButton
 	bool := false
	loop{
		
		MouseClick, left
		loop, 45
		{
			Sleep, 100
			If (getkeystate("MButton","P"))
			{	keywait, MButton
				bool := true
			}
		}

		If (bool == true){
			break
		}
	}
}
Sleep, 10
}