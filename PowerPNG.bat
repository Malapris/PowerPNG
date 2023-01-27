@echo off
echo PowerPNG multithreaded
IF "%~1" == "" GOTO :NOPARAM
set "folder=%~1"
set "p=%~d0%~p0"
powershell -file "%p%PowerPNG.ps1" -folder "%folder%" -threads 5
pause
exit

:NOPARAM
echo Sorry ! No directory provided for the scan. Please drop a directory on the icon of PowerPNG.
pause
exit
