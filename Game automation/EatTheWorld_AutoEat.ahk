#Persistent

; Variables
keys := ["w", "a", "s", "d"]
isRunning := false
clickingEnabled := true

; Timer to press keys and click
SetTimer, PressKeysAndClick, 100  ; Set initial interval (will be adjusted dynamically)
SetTimer, PressKeysAndClick, Off  ; Start with the timer off

; Timer to manage clicking state
SetTimer, ToggleClicking, 10000  ; Every 10 seconds
SetTimer, ToggleClicking, Off  ; Start with the timer off

; Function to press keys and click
PressKeysAndClick:
    ; Choose a random key from the array
    Random, keyIndex, 1, keys.MaxIndex()
    key := keys[keyIndex]

    ; Press and hold the key
    Send, {%key% down}
    
    ; If clicking is enabled, press the left mouse button
    if (clickingEnabled)
    {
        Click
    }

    ; Hold the key for one second
    Sleep, 1000
    
    ; Release the key
    Send, {%key% up}
    
    return

; Function to toggle clicking state
ToggleClicking:
    clickingEnabled := !clickingEnabled
    if (!clickingEnabled)
    {
        ; Disable clicking for 1 second
        SetTimer, EnableClicking, 1000
    }
    return

; Function to enable clicking after 1 second
EnableClicking:
    clickingEnabled := true
    SetTimer, EnableClicking, Off  ; Disable this timer until next needed
    return

; Hotkey to toggle the script on/off with F8
F8::
    if (isRunning)
    {
        SetTimer, PressKeysAndClick, Off
        SetTimer, ToggleClicking, Off
        ToolTip Script Paused
    }
    else
    {
        SetTimer, PressKeysAndClick, On
        SetTimer, ToggleClicking, On
        ToolTip Script Running
    }
    isRunning := !isRunning
    Sleep, 1000
    ToolTip
    return

; Exit script with F9
F9::ExitApp
