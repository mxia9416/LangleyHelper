#Requires AutoHotkey v2.0
#SingleInstance Force
#Include <FindText>
#Include utility.ahk
#Include functions.ahk
#Include settings.ahk
SetDefaultMouseSpeed 10
FindTextClass

global sleepTime := 1000
global scrRatio := 1.0

;consts
global waitTolerance := 10
global colorTolerance := 15
global stdScreenW := 1920
global stdScreenH := 1080

F1:: {
    ;EnterGame()
    ;DailyCheck()
    ;MiMeng()
    ;Friend()
    ;Oversight()
    ;Purchase()
    ;Office()
    ;DoMemoryStorm()
    ;DoWell()
    ;SweepGold()
    ;SweepSeed()
    ;SweepSkill()
    ;CollectDaily()

}

^1:: {
    ExitApp
}

global currentVersion := "v0.1"
global usr := "mxia9416"
global repo := "NightingaleHelper"

;;Tasks
EnterGame() {
    WinActivate '雷电模拟器'
    stdTargetX := 966
    stdTargetY := 1011
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1044]
    stdCkptY := [1046]
    desiredColor := ["0x000000"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "进入游戏失败！"
            ExitApp
        }
    }
}

DailyCheck() {
    WinActivate '雷电模拟器'
    stdTargetX := 91
    stdTargetY := 567
    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1609]
    stdCkptY := [206]
    desiredColor := ["0xdce2ed"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "情绪检测part1失败！"
            ExitApp
        }
    }

    Click 91, 567
    sleep sleepTime
    Click 1609, 206
    sleep sleepTime
    Click 1247, 588
    sleep sleepTime
    Click 863, 859
    sleep sleepTime
    Click 1082, 858
    sleep sleepTime
    Click 1299, 856
    sleep sleepTime
    Click 1522, 856
    sleep sleepTime

    UserClick(stdTargetX, stdTargetY, scrRatio)
    Sleep sleepTime

    stdCkptX := [1751]
    stdCkptY := [695]
    desiredColor := ["0xF1F3FB"]

    while !UserCheckColor(stdCkptX, stdCkptY, desiredColor, scrRatio) {
        UserClick(stdTargetX, stdTargetY, scrRatio)
        Sleep sleepTime
        if A_Index > waitTolerance {
            MsgBox "情绪检测part2失败！"
            ExitApp
        }
    }
}

MiMeng() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = false) {
        OpenSlider()
    }
    OpenMiMeng()
    OpenDonate()
    Donate()
    BackToHome()
    CloseSlider()
}

Friend() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = false) {
        OpenSlider()
    }
    OpenFriend()
    CollectFriendPoints()
    BackToHome()
    CloseSlider()
}

Oversight() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = false) {
        OpenSlider()
    }
    OpenOversight()
    CollectOversight()
    if (UserCheckColor([293], [275], ["0xffd213"], scrRatio) = true) {
        OpenOversightStory()
        OversightStory()
    }
    BackToHome()
    CloseSlider()
}

Purchase() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    if (UserCheckColor([1581], [808], ["0xffd215"], scrRatio) = true) {
        OpenPurchase()
        SelectBundleTab()
        SearchFreeBundle()
        BackToHome()
    }
}

Office() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    if (UserCheckColor([1835], [472], ["0xffd215"], scrRatio) = true) {
        OpenOffice()
        Dispatch()
        Stamina()
        BackToHome()
    }
}

DoMemoryStorm() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenDyth()
    OpenRiver()
    MemoryStorm()
    BackToHome()

}

DoWell() {
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenDyth()
    OpenSea()
    Well()
    BackToHome()
}

SweepGold(){
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenDyth()
    OpenRiver()
    Gold()
    BackToHome()
}

SweepSeed(){
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenDyth()
    OpenRiver()
    Seed()
    BackToHome()
}

SweepSkill(){
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenDyth()
    OpenRiver()
    Skill()
    BackToHome()
}

CollectDaily(){
    WinActivate '雷电模拟器'
    if (UserCheckColor([1870], [263], ["0xf5f5fb"], scrRatio) = true) {
        CloseSlider()
    }
    OpenBP()
    BP()
    BackToHome()
}

try {
    WinGetPos &windowX, &windowY, &windowW, &windowH, "雷电模拟器" 
} catch as err{
    MsgBox "请先开启雷电模拟器"
    ExitApp
} 

if !A_IsAdmin {
    MsgBox "请以管理员身份运行雪鸮小助手"
    ExitApp
}

;读取设置
SetWorkingDir A_ScriptDir
try {
    LoadSettings()
}
catch as err {
    WriteSettings()
}

if isCheckedAutoCheckUpdate {
    CheckForUpdate()
}

;创建gui
YYGui := Gui(, "雪鸮小助手 " currentVersion)
YYGui.Opt("+Resize")
YYGui.MarginY := Round(YYGui.MarginY * 0.9)
YYGui.SetFont("cred s15")
YYGui.Add("Text", "R1", "紧急停止按ctrl + 1")
YYGui.Add("Link"," R1", '<a href="https://github.com/mxia9416/NightingaleHelper">项目地址</a>')
YYGui.SetFont()
YYGui.Add("Button", "R1 x+10", "帮助").OnEvent("Click", ClickOnHelp)
YYGui.Add("Button","R1 x+10","检查更新").OnEvent("Click", ClickOnCheckForUpdate)
Tab := YYGui.Add("Tab3","xm") ;由于autohotkey有bug只能这样写
Tab.Add(["雪鸮设置","收获","作战"])
Tab.UseTab("雪鸮设置")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedAutoCheckUpdate) " R2", "自动检查更新(确保能连上github)").OnEvent("Click", ClickAutoCheckUpdate)
YYGui.Add("Text",, "点击间隔(单位毫秒)，谨慎更改")
YYGui.Add("DropDownList", "Choose" SleepTimeToLabel(sleepTime),  [750, 1000, 1250, 1500, 1750, 2000]).OnEvent("Change", ChangeOnSleepTime)
YYGui.Add("Text",, "色差容忍度，能跑就别改")
YYGui.Add("DropDownList", "Choose" ColorToleranceToLabel(colorTolerance), ["严格", "宽松"]).OnEvent("Change", ChangeOnColorTolerance)
YYGui.Add("Button","R1" , "保存当前设置").OnEvent("Click", SaveSettings)
Tab.UseTab("收获")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedEnterGame) " R1.2", "进入游戏并点掉促销页面").OnEvent("Click", ClickOnEnterGame)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedDailyCheck) " R1.2", "执行情绪检测").OnEvent("Click", ClickOnDailyCheck)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedMiMeng) " R1.2", "秘盟收取及捐赠（最低档）").OnEvent("Click", ClickOnMiMeng)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedFriend) " R1.2", "好友点数收取").OnEvent("Click", ClickOnFriend)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedOversight) " R1.2", "监管奖励收取").OnEvent("Click", ClickOnOversight)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedPurchase) " R1.2", "领取每日免费礼包").OnEvent("Click", ClickOnPurchase)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedOffice) " R1.2", "一键派遣/领取体力").OnEvent("Click", ClickOnOffice)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedCollectDaily) " R1.2", "领取每日和战令奖励").OnEvent("Click", ClickOnCollectDaily)
Tab.UseTab("作战")
YYGui.SetFont("cred")
YYGui.Add("Text", "R1", "作战任务都需要已经开启扫荡，否则别选")
YYGui.Add("Text", "R1", "金币/恶种/技能书:都会扫荡最高级副本并且用光体力")
YYGui.Add("Text", "R1", "为完成每日可三选一或手动扫荡自己需要的地图")
YYGui.SetFont()
YYGui.Add("Checkbox", IsCheckedToString(isCheckedDoMemoryStorm) " R1.2", "扫荡记忆风暴").OnEvent("Click", ClickOnDoMemoryStorm)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedDoWell) " " " R1.2", "扫荡浊暗之井乐园幻境").OnEvent("Click", ClickOnDoWell)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedSweepGold) " R1.2", "扫荡金币副本").OnEvent("Click", ClickOnSweepGold)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedSweepSeed) " R1.2", "扫荡恶种副本").OnEvent("Click", ClickOnSweepSeed)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedSweepSkill) " R1.2", "扫荡技能书副本").OnEvent("Click", ClickOnSkill)
Tab.UseTab()
YYGui.Add("Button", "Default w80 xm+100", "开始办公!").OnEvent("Click", ClickOnLanli)
YYGui.Show()