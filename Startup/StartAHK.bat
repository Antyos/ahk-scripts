@echo off
:: Path to folder containing ahk scripts here
set AHK_PATH=""

:: Start ahk scripts
echo Starting .ahk scripts...
for %%v in ("%AHK_PATH%\*.ahk" "%AHK_PATH%\*.ahk.exe") do start "" "%%~v"
