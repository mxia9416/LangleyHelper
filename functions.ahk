#Requires AutoHotkey v2.0
#Include utility.ahk
#Include <FindText>
#Include pathtonowhere.ahk

FindTextClass
;;Functions
BackToHome() {
    stdTargetX := 271
    stdTargetY := 98
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1840]
    stdCkptY := [190]
    desiredColor := ["0xDCE2ED"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "退回大厅失败！"
            ExitApp
        }
    }
}

OpenSlider() {
    stdTargetX := 1292
    stdTargetY := 601
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1870]
    stdCkptY := [263]
    desiredColor := ["0xf5f5fb"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开侧滑菜单失败！"
            ExitApp
        }
    }
}

CloseSlider() {
    stdTargetX := 960
    stdTargetY := 600
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1751]
    stdCkptY := [695]
    desiredColor := ["0xF1F3FB"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "关闭侧滑菜单失败！"
            ExitApp
        }
    }
}

OpenMiMeng() {
    stdTargetX := 1788
    stdTargetY := 422
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1172]
    stdCkptY := [466]
    desiredColor := ["0xD8E4FD"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开秘盟失败！"
            ExitApp
        }
    }
}

OpenDonate() {
    stdTargetX := 731
    stdTargetY := 763
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [429]
    stdCkptY := [937]
    desiredColor := ["0x920015"]
    desiredColor2 := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) AND !UserCheckColor(stdCkptX, stdCkptY,
        desiredColor2, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开秘盟捐赠失败！"
            ExitApp
        }
    }
}

Donate() {
    stdTargetX := 429
    stdTargetY := 937
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [429]
    stdCkptY := [937]
    desiredColor := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "秘盟捐赠失败！"
            ExitApp
        }
    }
}

OpenFriend() {
    stdTargetX := 1798
    stdTargetY := 579
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1756]
    stdCkptY := [942]
    desiredColor := ["0xA90B23"]
    desiredColor2 := ["0x5C5C5C"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) AND !UserCheckColor(stdCkptX, stdCkptY,
        desiredColor2, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开好友列表失败！"
            ExitApp
        }
    }
}

CollectFriendPoints() {
    stdTargetX := 1756
    stdTargetY := 942
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1756]
    stdCkptY := [942]
    desiredColor := ["0x5C5C5C"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "收集好友点数失败！"
            ExitApp
        }
    }
}

OpenOversight() {
    stdTargetX := 1633
    stdTargetY := 726
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1411]
    stdCkptY := [1055]
    desiredColor := ["0x141C27"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开监管设备失败!"
            ExitApp
        }
    }
}

CollectOversight() {
    stdTargetX := 195
    stdTargetY := 524
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [195]
    stdCkptY := [524]
    desiredColor := ["0x171F2B"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "一键收集监管失败！"
            ExitApp
        }
    }
}

OpenOversightStory() {
    stdTargetX := 237
    stdTargetY := 332
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1735]
    stdCkptY := [667]
    desiredColor := ["0xffffff"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开监管故事失败！"
            ExitApp
        }
    }
}

OversightStory() {

    UserClick(1735, 667, scrRatio)
    Sleep sleepTime

    while !UserCheckColor([1606], [1092], ["0x657291"], scrRatio) {
        UserClick(1735, 667, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "阅读监管故事失败！"
            ExitApp
        }
    }

    stdTargetX := 1736
    stdTargetY := 994
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1736]
    stdCkptY := [994]
    desiredColor := ["0x03050f"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "阅读监管故事失败！"
            ExitApp
        }
    }
}

OpenPurchase() {
    stdTargetX := 1501
    stdTargetY := 872
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [263]
    stdCkptY := [173]
    desiredColor := ["0x090806"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开商店失败！"
            ExitApp
        }
    }
}

SelectBundleTab() {

    Text :=
        "|<>*85$71.zzzzzzzzzzzzzzzzzzzzzzzzDzzzzzzzz27z3lsblzlzy07y3U001zUzw8Qy71U63zVwMEUw674C7z1s001sQ60MDy7kV33kw0E0Tw0V267zsMVlzQ024ADblx3ty00000S7U23Xzw0000070003zsMEVVsS0007zUkV33ky0M0Tz1V2673zXkTzy7000C7z1UjzsS7zkMDy707zkwTzkkz0007z1zzz1VC000Ty0000207ksTzs0Tzyw0DVktzU07zskET3VVz0E000NV0001w0U7z0y20C0znV4Dy3w7sw1zz3sTw7sDUS0zy7kzsDky1y0zwDU00T1sDy1zsT3w0y73zy3zkzXsDw0zzyDzVzVk7kU3zw3z3z1UT3U000Dy7y33iDk000TwDw6C8zw000zsRs8s3zzU03zks000TzzzzzzVzzzzzzzzzzzzzzzzzzzzzzzzzzzw"

    if (ok := FindText(&X, &Y, 490 - windowW, 793 - windowH, 490 + windowW, 793 + windowH, 0, 0, Text)) {
        FindText().Click(X, Y, "L")
    }

}

SearchFreeBundle() {
    maxloops := 10
    loopcounter := 0

    ; 开始拖动并检查图片
    loop {
        loopcounter++
        Text :=
            "|<>*113$103.U7z0Ts100Bns00000E3z0zzl0040Dk000083z1zzzU0400zU00001z3zzzk0200Dy00001y7zzbsM300Bvw0000aTzzkTzV0040Ds0002zzzkDzzU0200TU0U3zzzswvzy03003z0E3zzzwzsDzU1001zyM7zzzATw0zU1U00Xbw7zzz63y8DsTk00E0S3zzza1yD7zzy00E010Tzy77j7rsTzs08000DzqDbzXvw0zzUA000432TXzUFwEDzs4000D03zlzk1yTDzk20047k1zzzllzDzkT7s027s0bzzssz1zs1zzU13w0UDzwwTUDtUzzy1Vy0E0zySDW3wyTzzwVz0K03bzjnzyzzzzzkzUDk1Vzrtzy7zzzzMzk7y0Uzzszz0Tzzy8Ts7z0E3zw3zgDzzsATw3z0s0DzUDbzzzk7jy3zUT01zw7rzzzU7rz3zUTs0b3znzzy0DzzXzkDzUE0zsDzz0Tzzlzs7zwE0zy0zy1zzztzs7zz807zsTw3zzyxzw3yTs00zziE7zzzTzw3y3y00Hzy8TzzzDzy1z0z0083m9zzzzbzz1z0TU08007zzzznzz0zUDk04007zzzzlzzUTsDs1zk07zzzzszzUTzzw3zy01TzzzMQzkDzzw3zzk03zzzA0zsDzzw7zzw0U7zz40Ts7wTw3zzz000Tw20Dw3y3w3zkTkE01s30Dw3y0y3yE3s8008707y1z0TVz81s0008DU3m1z0Dlz00043041k3s0zU7wz4000Tz0001w0Tw7yTU003zzu001w0DzzyDm001zzz000y07zzzDt000zzzk00S03zzz7s000zyTw00T03wTz3wU00zs1z00DU1w3z0yE00Ts0Tk0DU0y040TU00Ts0Ds07k0z020Ds00Dw01k03s0T0003w00Dw04003s0DU001z007y00001w0Dk0U0Ts03y00001w07k0007zw1z01000y07s0E01zz0zU0000T03s0800zzUzU0000T01w003w3zkTk0000DU1y043v0TkDs00007U0y022yk00/y08007k0z023zc000z00003s0TU11zyk00Tk0003s0Dk0Uzzz007w2001w0Dw0UDzzc01zV001w1zk0EDzzw00zzw00aTw0087zl4U07zy00Vzk00TUzw0U01zzU0Ez0003VjzU800Dzk00y0000MGzs0001zs09"

        if (ok := FindText(&X, &Y, 1614 - 150000, 964 - 150000, 1614 + 150000, 964 + 150000, 0, 0, Text)) {
            FindText().Click(X, Y, "L")
            stdTargetX := 1581
            stdTargetY := 835
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            UserClick(stdTargetX, stdTargetY, scrRatio)
            break
        }
        if (loopcounter > maxloops) {
            MsgBox "寻找免费礼包失败！"
            ExitApp
        }

        ; 未找到图片，执行鼠标拖动
        SendEvent "{Click 1872 669 Down}{click 449 669 Up}"

        Sleep(sleepTime)
    }
}

OpenOffice() {
    stdTargetX := 1703
    stdTargetY := 546
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1724]
    stdCkptY := [518]
    desiredColor := ["0x7b8d9d"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开管理局办公室失败！"
            ExitApp
        }
    }
}

Dispatch() {
    stdTargetX := 843
    stdTargetY := 860
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [287]
    stdCkptY := [796]
    desiredColor := ["0x980016"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开派遣失败！"
            ExitApp
        }
    }

    stdTargetX := 287
    stdTargetY := 796
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    desiredColor := ["0x280002"]

    while !UserCheckColor([700], [831], desiredColor, scrRatio) AND !UserCheckColor([1222], [832], desiredColor,
    scrRatio) AND
    !UserCheckColor([1722], [826], desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "一键领取派遣失败！"
            ExitApp
        }
    }

    stdTargetX := 77
    stdTargetY := 95
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1724]
    stdCkptY := [518]
    desiredColor := ["0x7b8d9d"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "返回管理局办公室失败！"
            ExitApp
        }
    }
}

Stamina() {
    stdTargetX := 289
    stdTargetY := 514
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1287]
    stdCkptY := [274]
    desiredColor := ["0x030304"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开体力补给失败！"
            ExitApp
        }
    }

    stdTargetX := 1474
    stdTargetY := 541
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    desiredColor := ["0x940015"] ;改成可以领取时候的红色

    while UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "领取体力补给1失败！"
            ExitApp
        }
    }

    stdTargetX := 1500
    stdTargetY := 847
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    desiredColor := ["0x940015"]

    while UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "领取体力补给2失败！"
            ExitApp
        }
    }

    stdTargetX := 1773
    stdTargetY := 888
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1724]
    stdCkptY := [518]
    desiredColor := ["0x7b8d9d"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "返回管理局办公室失败！"
            ExitApp
        }
    }
}

OpenDyth() {
    stdTargetX := 1651
    stdTargetY := 354
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1651]
    stdCkptY := [354]
    desiredColor := ["0x262e3f"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开狄斯城失败！"
            ExitApp
        }
    }
}

OpenRiver() {
    stdTargetX := 376
    stdTargetY := 1016
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [737]
    stdCkptY := [728]
    desiredColor := ["0x111123"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开锈河失败！"
            ExitApp
        }
    }
}

MemoryStorm() {
    stdTargetX := 344
    stdTargetY := 375
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1458]
    stdCkptY := [725]
    desiredColor := ["0x786169"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开记忆风暴失败！"
            ExitApp
        }
    }

    stdTargetX := 1575
    stdTargetY := 790
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1382]
    stdCkptY := [962]
    desiredColor := ["0x2f1619"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开记忆畸点失败！"
            ExitApp
        }
    }

    stdTargetX := 1348
    stdTargetY := 1030
    desiredColor := ["0x494142"]
    if UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio)
        return
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1300]
    stdCkptY := [627]
    desiredColor := ["0x030304"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开连续扫荡失败！"
            ExitApp
        }
    }

    stdTargetX := 1004
    stdTargetY := 879
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1382]
    stdCkptY := [962]
    desiredColor := ["0x2f1619"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "连续扫荡失败！"
            ExitApp
        }
    }
}

OpenSea() {
    stdTargetX := 1645
    stdTargetY := 1018
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1508]
    stdCkptY := [615]
    desiredColor := ["0x203664"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开内海失败！"
            ExitApp
        }
    }
}

Well() {
    ;if !UserCheckColor([509], [545], ["0xffd213"], scrRatio)
    ;    return

    stdTargetX := 407
    stdTargetY := 589
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [767]
    stdCkptY := [244]
    desiredColor := ["0x11213f"]

    while UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开浊暗之井失败！"
            ExitApp
        }
    }

    Text :=
        "|<>*85$50.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzztsTXzzzzwC0MDzzzy1k71zzzz0A3kTzk0010y73w000EDVUTy0zy1zs3zUTzU001zs7s00Dzzy1y00yTzzUTzkD1zzkDzy1U7zw3szUE0zz0s7s00xzk00T00yTs307s0z7y3s3y0DnzUy0y000zsTUQ0007w7s03k00z3w1zz00DUz0MS003sDkC00k0w1w3UA7kz4C0s31wTn1UD0sT3xkM7kC7UTw01w3Xk3z00T0000zk0000xzzy0021z7zzy0zUTUTzzUTw3s3zzk7z0w0Tzw3zk40Tzy1zy00TTzUzzk0DbzkDzw0Dvzs7zz07wzy3zzU1zDz1zzU07XzVzz0M00zszy0zU07wTwDzw00yTzzzzk0DzzzzzzU7zzzzzzzzzzzzzzzzzU"

    if (ok := FindText(&X, &Y, 524 - windowW, 299 - windowH, 524 + windowW, 299 + windowH, 0, 0, Text)) {
        stdTargetX := 961
        stdTargetY := 970
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime

        stdCkptX := [736]
        stdCkptY := [268]
        desiredColor := ["0x060c1d"]

        while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            if A_Index > waitTolerance {
                MsgBox "切换浊暗之井失败！"
                ExitApp
            }
        }
    }

    stdTargetX := 1598
    stdTargetY := 778
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [953]
    stdCkptY := [145]
    desiredColor := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开乐园幻境失败！"
            ExitApp
        }
    }

    stdTargetX := 1181
    stdTargetY := 956
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [953]
    stdCkptY := [145]
    desiredColor := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "扫荡乐园幻境失败！"
            ExitApp
        }
    }

    stdTargetX := 1832
    stdTargetY := 661
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [736]
    stdCkptY := [268]
    desiredColor := ["0x060c1d"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "返回浊暗之井失败！"
            ExitApp
        }
    }
}

Gold() {
    stdTargetX := 1205
    stdTargetY := 178
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1570]
    stdCkptY := [1066]
    desiredColor := ["0x5b181e"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开淘金狂热失败！"
            ExitApp
        }
    }
    stdTargetX := 1575
    stdTargetY := 790
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0d0b02"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "选择淘金狂热失败！"
            ExitApp
        }
    }

    stdTargetX := 1348
    stdTargetY := 1030
    desiredColor := ["0x494142"]
    if UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio)
        return
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1300]
    stdCkptY := [627]
    desiredColor := ["0x030304"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开连续扫荡失败！"
            ExitApp
        }
    }

    if UserCheckColor([1342], [1019], ["0x494547"], scrRatio)
        return

    stdTargetX := 1393
    stdTargetY := 764
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1393]
    stdCkptY := [764]
    desiredColor := ["0x4c4c59"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "增加扫荡次数失败！"
            ExitApp
        }
    }

    stdTargetX := 1004
    stdTargetY := 879
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0d0b02"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "连续扫荡失败！"
            ExitApp
        }
    }
}

Seed() {
    stdTargetX := 1360
    stdTargetY := 189
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1570]
    stdCkptY := [1066]
    desiredColor := ["0x5b181e"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开恶兆之种失败！"
            ExitApp
        }
    }
    stdTargetX := 1575
    stdTargetY := 790
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0d0b02"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "选择恶兆之种失败！"
            ExitApp
        }
    }

    stdTargetX := 1348
    stdTargetY := 1030
    desiredColor := ["0x494142"]
    if UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio)
        return
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1300]
    stdCkptY := [627]
    desiredColor := ["0x030304"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开连续扫荡失败！"
            ExitApp
        }
    }

    stdTargetX := 1393
    stdTargetY := 764
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1393]
    stdCkptY := [764]
    desiredColor := ["0x4c4c59"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "增加扫荡次数失败！"
            ExitApp
        }
    }

    stdTargetX := 1004
    stdTargetY := 879
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0d0b02"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "连续扫荡失败！"
            ExitApp
        }
    }
}

Skill() {
    stdTargetX := 870
    stdTargetY := 480
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1570]
    stdCkptY := [1066]
    desiredColor := ["0x3f3a48"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开污染之巢失败！"
            ExitApp
        }
    }

    stdTargetX := 1575
    stdTargetY := 790
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0b090d"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "选择禁区探查失败！"
            ExitApp
        }
    }

    stdTargetX := 1348
    stdTargetY := 1030
    desiredColor := ["0x444445"]
    if UserCheckColor([stdTargetX], [stdTargetY], desiredColor, scrRatio)
        return
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1300]
    stdCkptY := [627]
    desiredColor := ["0x030304"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开连续扫荡失败！"
            ExitApp
        }
    }

    stdTargetX := 1393
    stdTargetY := 764
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1393]
    stdCkptY := [764]
    desiredColor := ["0x4c4c59"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "增加扫荡次数失败！"
            ExitApp
        }
    }

    stdTargetX := 1004
    stdTargetY := 879
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1822]
    stdCkptY := [993]
    desiredColor := ["0x0d0b02"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "连续扫荡失败！"
            ExitApp
        }
    }
}

OpenBP() {
    stdTargetX := 1723
    stdTargetY := 872
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1721]
    stdCkptY := [1105]
    desiredColor := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "打开监察密令失败！"
            ExitApp
        }
    }
}

BP() {
    stdTargetX := 681
    stdTargetY := 1065
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [461]
    stdCkptY := [1020]
    desiredColor := ["0x4e4f52"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "切换密令页面失败！"
            ExitApp
        }
    }
    stdTargetX := 1653
    stdTargetY := 947
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime
    UserClick(stdTargetX, stdTargetY, scrRatio)

    stdCkptX := [696]
    stdCkptY := [296]
    desiredColor := ["0xffd213"]

    while UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "领取每日奖励失败！"
            ExitApp
        }
    }

    if UserCheckColor([697], [425], ["0xffd213"], scrRatio) {
        stdTargetX := 611
        stdTargetY := 451

        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime

        stdCkptX := [827]
        stdCkptY := [362]
        desiredColor := ["0xffffff"]

        while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            if A_Index > waitTolerance {
                MsgBox "打开每周奖励页面失败！"
                ExitApp
            }
        }

        stdTargetX := 1653
        stdTargetY := 947
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        UserClick(stdTargetX, stdTargetY, scrRatio)

        stdCkptX := [697]
        stdCkptY := [425]
        desiredColor := ["0xffd213"]

        while UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            if A_Index > waitTolerance {
                MsgBox "领取每周奖励失败！"
                ExitApp
            }

        }
    }

    if UserCheckColor([1556], [1031], ["0xffd213"], scrRatio) {
        stdTargetX := 1457
        stdTargetY := 1060

        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime

        stdCkptX := [1445]
        stdCkptY := [1021]
        desiredColor := ["0x4c4d50"]

        while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            if A_Index > waitTolerance {
                MsgBox "打开监察奖励页面失败！"
                ExitApp
            }
        }

        stdTargetX := 1305
        stdTargetY := 917
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        UserClick(stdTargetX, stdTargetY, scrRatio)

        stdCkptX := [1558]
        stdCkptY := [1031]
        desiredColor := ["0xffd213"]

        while UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
            UserClick(stdTargetX, stdTargetY, scrRatio)
            Sleep sleepTime
            if A_Index > waitTolerance {
                MsgBox "领取监察奖励失败！"
                ExitApp
            }

        }
    }

}
