#HotIf Winactive('Destiny 2')
#SingleInstance Force
Persistent
SetMouseDelay 0
SendMode "Input"
SetKeyDelay -1

; Written by Korone :3
;--- Variables ---
swapEnabled := true

;--- ShowTip ---
ShowTip(text)
{
    ToolTip(text, 949, 500)
    SetTimer(RemoveToolTip, -1000)
}

RemoveToolTip(*) {
    ToolTip
    return
}

;-- Hotkeys ---
\:: {
    global swapEnabled
    swapEnabled := !swapEnabled
    ShowTip("Swap Macro: " (swapEnabled ? "Enabled" : "Disabled"))
}

[:: {
    global swapEnabled
    if (!swapEnabled) {
        Send("[")
        ShowTip("[")
        return
    }
    Swap_74()
    return
}

]:: {
    global swapEnabled
    if (!swapEnabled) {
        Send("]")
        ShowTip("]")
        return
    }
    Swap_27K()
    return
}


; --- Swaps ---

; Lorentz/Dual Swap 74
Swap_74() {
    Sleep(50)
    Send("i")
    Sleep(200)
    Send("{Left}")
    Sleep(200)
    Send("6")
    Sleep(100)

    Loop 3
    {
        Sleep(35)
        Send("{Left}")
    }
    Sleep(200)

    Loop 40
    {
        MouseMove(240, 530) ; Loadout 6
        Sleep(23)
        Click()
        MouseMove(240, 620) ; Loadout 8
        Sleep(23)
        Click()
        MouseMove(160, 530) ; Loadout 5
        Sleep(23)
        Click()
    }

    Sleep(50)
    MouseMove(520, 520)
    Sleep(300)
    Click()
    Sleep(25)

    Send("6")
    Sleep(50)
}

; Lorentz/Dual Swap 27K
Swap_27K() {
    Sleep(50)
    Send("i")
    Sleep(200)
    Send("{Left}")
    Sleep(200)
    Send("0")
    Sleep(100)

    Loop 3
    {
        Sleep(35)
        Send("{Left}")
    }
    Sleep(200)

    Loop 40
    {
        MouseMove(240, 530) ; Loadout 6
        Sleep(23)
        Click()
        MouseMove(240, 620) ; Loadout 8
        Sleep(23)
        Click()
        MouseMove(160, 530) ; Loadout 5
        Sleep(23)
        Click()
    }

    Sleep(50)
    MouseMove(520, 520)
    Sleep(300)
    Click()
    Sleep(25)

    Send("0")
    Sleep(50)
}