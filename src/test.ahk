#Requires AutoHotkey v2

Loop {
    WinWaitActive "Security key setup", , 1
    if WinActive("Security key setup") {
        ControlClick "Button2"  ; Button2 = Cancel
        Sleep 500
    }
}
