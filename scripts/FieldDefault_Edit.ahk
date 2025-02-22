#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

global FieldDefault:={}

FieldDefault["Sunflower"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":4
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Left"
	, "distance":8
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Dandelion"] := {"pattern":"Lines"
	, "size":"M"
	, "width":2
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Right"
	, "distance":9
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":1
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Mushroom"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":2
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Left"
	, "distance":8
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Blue Flower"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":7
	, "camera":"Right"
	, "turns":2
	, "sprinkler":"Center"
	, "distance":1
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Clover"] := {"pattern":"Lines"
	, "size":"M"
	, "width":2
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Left"
	, "distance":4
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Spider"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":1
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Left"
	, "distance":6
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Strawberry"] := {"pattern":"CornerXSnake"
	, "size":"S"
	, "width":1
	, "camera":"Right"
	, "turns":2
	, "sprinkler":"Upper Right"
	, "distance":6
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Bamboo"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":6
	, "camera":"Left"
	, "turns":2
	, "sprinkler":"Upper"
	, "distance":7
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Pineapple"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":1
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Left"
	, "distance":8
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Stump"] := {"pattern":"Stationary"
	, "size":"S"
	, "width":1
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Center"
	, "distance":1
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":1
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Cactus"] := {"pattern":"Squares"
	, "size":"S"
	, "width":1
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Lower"
	, "distance":5
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":1
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Pumpkin"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":5
	, "camera":"Right"
	, "turns":2
	, "sprinkler":"Right"
	, "distance":8
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Pine Tree"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":3
	, "camera":"Left"
	, "turns":2
	, "sprinkler":"Upper Left"
	, "distance":7
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Rose"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":1
	, "camera":"Left"
	, "turns":4
	, "sprinkler":"Lower Right"
	, "distance":10
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":1}

FieldDefault["Mountain Top"] := {"pattern":"Snake"
	, "size":"S"
	, "width":2
	, "camera":"Right"
	, "turns":2
	, "sprinkler":"Right"
	, "distance":5
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":1
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Coconut"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":3
	, "camera":"Right"
	, "turns":2
	, "sprinkler":"Right"
	, "distance":6
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}

FieldDefault["Pepper"] := {"pattern":"CornerXSnake"
	, "size":"M"
	, "width":5
	, "camera":"None"
	, "turns":1
	, "sprinkler":"Upper Right"
	, "distance":7
	, "percent":95
	, "gathertime":10
	, "convert":"Walk"
	, "drift":0
	, "shiftlock":0
	, "invertFB":0
	, "invertLR":0}



if FileExist(A_ScriptDir "\settings\field_config.ini") ; update default values with new ones read from any existing .ini
	nm_LoadFieldDefaults()


nm_LoadFieldDefaults()
{
	global FieldDefault
	
	ini := FileOpen(A_ScriptDir "\settings\field_config.ini", "r"), str := ini.Read(), ini.Close()
	Loop, Parse, str, `r`n, %A_Space%%A_Tab%
	{
		switch (c := SubStr(A_LoopField, 1, 1))
		{
			; ignore comments and section names
			case "[":
			s := SubStr(A_LoopField, 2, -1)
			
			case ";":
			continue
			
			default:
			if (p := InStr(A_LoopField, "="))
				k := SubStr(A_LoopField, 1, p-1), FieldDefault[s][k] := SubStr(A_LoopField, p+1)
		}
	}	
}
Loop, Files, %A_ScriptDir%\patterns\*.ahk
	patternlist .= StrReplace(A_LoopFileName, ".ahk") "|"

Gui, New
Gui, Font, w700
gui +border +hwndhGUI +OwnDialogs
Gui, Add, Text, x40 y25 w100 +left +BackgroundTrans,Gather area
Gui, Add, Text, x180 y25 w100 +left +BackgroundTrans,Pattern
Gui, Add, Text, x280 y25 w100 +left +BackgroundTrans,REQ
Gui, Add, Text, x430 y25 w100 +left +BackgroundTrans,Sprinkler

Gui, Font, s8 cDefault Norm, Tahoma
Gui, Add, Text, x30 y40 w100 +left +BackgroundTrans,Field NAME
Gui, Add, Text, x111 y31 w1 h200 0x7 ; ~ 0x7 = SS_BLACKFRAME - faster drawing of lines since no text rendered
Gui, Add, Text, x125 y40 w100 +left +BackgroundTrans,Shape
Gui, Add, Text, x180 y40 w100 +left +BackgroundTrans,Length
Gui, Add, Text, x225 y40 w100 +left +BackgroundTrans vpatternRepsHeader,Width
Gui, Add, Text, x261 y31 w1 h200 0x7
Gui, Add, Text, x270 y40 w100 +left +BackgroundTrans,Mins
Gui, Add, Text, x305 y40 w100 +left +BackgroundTrans vuntilPackHeader,Pack`%
Gui, Add, Text, x350 y40 w100 +left +BackgroundTrans,To Hive By:
Gui, Add, Text, x410 y31 w1 h200 0x7
Gui, Add, Text, x420 y40 w100 +left +BackgroundTrans vsprinklerStartHeader,Start Location
Gui, Add, DropDownList, x18 y57 w90 vFieldName gnm_FieldSelect, % LTrim(StrReplace("|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower|", "|" FieldName "|", "|" FieldName "||"), "|")
Gui, Add, DropDownList, x118 y57 w60 vFieldPattern, % LTrim(StrReplace(patternlist "Stationary|", "|" FieldPattern "|", "|" FieldPattern "||"), "|")
Gui, Add, DropDownList, x180 y57 w40 vFieldPatternSize, % LTrim(StrReplace("|XS|S|M|L|XL|", "|" FieldPatternSize "|", "|" FieldPatternSize "||"), "|")
Gui, Add, DropDownList, x222 y57 w35 vFieldPatternReps, % LTrim(StrReplace("|1|2|3|4|5|6|7|8|9|", "|" FieldPatternReps "|", "|" FieldPatternReps "||"), "|")
Gui, Add, Checkbox, x20 y80 +BackgroundTrans vFieldDriftCheck,Field DRIFT
Gui, Add, Text, x235 y80 vrotateCam, CAMERA ROTATE:
Gui, Add, DropDownList, x325 y82 w50 vFieldRotateDirection, % LTrim(StrReplace("|None|Left|Right|", "|" FieldRotateDirection "|", "|" FieldRotateDirection "||"), "|")
Gui, Add, DropDownList, x375 y82 w32 vFieldRotateTimes, % LTrim(StrReplace("|1|2|3|4|", "|" FieldRotateTimes "|", "|" FieldRotateTimes "||"), "|")
Gui, Add, Edit, x268 y57 w30 h20 limit3 number vFieldUntilMins, %FieldUntilMins1%
Gui, Add, Text, x115 y95 vFieldInvertText1, Invert:
Gui, Add, Checkbox, x155 y95 +BackgroundTrans vFieldPatternInvertFB, F/B
Gui, Add, Checkbox, x195 y95 +BackgroundTrans vFieldPatternInvertLR, L/R
Gui, Add, Checkbox, x115 y120 +BackgroundTrans vFieldPatternShift,Shift LOCK
Gui, Add, DropDownList, x300 y57 w45 vFieldUntilPack, % LTrim(StrReplace("|100|95|90|85|80|75|70|65|60|55|50|45|40|35|30|25|20|15|10|5|", "|" FieldUntilPack "|", "|" FieldUntilPack "||"), "|")
Gui, Add, DropDownList, x347 y57 w60 vFieldReturnType, % LTrim(StrReplace("|Walk|Reset|Rejoin|", "|" FieldReturnType "|", "|" FieldReturnType "||"), "|")
Gui, Add, DropDownList, x415 y57 w80 vFieldSprinklerLoc, % LTrim(StrReplace("|Center|Upper Left|Upper|Upper Right|Right|Lower Right|Lower|Lower Left|Left|", "|" FieldSprinklerLoc "|", "|" FieldSprinklerLoc "||"), "|")
Gui, Add, Text, x415 y82 w80 vsprinklerDistance1,Distance:
Gui, Add, DropDownList,x460 y80 w35 vFieldSprinklerDist, % LTrim(StrReplace("|1|2|3|4|5|6|7|8|9|10|", "|" FieldSprinklerDist "|", "|" FieldSprinklerDist "||"), "|")
Gui, Add, Button, x430 y130 gsaveField, Update NOW!

Gui, Show, w500 h150, FIELD_CONFIG.INI ediitor




nm_FieldSelect(){
	vgf = Name
	global FieldDefault, FieldPattern, FieldPatternSize, FieldPatternReps, FieldPatternShift,  FieldPatternInvertFB, FieldPatternInvertLR, FieldUntilMins, FieldUntilPack, FieldReturnType, FieldSprinklerLoc, FieldSprinklerDist, FieldRotateDirection, FieldRotateTimes, FieldDriftCheck, patternlist
	GuiControlGet, FieldName
	FieldPattern := FieldDefault[Field%vgf%]["pattern"]
	FieldPatternSize := FieldDefault[Field%vgf%]["size"]
	FieldPatternReps := FieldDefault[Field%vgf%]["width"]
	FieldRotateDirection:= FieldDefault[Field%vgf%]["camera"]
	FieldRotateTimes := FieldDefault[Field%vgf%]["turns"]
	FieldUntilMins := FieldDefault[Field%vgf%]["gathertime"]
	FieldDriftCheck := FieldDefault[Field%vgf%]["drift"]
	FieldPatternShift := FieldDefault[Field%vgf%]["shiftlock"]
	FieldPatternInvertFB:=FieldDefault[Field%vgf%]["invertFB"]
	FieldPatternInvertLR:=FieldDefault[Field%vgf%]["invertLR"]
	FieldSprinklerLoc:=FieldDefault[Field%vgf%]["sprinkler"]
	FieldSprinklerDist:=FieldDefault[Field%vgf%]["distance"]
	FieldUntilPack:=FieldDefault[Field%vgf%]["percent"]
	FieldReturnType:=FieldDefault[Field%vgf%]["convert"]

	GuiControl, , FieldPattern, % StrReplace(patternlist "Stationary|", "|" FieldPattern "|", "|" FieldPattern "||")
	GuiControl, , FieldPatternSize, % StrReplace("|XS|S|M|L|XL|", "|" FieldPatternSize "|", "|" FieldPatternSize "||")
	GuiControl, , FieldPatternReps, % StrReplace("|1|2|3|4|5|6|7|8|9|", "|" FieldPatternReps "|", "|" FieldPatternReps "||")
	GuiControl, , FieldRotateDirection, % StrReplace("|None|Left|Right|", "|" FieldRotateDirection "|", "|" FieldRotateDirection "||")
	GuiControl, , FieldRotateTimes, % StrReplace("|1|2|3|4|", "|" FieldRotateTimes "|", "|" FieldRotateTimes "||")
	GuiControl, , FieldUntilMins, % FieldUntilMins
	GuiControl, , FieldDriftCheck, % FieldDriftCheck
	GuiControl, , FieldPatternShift, % FieldPatternShift
	GuiControl, , FieldPatternInvertFB, % FieldPatternInvertFB
	GuiControl, , FieldPatternInvertLR, % FieldPatternInvertLR
	GuiControl, , FieldSprinklerLoc, % StrReplace("|Center|Upper Left|Upper|Upper Right|Right|Lower Right|Lower|Lower Left|Left|", "|" FieldSprinklerLoc "|", "|" FieldSprinklerLoc "||")
	GuiControl, , FieldSprinklerDist, % StrReplace("|1|2|3|4|5|6|7|8|9|10|", "|" FieldSprinklerDist "|", "|" FieldSprinklerDist "||")
	GuiControl, , FieldUntilPack, % StrReplace("|100|95|90|85|80|75|70|65|60|55|50|45|40|35|30|25|20|15|10|5|", "|" FieldUntilPack "|", "|" FieldUntilPack "||")
	GuiControl, , FieldReturnType, % StrReplace("|Walk|Reset|Rejoin|", "|" FieldReturnType "|", "|" FieldReturnType "||")
}

saveField(){
	global FieldDefault, FieldPattern, FieldPatternSize, FieldPatternReps, FieldPatternShift,  FieldPatternInvertFB, FieldPatternInvertLR, FieldUntilMins, FieldUntilPack, FieldReturnType, FieldSprinklerLoc, FieldSprinklerDist, FieldRotateDirection, FieldRotateTimes, FieldDriftCheck, patternlist
	GuiControlGet, FieldName
	GuiControlGet, FieldPatternSize
	GuiControlGet, FieldPattern
	GuiControlGet, FieldPatternReps
	GuiControlGet, FieldRotateReps
	GuiControlGet, FieldRotateDirection
	GuiControlGet, FieldRotateTimes
	GuiControlGet, FieldUntilMins
	GuiControlGet, FieldDriftCheck
	GuiControlGet, FieldPatternShift
	GuiControlGet, FieldInvertFB
	GuiControlGet, FieldInvertLR
	GuiControlGet, FieldSprinklerLoc
	GuiControlGet, FieldSprinklerDist
	GuiControlGet, FieldUntilPack
	GuiControlGet, FieldReturnType
	vgf = Name
	FieldDefault[Field%vgf%]["size"] := FieldPatternSize
	FieldDefault[Field%vgf%]["pattern"] := FieldPattern
	FieldDefault[Field%vgf%]["width"] := FieldPatternReps
	FieldDefault[Field%vgf%]["camera"] := FieldRotateDirection
	FieldDefault[Field%vgf%]["turns"] := FieldRotateTimes
	FieldDefault[Field%vgf%]["gathertime"] := FieldUntilMins
	FieldDefault[Field%vgf%]["drift"] := FieldDriftCheck
	FieldDefault[Field%vgf%]["shiftlock"] := FieldPatternShift
	FieldDefault[Field%vgf%]["invertFB"] := FieldPatternInvertFB
	FieldDefault[Field%vgf%]["invertLR"] := FieldPatternInvertLR
	FieldDefault[Field%vgf%]["sprinkler"] := FieldSprinklerLoc
	FieldDefault[Field%vgf%]["distance"] := FieldSprinklerDist
	FieldDefault[Field%vgf%]["percent"] := FieldUntilPack
	FieldDefault[Field%vgf%]["convert"] := FieldReturnType
	ini := ""
	
	for k,v in FieldDefault ; overwrite any existing .ini with updated one with all new keys and old values 
	{
		ini .= "[" k "]`r`n"
		for i,j in v
			ini .= i "=" j "`r`n"
		ini .= "`r`n"
	}
	FileDelete, %A_ScriptDir%\settings\field_config.ini
	FileAppend, %ini%, %A_ScriptDir%\settings\field_config.ini
	MsgBox, "MISSION SUCCESS!"

}