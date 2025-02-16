; Define the hotkey to trigger the super jump (e.g., F1)
F1::
{
    ; Hold down Shift and W
    Send, {Shift down}
    Send, {w down}
    Sleep, 100
    ; Press E
    Send, {e down}
    Send, {e up}
    Sleep, 100
    ; Start moving the mouse and jumping simultaneously
    ; Use a separate thread to press Space and move the mouse at the same time
    SetKeyDelay, 0, 10 ; Ensure there's no delay in key presses

    ; Start a new thread to press Space after a short delay
    ; This allows the mouse to start moving first
    ThreadSpaceJump := Func("SpaceJump").Bind()
    ThreadSpaceJump.Call() ; Call the function in a separate thread

    ; Move the mouse continuously to the right
    MouseMove, -8000, 0, 6, R  ; Adjust the speed and distance as needed

    ; Release Shift and W
    Send, {Shift up}
    Send, {w up}

    return
}

; Function to press the Space key
SpaceJump()
{
    Send, {Space down}
    Sleep, 50  ; Adjust the jump key press duration if necessary
    Send, {Space up}
}

; Press F2 to exit the script
F2::ExitApp
