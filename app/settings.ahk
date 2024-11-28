#Requires AutoHotkey v2.0
#Include pathtonowhere.ahk
#Include <github>

ClickAutoCheckUpdate(*) {
    global isCheckedAutoCheckUpdate
    isCheckedAutoCheckUpdate := 1 - isCheckedAutoCheckUpdate
}

ClickOnEnterGame(*) {
    global isCheckedEnterGame
    isCheckedEnterGame := 1 - isCheckedEnterGame
}

ClickOnDailyCheck(*) {
    global isCheckedDailyCheck
    isCheckedDailyCheck := 1 - isCheckedDailyCheck
}

ClickOnPurchase(*) {
    global isCheckedPurchase
    isCheckedPurchase := 1 - isCheckedPurchase
}

ClickOnMiMeng(*) {
    global isCheckedMiMeng
    isCheckedMiMeng := 1 - isCheckedMiMeng
}

ClickOnFriend(*) {
    global isCheckedFriend
    isCheckedFriend := 1 - isCheckedFriend
}

ClickOnOversight(*) {
    global isCheckedOversight
    isCheckedOversight := 1 - isCheckedOversight
}

ClickOnOffice(*) {
    global isCheckedOffice
    isCheckedOffice := 1 - isCheckedOffice
}

ClickOnDoMemoryStorm(*) {
    global isCheckedDoMemoryStorm
    isCheckedDoMemoryStorm := 1 - isCheckedDoMemoryStorm
}

ClickOnDoWell(*) {
    global isCheckedDoWell
    isCheckedDoWell := 1 - isCheckedDoWell
}

ClickOnSweepSeed(*) {
    global isCheckedSweepSeed
    isCheckedSweepSeed := 1 - isCheckedSweepSeed
}

ClickOnSkill(*) {
    global isCheckedSweepSkill
    isCheckedSweepSkill := 1 - isCheckedSweepSkill
}

ClickOnCollectDaily(*) {
    global isCheckedCollectDaily
    isCheckedCollectDaily := 1 - isCheckedCollectDaily
}

ClickOnSweepGold(*) {
    global isCheckedSweepGold
    isCheckedSweepGold := 1 - isCheckedSweepGold
}

ChangeOnSleepTime(GUICtrl, *) {
    global sleepTime
    switch GUICtrl.Value {
        case 1: sleepTime := 750
        case 2: sleepTime := 1000
        case 3: sleepTime := 1250
        case 4: sleepTime := 1500
        case 5: sleepTime := 1750
        case 6: sleepTime := 2000
        default: sleepTime := 1500
    }
}

ChangeOnColorTolerance(GUICtrl, *) {
    global colorTolerance
    switch GUICtrl.Value {
        case 1: colorTolerance := 15
        case 2: colorTolerance := 35
        default: colorTolerance := 15
    }
}

ClickOnHelp(*) {
    msgbox "
    (
    #############################################
    使用说明

    对大多数老玩家来说雪鸮设置保持默认就好。
    万一雪鸮失控，请按Ctrl + 1组合键结束进程。
    万一雪鸮失控，请按Ctrl + 1组合键结束进程。
    万一雪鸮失控，请按Ctrl + 1组合键结束进程。

    ############################################# 
    要求：

    - 【雷电模拟器-设置-性能设置-分辨率-平板版-1920x1080（dpi280）】
    - 游戏语言设置为简体中文
    - 以**管理员身份**运行雪鸮小助手
    - 不要开启windows HDR显示

    ############################################# 
    步骤：

    -用雷电模拟器打开无期迷途，在卓娅出现之后，打开雪鸮小助手点击“开始办公！”按钮。然后就可以悠闲地去泡一杯咖啡，或者刷一会儿手机，等待雪鸮完成工作了。
    -游戏需要更新的时候请更新完再使用雪鸮。

    ############################################# 
    其他:
    
    -检查是否发布了新版本。
    -如果出现死循环，提高点击间隔可以解决80%的问题。
    -如果你的电脑配置较好的话，或许可以尝试降低点击间隔。
    
    )"

}

ClickOnCheckForUpdate(*) {
    latestObj := Github.latest(usr, repo)
    if currentVersion != latestObj.version {
        userResponse := MsgBox(
            "雪鸮小助手存在更新版本:`n"
            "`nVersion: " latestObj.version
            "`nNotes:`n"
            . latestObj.change_notes
            "`n`n是否下载?", , '36')

        if (userResponse = "Yes") {
            try {
                Github.Download(latestObj.downloadURLs[1], A_ScriptDir "\YYDownload")
            }
            catch as err {
                MsgBox "下载失败，请检查网络。"
            }
            else {
                FileMove "DoroDownload.exe", "NightingaleHelper-" latestObj.version ".exe"
                MsgBox "已下载至当前目录。"
                ExitApp
            }
        }
    }
    else {
        MsgBox "当前雪鸮小助手已是最新版本。"
    }
}

CheckForUpdate() {
    latestObj := Github.latest(usr, repo)
    if currentVersion != latestObj.version {
        userResponse := MsgBox(
            "雪鸮小助手存在更新版本:`n"
            "`nVersion: " latestObj.version
            "`nNotes:`n"
            . latestObj.change_notes
            "`n`n是否下载?", , '36')

        if (userResponse = "Yes") {
            try {
                Github.Download(latestObj.downloadURLs[1], A_ScriptDir "\YYDownload")
            }
            catch as err {
                MsgBox "下载失败，请检查网络。"
            }
            else {
                FileMove "DoroDownload.exe", "NightingaleHelper-" latestObj.version ".exe"
                MsgBox "已下载至当前目录。"
                ExitApp
            }
        }
    }
}

ClickOnLanli(*) {
    WriteSettings()

    title := "雷电模拟器"

    numLDplayer := WinGetCount(title)

    if numLDplayer = 0 {
        MsgBox "未检测到雷电模拟器主程序"
        ExitApp
    }

    loop {

        ;scrRatio := windowW / stdScreenW

        WinActivate "雷电模拟器"

        if isCheckedEnterGame
            EnterGame()

        if isCheckedDailyCheck
            DailyCheck()

        if isCheckedMiMeng
            MiMeng()

        if isCheckedFriend
            Friend()

        if isCheckedOversight
            Oversight()

        if isCheckedPurchase
            Purchase()

        if isCheckedOffice
            Office()

        if isCheckedDoMemoryStorm
            DoMemoryStorm()

        if isCheckedDoWell
            DoWell()

        if isCheckedSweepGold
            SweepGold()

        if isCheckedSweepSeed
            SweepSeed()

        if isCheckedSweepSkill
            SweepSkill()

        if isCheckedCollectDaily
            CollectDaily()
        MsgBox "雪鸮完成工作！"

        ExitApp
    }

}

SleepTimeToLabel(sleepTime) {
    return String(sleepTime / 250 - 2)
}

ColorToleranceToLabel(colorTolerance) {
    switch colorTolerance {
        case 15: return "1"
        case 35: return "2"
        default:
            return "1"
    }
}

IsCheckedToString(foo) {
    if foo
        return "Checked"
    else
        return ""
}

SaveSettings(*) {
    WriteSettings()
    MsgBox "设置已保存！"
}

WriteSettings(*) {
    IniWrite(sleepTime, "settings.ini", "section1", "sleepTime")
    IniWrite(colorTolerance, "settings.ini", "section1", "colorTolerance")
    IniWrite(isCheckedEnterGame, "settings.ini", "section1", "isCheckedEnterGame")
    IniWrite(isCheckedDailyCheck, "settings.ini", "section1", "isCheckedDailyCheck")
    IniWrite(isCheckedMiMeng, "settings.ini", "section1", "isCheckedMiMeng")
    IniWrite(isCheckedFriend, "settings.ini", "section1", "isCheckedFriend")
    IniWrite(isCheckedOversight, "settings.ini", "section1", "isCheckedOversight")
    IniWrite(isCheckedPurchase, "settings.ini", "section1", "isCheckedPurchase")
    IniWrite(isCheckedOffice, "settings.ini", "section1", "isCheckedOffice")
    IniWrite(isCheckedDoMemoryStorm, "settings.ini", "section1", "isCheckedDoMemoryStorm")
    IniWrite(isCheckedDoWell, "settings.ini", "section1", "isCheckedDoWell")
    IniWrite(isCheckedSweepGold, "settings.ini", "section1", "isCheckedSweepGold")
    IniWrite(isCheckedSweepSeed, "settings.ini", "section1", "isCheckedSweepSeed")
    IniWrite(isCheckedSweepSkill, "settings.ini", "section1", "isCheckedSweepSkill")
    IniWrite(isCheckedCollectDaily, "settings.ini", "section1", "isCheckedCollectDaily")
    IniWrite(isCheckedAutoCheckUpdate, "settings.ini", "section1", "isCheckedAutoCheckUpdate")

}

LoadSettings() {
    global sleepTime
    global colorTolerance
    global isCheckedEnterGame
    global isCheckedDailyCheck
    global isCheckedMiMeng
    global isCheckedFriend
    global isCheckedOversight
    global isCheckedPurchase
    global isCheckedOffice
    global isCheckedDoMemoryStorm
    global isCheckedDoWell
    global isCheckedSweepGold
    global isCheckedSweepSeed
    global isCheckedSweepSkill
    global isCheckedCollectDaily
    global isCheckedAutoCheckUpdate

    sleepTime := IniRead("settings.ini", "section1", "sleepTime")
    colorTolerance := IniRead("settings.ini", "section1", "colorTolerance")
    isCheckedEnterGame := IniRead("settings.ini", "section1", "isCheckedEnterGame")
    isCheckedDailyCheck := IniRead("settings.ini", "section1", "isCheckedDailyCheck")
    isCheckedMiMeng := IniRead("settings.ini", "section1", "isCheckedMiMeng")
    isCheckedFriend := IniRead("settings.ini", "section1", "isCheckedFriend")
    isCheckedOversight := IniRead("settings.ini", "section1", "isCheckedOversight")
    isCheckedPurchase := IniRead("settings.ini", "section1", "isCheckedPurchase")
    isCheckedOffice := IniRead("settings.ini", "section1", "isCheckedOffice")
    isCheckedDoMemoryStorm := IniRead("settings.ini", "section1", "isCheckedDoMemoryStorm")
    isCheckedDoWell := IniRead("settings.ini", "section1", "isCheckedDoWell")
    isCheckedSweepGold := IniRead("settings.ini", "section1", "isCheckedSweepGold")
    isCheckedSweepSeed := IniRead("settings.ini", "section1", "isCheckedSweepSeed")
    isCheckedSweepSkill := IniRead("settings.ini", "section1", "isCheckedSweepSkill")
    isCheckedCollectDaily := IniRead("settings.ini", "section1", "isCheckedCollectDaily")
    isCheckedAutoCheckUpdate := IniRead("settings.ini", "section1", "isCheckedAutoCheckUpdate")
}

global isCheckedEnterGame := 1
global isCheckedDailyCheck := 1
global isCheckedMiMeng := 1
global isCheckedFriend := 1
global isCheckedOversight := 1
global isCheckedPurchase := 1
global isCheckedOffice := 1
global isCheckedDoMemoryStorm := 1
global isCheckedDoWell := 1
global isCheckedSweepGold := 1
global isCheckedSweepSeed := 0
global isCheckedSweepSkill := 0
global isCheckedCollectDaily := 1
global isCheckedAutoCheckUpdate := 1