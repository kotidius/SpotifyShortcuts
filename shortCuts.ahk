;;;; Next Song

^e:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
Send, ^{Right} ; Skip to the next song
return

;;;; Previous Song

^q:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
Send, ^{Left} ; Skip to the next song
return

;;;; Maximize Spotify

^w:: ; 
if WinExist("ahk_exe Spotify.exe") {
    WinActivate ;, 
} else {
    Run, spotify.exe
    Sleep, 2000 ; Wait 2 seconds for Spotify to open (adjust if needed)
}
return

;;;; Minimize Spotify

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


;;;; Like/Remove Liked song

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
