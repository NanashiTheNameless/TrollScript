Do Until false 
Dim URL,WshShell,i
URL = "https://www.youtube.com/watch?v=BT9h5ifR1tY"
Set WshShell = CreateObject("WScript.shell")
For i = 0 to 50
    WshShell.SendKeys(chr(175))
Next
WshShell.run "CMD /C start " & URL & "",0,False
WScript.Sleep 6000
Loop
