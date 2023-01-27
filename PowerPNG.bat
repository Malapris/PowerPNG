@echo off
echo PowerPNG V1.1 (multithreaded) by Francis Malapris : github.com/Malapris/PowerPNG
IF "%~1" == "" GOTO :NOPARAM
set "folder=%~1"
set "p=%~d0%~p0"
powershell -file "%p%PowerPNG.ps1" -folder "%folder%" -threads 5
echo.
echo If you like this software, please consider buying be a coffee : buymeacoffee.com/malapris
pause
exit

:NOPARAM
echo Sorry ! No directory provided for the scan. Please drop a directory on the nice multicolor icon of PowerPNG.bat
pause
exit
