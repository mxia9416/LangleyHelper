#Requires AutoHotkey v2.0

;;Utilities
IsSimilarColor(targetColor, color) {
    tr := Format("{:d}", "0x" . substr(targetColor, 3, 2))
    tg := Format("{:d}", "0x" . substr(targetColor, 5, 2))
    tb := Format("{:d}", "0x" . substr(targetColor, 7, 2))

    pr := Format("{:d}", "0x" . substr(color, 3, 2))
    pg := Format("{:d}", "0x" . substr(color, 5, 2))
    pb := Format("{:d}", "0x" . substr(color, 7, 2))

    ;MsgBox tr tg tb pr pg pb

    distance := sqrt((tr - pr) ** 2 + (tg - pg) ** 2 + (tb - pb) ** 2)

    if (distance < colorTolerance)
        return true

    return false
}

UserClick(sX, sY, k) {
    uX := Round(sX * k)
    uY := Round(sY * k)
    Send "{Click " uX " " uY "}"
}

UserCheckColor(sX, sY, sC, k) {
    loop sX.Length {
        uX := Round(sX[A_Index] * k)
        uY := Round(sY[A_Index] * k)
        uC := PixelGetColor(uX, uY)
        if (!IsSimilarColor(uC, sC[A_Index]))
            return 0
    }
    return 1
}
