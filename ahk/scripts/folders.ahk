;; based on @babygau's answer here https://stackoverflow.com/a/40559502
#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#InstallKeybdHook
#SingleInstance force
DetectHiddenWindows, on
SetWinDelay, 0

SendMode Input


; Open Downloads folder
~Capslock & d::
    SetCapsLockState, AlwaysOff
    Run "C:\Users\wilsonm\Downloads" 
return

; Open code folder
~Capslock & c::
    SetCapsLockState, AlwaysOff
    Run "D:\code"
return