#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

count = 0

loop
{
	MouseGetPos,x1,y1
	loop
	{
		Sleep,100
		MouseGetPos,x2,y2
		If ((x1<>x2) or (y1<>y2))             ;-- Checking to see if the mouse has moved.
		{
			Send {F11 down}
			count = 0
			Break
		}
		else
		{
			if(count >= 2000)
			{
				Send {F11 up}
				Break
			}
			count = count + 1
		}
	}
}
return
F11::pause