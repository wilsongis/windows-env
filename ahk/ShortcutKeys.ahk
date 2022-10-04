;; based on @babygau's answer here https://stackoverflow.com/a/40559502
#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#InstallKeybdHook
#SingleInstance force
DetectHiddenWindows, on
SetWinDelay, 0

SendMode Input

;; deactivate capslock completely
SetCapslockState, AlwaysOff

;; remap capslock to hyper
;; if capslock is toggled, remap it to esc

;; note: must use tidle prefix to fire hotkey once it is pressed
;; not until the hotkey is released
~Capslock::
    ;; downtemp tells subsequent sends that the key is not permanently down, and may be released whenever a keystroke calls for it.
    Send {Ctrl DownTemp}{Shift DownTemp}{Alt DownTemp}
    KeyWait, Capslock
    Send {Ctrl Up}{Shift Up}{Alt Up}
    if (A_PriorKey = "Capslock") {
        Send {Esc}
    }
return


;; Programs
~Capslock & e::
    Run Code
Return
~Capslock & t::
    terminal := WinExist("ahk_exe WindowsTerminal.exe")
    if (terminal) 
    {
        active := WinActive("ahk_id " terminal)
        if (active)
            WinMinimize, ahk_id %active%
        else
            WinActivate, ahk_id %terminal%
    }
    else
        Run, wt.exe
Return

;; Outlook
; Archive Email - I used the quick actions to set up ctrl+shift+9
~Capslock & z:: 
    Outlook := ComObjActive("Outlook.Application")	
    Selection := Outlook.ActiveExplorer.Selection
	Send ^+9
	Outlook := ""
return

;; Folders
; Open Downloads folder
~Capslock & d::
    Run "C:\Users\wilsonm\Downloads" 
return

; Open code folder
~Capslock & c::
    Run "D:\code"
return