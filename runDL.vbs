Do Until false 
Dim URL,WshShell,i
URL = "https://trollface.dk/"
Set WshShell = CreateObject("WScript.shell")
For i = 0 to 50
    WshShell.SendKeys(chr(175))
Next
WshShell.run "CMD /C start " & URL & "",0,False
WScript.Sleep 6000
Loop
