#InstallKeybdHook
#Persistent
#HotkeyInterval,100
#NoEnv
SetKeyDelay, –1
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%

Return

`::
; put the hiding windows stuff here
WinActivate, Outlook
Return


~Capslock & z:: ; Archive Email - I used the quick actions to set up ctrl+shift+9
    Outlook := ComObjActive("Outlook.Application")	
    Selection := Outlook.ActiveExplorer.Selection
	Send ^+9
	Outlook := ""
return
