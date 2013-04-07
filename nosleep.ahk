CoordMode, Mouse, Screen

MouseGetPos, CurrentX, CurrentY

Loop {
    Sleep, 60000
    LastX := CurrentX
    LastY := CurrentY
    MouseGetPos, CurrentX, CurrentY
    If (CurrentX = LastX and CurrentY = LastY) {
        MouseMove, 1, 1, , R
        Sleep, 100
        MouseMove, -1, -1, , R
    }
}
