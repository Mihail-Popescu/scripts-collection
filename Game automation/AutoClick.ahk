#Persistent
#SingleInstance Force

; Variables
isToggled := false
ExitScript := false

; Hotkey to toggle the A/D sequence
F8::
    isToggled := !isToggled ; Toggle the state
return

; Exit script with F9
F9::ExitApp

Loop
{
    if (ExitScript)
        ExitApp ; Exit the script if F9 is pressed

    if (isToggled)
    {
        ; Hold A for 5 seconds
        Send, {a down}
        Sleep, 5000
        Send, {a up}

        ; Hold D for 5 seconds
        Send, {d down}
        Sleep, 5000
        Send, {d up}
    }
    else
    {
        Sleep, 100 ;
    }
}
