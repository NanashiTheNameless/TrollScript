Do Until false 
Dim URL,WshShell,i
URL = "https://www.youtube.com/watch?v=MJdz3i44dIc"
Set WshShell = CreateObject("WScript.shell")
For i = 0 to 50
    WshShell.SendKeys(chr(175))
Next
WshShell.run "CMD /C start " & URL & "",0,False
Loop
