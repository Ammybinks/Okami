#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

on = 0

Ctrl & Z::
	if(on = 1)
	{
		Send {F11 up}
		on = 0
	}
	else
	{
		Send {F11 down}
		on = 1
	}
return
esc::exitapp