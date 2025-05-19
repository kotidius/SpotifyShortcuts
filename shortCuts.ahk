;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Sptify;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^e:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
Send, ^{Right} ; Skip to the next song
return

^q:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
Send, ^{Left} ; Skip to the next song
return

^w:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
return

<^s:: ; 
IfWinActive, ahk_exe Spotify.exe 
    {
    WinMinimize, ahk_exe Spotify.exe 
    } 
else
    {
        send ^s
    }
return

^!w::
if (WinExist("ahk_exe Spotify.exe")){
    IfWinActive, ahk_exe Spotify.exe
    {
        send !+b
    }else{
        WinActivate,
        send !+b
        WinMinimize, ahk_exe Spotify.exe 
    }   
} 
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Git Folder ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!g::  ; Alt + G (we'll simulate Alt+Space+G by catching Alt+G directly)
dirPath1 := "C:\Users\chris\Desktop\git\Personal"
dirPath2 := "C:\Users\New_User\Desktop\Git\Personal"
if (GetKeyState("Space", "P")) {
    if FileExist(dirPath1){
         Run, explorer.exe %dirPath1%
    }else if FileExist(dirPath2){
        Run, Explorer.exe %dirPath2%
    }else{
        MsgBox, Error dir not found
    }
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Git push   ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!p::  
dirPath1 := "C:\Users\chris\Desktop\git\Personal"
dirPath2 := "C:\Users\New_User\Desktop\Git\Personal"
; if (GetKeyState("Space", "P")) {
;     InputBox, Verification,Verification, About to commit - %dirPath1% or %dirPath2% -Yes or y to commit - you sure?:
;     if (Verification="Yes"|| Verification="yes" ||Verification="ye" ||Verification="y" ||Verification= "Y" ||Verification="YES" ){
;         if FileExist(dirPath1){
;             Run, cmd.exe /k cd /d "%dirPath1%" &&  git add . && git commit -m ""autoHotKeyPush"" && git push
;         } else if FileExist(dirPath2){
;             Run, cmd.exe /k cd /d "%dirPath2%"  &&  git add . && git commit -m ""autoHotKeyPush"" && git push
;         }else{
;             MsgBox, Dir not found
;         }
;         } else{
;         MsgBox, Aborted
; }}
; return

if (GetKeyState("Space", "P")) {
    MsgBox, 4,, About to commit - %dirPath1% or %dirPath2%, you sure? ; 4 = Yes/No
    IfMsgBox, Yes
    {
        FormatTime, currentDateTime, %A_Now%, yyyy-MM-dd HH:mm:ss ;
        if FileExist(dirPath1){
            Run, cmd.exe /k cd /d "%dirPath1%" &&  git add . && git commit -m ""autoHotKeyPush-at""-"%currentDateTime%" && git push
        } else if FileExist(dirPath2){
            Run, cmd.exe /k cd /d "%dirPath2%"  &&  git add . && git commit -m ""autoHotKeyPush"" && git push
        }else{
            MsgBox, Dir not found
        }
    }
    Else
    {
        MsgBox, Aborted.
    }
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Test ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!i::  ; 
if (GetKeyState("Space", "P")) {
    InputBox, SkibiInput, Oooop poios me kalese?, Pes thn malakis sou:
    MsgBox, Den exv valei kanena function pros to paron
    sleep, 1000
    MsgBox, , SIKE xazoulh!! , xerw oti egrapses %userInput% alla still den mporw na kanw kati
}
return