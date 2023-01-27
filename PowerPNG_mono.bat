@echo off
set folder=%1
powershell -file "PowerPNG_mono.ps1" -folder %folder%
