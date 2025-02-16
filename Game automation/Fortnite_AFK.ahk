#Persistent

SetTimer, PressRandomKeys, 200000 ; 10 minutes in milliseconds

PressRandomKeys:
    Random, randKey, 1, 4   ; Generate a random number from 1 to 4
    Random, randDelay, 1, 10   ; Generate a random number of seconds to delay
    Random, holdTime, 3000, 10000 ; Randomly hold key between 1 and 3 seconds (in milliseconds)

    if (randKey = 1)          ; W
        Send, {w down}
    else if (randKey = 2)     ; A
        Send, {a down}
    else if (randKey = 3)     ; S
        Send, {s down}
    else if (randKey = 4)     ; D
        Send, {d down}

    Sleep, holdTime           ; Hold the key for 1-3 seconds
    Send, {w up}{a up}{s up}{d up} ; Release all keys to make sure the correct one is released

    Sleep, 50                  ; Small delay to ensure the key press is processed before the mouse click
    Click, Left                ; Left mouse click

    Sleep, randDelay * 1000    ; Convert seconds to milliseconds
return
