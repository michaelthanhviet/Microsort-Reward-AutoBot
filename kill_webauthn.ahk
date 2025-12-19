#Persistent
SetTimer, KillPopup, 500
return

KillPopup:
; Kiểm tra cửa sổ Windows Security
IfWinExist, Windows Security
{
    WinActivate
    Sleep, 100

    ; Cách 2 (dự phòng): Alt + C = Cancel
    Send, !c
}
return
