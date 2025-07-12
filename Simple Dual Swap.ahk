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
    ToolTip(text, 950, 500)
    SetTimer(RemoveToolTip, -1000)
}

RemoveToolTip(*) {
    ToolTip
    return
}

;-- Hotkeys ---
\:: {
    global swapEnabled
    Send("\")
    swapEnabled := !swapEnabled
    ShowTip("Swap Macro: " (swapEnabled ? "Enabled" : "Disabled"))
}

+:: {
    global swapEnabled
    if (!swapEnabled) {
        Send("[")
        ShowTip("[")
        return
    }
    Swap_74()
    return
}

-:: {
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
    Send("{F1}")
    Sleep(200)
    Send("{Left}")
    Sleep(200)
    Send("^2")
    Sleep(100)

    Loop 3
    {
        Sleep(35)
        Send("{Left}")
    }
    Sleep(200)

    Loop 35
    {
        MouseMove(320, 830)
        Sleep(23)
        Click()
        MouseMove(320, 700)
        Sleep(23)
        Click()
        MouseMove(200, 830)
        Sleep(23)
        Click()
    }


    Sleep(150)
    Loop 13 {
        MouseMove(320, 700)
        Sleep(10)
        Click()
    }
    Sleep(50)
    Send("^2")
    Sleep(150)
    Send("{F1}")
}

; Lorentz/Dual Swap 27K
Swap_27K() {
    Sleep(50)
    Send("{F1}")
    Sleep(200)
    Send("{Left}")
    Sleep(200)
    Send("^3")
    Sleep(100)

    Loop 3
    {
        Sleep(35)
        Send("{Left}")
    }
    Sleep(200)

    Loop 30
    {
        MouseMove(320, 830)
        Sleep(23)
        Click()
        MouseMove(320, 700)
        Sleep(23)
        Click()
        MouseMove(200, 830)
        Sleep(23)
        Click()
    }


    Sleep(150)
    Loop 10 {
        MouseMove(320, 700)
        Sleep(10)
        Click()
    }
    Sleep(50)
    Send("^3")
    Sleep(150)
    Send("{F1}")
}