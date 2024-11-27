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
WinGetPos &windowX, &windowY, &windowW, &windowH, "雷电模拟器"

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
global usr := "kyokakawaii"
global repo := "DoroHelper"

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



if !A_IsAdmin {
    MsgBox "请以管理员身份运行夜莺小助手"
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
YYGui := Gui(, "夜莺小助手 " currentVersion)
YYGui.Opt("+Resize")
YYGui.MarginY := Round(YYGui.MarginY * 0.9)
YYGui.SetFont("cred s15")
YYGui.Add("Text", "R1", "紧急停止按ctrl + 1")
YYGui.Add("Link"," R1", '<a href="https://github.com/">项目地址</a>')
YYGui.SetFont()
YYGui.Add("Button", "R1 x+10", "帮助").OnEvent("Click", ClickOnHelp)
YYGui.Add("Button","R1 x+10","检查更新").OnEvent("Click", ClickOnCheckForUpdate)
Tab := YYGui.Add("Tab3","xm") ;由于autohotkey有bug只能这样写
Tab.Add(["doro设置","收获","商店","日常","默认"])
Tab.UseTab("doro设置")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedAutoCheckUpdate) " R2", "自动检查更新(确保能连上github)").OnEvent("Click", ClickAutoCheckUpdate)
YYGui.Add("Text",, "点击间隔(单位毫秒)，谨慎更改")
YYGui.Add("DropDownList", "Choose" SleepTimeToLabel(sleepTime),  [750, 1000, 1250, 1500, 1750, 2000]).OnEvent("Change", ChangeOnSleepTime)
YYGui.Add("Text",, "色差容忍度，能跑就别改")
YYGui.Add("DropDownList", "Choose" ColorToleranceToLabel(colorTolerance), ["严格", "宽松"]).OnEvent("Change", ChangeOnColorTolerance)
YYGui.Add("Button","R1" , "保存当前设置").OnEvent("Click", SaveSettings)
Tab.UseTab("收获")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedOutposeDefence) " R1.2", "领取前哨基地防御奖励+1次免费歼灭").OnEvent("Click", ClickOnOutpostDefence)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedCashShop) " R1.2", "领取付费商店免费钻(进不了商店的别选)").OnEvent("Click", ClickOnCashShop)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedExpedtion) " R1.2", "派遣委托").OnEvent("Click", ClickOnExpedition)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedFriendPoint) " R1.2", "好友点数收取").OnEvent("Click", ClickOnFriendPoint)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedMail) " R1.2", "邮箱收取").OnEvent("Click", ClickOnMail)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedMission) " R1.2", "任务收取").OnEvent("Click", ClickOnMission)
Tab.UseTab("商店")
YYGui.Add("Text","R1.2 Section", "普通商店")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedFreeShop) " R1.2 xs+15 ", "每日白嫖2次").OnEvent("Click", ClickOnFreeShop)
YYGui.Add("CheckBox", " R1.2 xs+15", "购买简介个性化礼包")
YYGui.Add("Text","R1.2 xs", "竞技场商店")
YYGui.Add("Text","R1.2 xs+15", "购买手册：")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedBook[1]) " R1.2 xs+15", "燃烧").OnEvent("Click", ClickOnFireBook)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedBook[2]) " R1.2 X+1", "水冷").OnEvent("Click", ClickOnWaterBook)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedBook[3]) " R1.2 X+1", "风压").OnEvent("Click", ClickOnWindBook)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedBook[4]) " R1.2 X+1", "电击").OnEvent("Click", ClickOnElecBook)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedBook[5]) " R1.2 X+1", "铁甲").OnEvent("Click", ClickOnIronBook)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedCompanyWeapon) " R1.2 xs+15", "购买公司武器熔炉").OnEvent("Click", ClickOnCompanyWeapon)
YYGui.Add("CheckBox", " R1.2", "购买简介个性化礼包")
YYGui.Add("Text","R1.2 xs Section", "废铁商店（简介个性化礼包和废铁商店还在做）")
YYGui.Add("Checkbox", " R1.2 xs+15", "购买珠宝")
YYGui.Add("Text", " R1.2 xs+15", "购买好感券：")
YYGui.Add("Checkbox", " R1.2 xs+15", "通用")
YYGui.Add("Checkbox", " R1.2 x+1", "朝圣者")
YYGui.Add("Checkbox", " R1.2 x+1", "反常")
YYGui.Add("Checkbox", " R1.2 xs+15", "极乐净土")
YYGui.Add("Checkbox", " R1.2 x+1", "米西利斯")
YYGui.Add("Checkbox", " R1.2 x+1", "泰特拉")
YYGui.Add("Text", " R1.2 xs+15", "购买资源")
YYGui.Add("Checkbox", " R1.2 xs+15", "信用点+盒")
YYGui.Add("Checkbox", " R1.2 x+1", "战斗数据辑盒")
YYGui.Add("Checkbox", " R1.2 x+1", "芯尘盒")
Tab.UseTab("日常")
YYGui.Add("Checkbox", IsCheckedToString(isCheckedSimulationRoom) " R1.2", "模拟室5C(普通关卡需要快速战斗)").OnEvent("Click", ClickOnSimulationRoom)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedRookieArena) " R1.2", "新人竞技场(请点开快速战斗)").OnEvent("Click", ClickOnRookieArena)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedLoveTalking) " " " R1.2 Section", "咨询妮姬(可以通过收藏改变妮姬排序)").OnEvent("Click", ClickOnLoveTalking)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedLongTalk) " R1.2 XP+15 Y+M", "若图鉴未满，则进行详细咨询").OnEvent("Click", ClickOnLongTalk)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedCompanyTower) " R1.2 xs Section", "爬企业塔").OnEvent("Click", ClickOnCompanyTower)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedTribeTower) " R1.2 XP+15 Y+M", "只完成每日任务，在进入后退出").OnEvent("Click", ClickOnTribeTower)
YYGui.Add("Checkbox", IsCheckedToString(isCheckedInterception) " R1.2 xs", "使用对应编队进行异常拦截自动战斗").OnEvent("Click", ClickOnInterception)
YYGui.Add("DropDownList", "Choose" InterceptionBossToLabel(InterceptionBoss), ["克拉肯(石)，编队1", "过激派(头)，编队2", "镜像容器(手)，编队3", "茵迪维利亚(衣)，编队4", "死神(脚)，编队5"]).OnEvent("Change", ChangeOnInterceptionBoss)
Tab.UseTab("默认")
YYGui.Add("Text", , "购买几本代码手册？")
YYGui.Add("DropDownList", "Choose" NumOfBookToLabel(numOfBook), [0, 1, 2, 3]).OnEvent("Change", ChangeOnNumOfBook)
YYGui.Add("Text", , "新人竞技场打几次？")
YYGui.Add("DropDownList", "Choose" NumOfBattleToLabel(numOfBattle), [2, 3, 4, 5]).OnEvent("Change", ChangeOnNumOfBattle)
YYGui.Add("Text", , "咨询几位妮姬？")
YYGui.Add("DropDownList", "Choose" NumOfLoveTalkingToLabel(numOfLoveTalking), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).OnEvent("Change", ChangeOnNumOfLoveTalking)
Tab.UseTab()
YYGui.Add("Button", "Default w80 xm+100", "DORO!").OnEvent("Click", ClickOnDoro)
YYGui.Show()