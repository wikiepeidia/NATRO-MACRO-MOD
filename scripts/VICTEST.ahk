#Requires AutoHotkey v2.0
#SingleInstance Force

; Global variables
global notifyEnabled := false  ; Disabled by default
global spawned := false
global nextSpawnTime := ""

; Create GUI
myGui := Gui("+AlwaysOnTop")  ; Added AlwaysOnTop
myGui.SetFont("s12", "Segoe UI")

; UI Elements
global timeTxt := myGui.AddText("x10 y10 w400 h30", "")
global spawnTxt := myGui.AddText("x10 y50 w400 h30", "")
global statusTxt := myGui.AddText("x10 y90 w400 h30", "")
; Fix checkbox to be on one line by making it wider
global notifyCheck := myGui.AddCheckbox("x10 y130 w300 h30", "Enable Windows Notifications")
notifyCheck.Value := notifyEnabled
notifyCheck.OnEvent("Click", NotifyToggle)

; Handle GUI close event to hide instead of exit
myGui.OnEvent("Close", (*) => myGui.Hide())

myGui.Title := "Monster Spawn Timer"
myGui.Show("w420 h180")

; Create tray icon and menu
A_TrayMenu.Delete()
A_TrayMenu.Add("Show Timer", ShowGui)
A_TrayMenu.Add("Exit", (*) => ExitApp())
A_IconTip := "Monster Spawn Timer"

; Initialize next spawn time
CalculateNextSpawnTime()

; Check if we're already in spawn time when starting
CheckIfCurrentlySpawned()

; Start the timer
SetTimer(UpdateUI, 1000)

; Function to check if monster is currently spawned when starting the script
CheckIfCurrentlySpawned() {
    global spawned, nextSpawnTime
    
    currentMinute := Integer(FormatTime(, "mm"))
    
    ; Check if we're at minute 15-20 or 45-50 (spawn time)
    if ((currentMinute >= 15 && currentMinute < 20) || (currentMinute >= 45 && currentMinute < 50)) {
        spawned := true
        spawnTxt.SetFont("cRed")
        spawnTxt.Text := "MONSTER HAS SPAWNED!"
        SetTimer(BlinkSpawnText, 500)
        
        ; Calculate how much time is left in the spawn
        minutesLeft := 0
        if (currentMinute >= 15 && currentMinute < 20) {
            minutesLeft := 20 - currentMinute
        } else {
            minutesLeft := 50 - currentMinute
        }
        
        ; Set timer to reset after the remaining spawn time
        SetTimer(EndSpawn, -minutesLeft*60000)
        
        ; Update the nextSpawnTime to the NEXT spawn after current one
        currentHour := Integer(FormatTime(, "HH"))
        if (currentMinute >= 15 && currentMinute < 20) {
            ; Currently at :15 spawn, next is :45
            nextSpawnTime := Format("{:02}{:02}", currentHour, 45)
        } else {
            ; Currently at :45 spawn, next is :15 of next hour
            nextHour := Mod(currentHour + 1, 24)
            nextSpawnTime := Format("{:02}{:02}", nextHour, 15)
        }
    }
}

; Function to show GUI
ShowGui(*) {
    myGui.Show()
}

; Function to update UI
UpdateUI(*) {
    global spawned, notifyEnabled
    
    ; Get current time (24h format)
    currentTime := FormatTime(, "HH:mm:ss")
    timeTxt.Text := "Current Time: " currentTime

    ; Calculate time difference to next spawn in minutes
    minutesLeft := GetMinutesUntilNextSpawn()

    ; Update spawn time display
    if (spawned) {
        ; Just keep showing MONSTER HAS SPAWNED while spawned
        spawnTxt.Text := "MONSTER HAS SPAWNED!"
    } else if (minutesLeft <= 2 && minutesLeft > 0) {
        spawnTxt.SetFont("cRed")
        spawnTxt.Text := "Monster spawning in " minutesLeft " minutes!"
        
        if (notifyEnabled && minutesLeft = 2) {
            ShowNotification("Monster Alert", "Attention! Monster spawning in 2 minutes.")
        }
    } else if (minutesLeft > 0) {
        spawnTxt.SetFont("cBlack")
        spawnTxt.Text := "Monster spawning in " minutesLeft " minutes."
    } else if (minutesLeft <= 0 && !spawned) {
        ; Monster has spawned
        spawned := true
        spawnTxt.SetFont("cRed")
        spawnTxt.Text := "MONSTER HAS SPAWNED!"
        SetTimer(BlinkSpawnText, 500)
        
        if (notifyEnabled) {
            ShowNotification("Monster Alert", "The monster has spawned!")
        }
        
        ; Set timer to reset after 5 minutes
        SetTimer(EndSpawn, -300000)
    }

    ; Update status text
    if (spawned) {
        ; Calculate remaining time of spawn (5 minutes total)
        spawnTimeRemaining := 5 + minutesLeft  ; Since minutesLeft is negative during spawn
        statusTxt.Text := "Monster Spawned! You have " Max(1, spawnTimeRemaining) " minutes left."
    } else {
        statusTxt.Text := "Monster hibernating."
    }
}

; Calculate minutes until next spawn time
GetMinutesUntilNextSpawn() {
    global nextSpawnTime, spawned
    
    ; If monster is currently spawned, we don't need to calculate time to next spawn
    if (spawned) {
        ; Return negative value to indicate we're in spawn period
        currentMinute := Integer(FormatTime(, "mm"))
        if (currentMinute >= 15 && currentMinute < 20) {
            return -(currentMinute - 15)  ; Negative minutes since spawn
        } else if (currentMinute >= 45 && currentMinute < 50) {
            return -(currentMinute - 45)  ; Negative minutes since spawn
        }
    }
    
    if (nextSpawnTime = "") {
        CalculateNextSpawnTime()
    }
    
    ; Get current time components
    currentHour := Integer(FormatTime(, "HH"))
    currentMinute := Integer(FormatTime(, "mm"))
    
    ; Get next spawn time components
    nextHour := Integer(SubStr(nextSpawnTime, 1, 2))
    nextMinute := Integer(SubStr(nextSpawnTime, 3, 2))
    
    ; Calculate total minutes for both timestamps
    currentTotalMinutes := (currentHour * 60) + currentMinute
    nextTotalMinutes := (nextHour * 60) + nextMinute
    
    ; Calculate difference
    diffMinutes := nextTotalMinutes - currentTotalMinutes
    
    ; If negative, it means the spawn is tomorrow
    if (diffMinutes < -5) {
        diffMinutes += 1440  ; Add 24 hours in minutes
    }
    
    return diffMinutes
}

; Calculate next spawn time (at :15 or :45 of each hour)
CalculateNextSpawnTime() {
    global nextSpawnTime
    
    ; Get current time
    currentHour := Integer(FormatTime(, "HH"))
    currentMinute := Integer(FormatTime(, "mm"))
    
    ; Determine next spawn time (HHmm format)
    if (currentMinute < 15) {
        ; Next spawn is at :15 of current hour
        nextSpawnTime := Format("{:02}{:02}", currentHour, 15)
    } else if (currentMinute < 45) {
        ; Next spawn is at :45 of current hour
        nextSpawnTime := Format("{:02}{:02}", currentHour, 45)
    } else {
        ; Next spawn is at :15 of next hour
        nextHour := Mod(currentHour + 1, 24)
        nextSpawnTime := Format("{:02}{:02}", nextHour, 15)
    }
}

; Toggle notification setting
NotifyToggle(*) {
    global notifyEnabled
    notifyEnabled := notifyCheck.Value
}

; Blink spawn text
BlinkSpawnText(*) {
    static blinkState := false
    blinkState := !blinkState
    spawnTxt.Visible := blinkState
}

; End spawn period
EndSpawn(*) {
    global spawned
    spawned := false
    CalculateNextSpawnTime()
    spawnTxt.Visible := true
    spawnTxt.SetFont("cBlack")
    SetTimer(BlinkSpawnText, 0)
}

; Show Windows notification
ShowNotification(title, message) {
    try {
        notification := ComObject("WScript.Shell")
        notification.Popup(message, 5, title, 64)
    }
    catch {
        ; Silently fail if notification can't be shown
    }
}