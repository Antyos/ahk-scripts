# AutoHotkey Scripts

A collection of my various AutoHotkey Scripts.

Download AutoHotkey: <https://www.autohotkey.com/>

## Usage

Feel free to copy and paste from various scripts to build your own.

If you want the scripts to run when you start your computer, you can copy the AutoHotkey scripts into the startup folder.

Startup folder path:

```path
%APPDATA%/Microsoft/Windows/Start Menu/Programs/Startup/
```

Alternatively, you can copy `Startup/StartAHK.ps1` into the startup folder and set the variable `$ahkpath` to the folder where you keep your AutoHotkey files.

You can also run `Startup/ApplyStartup.ps1` (make sure `Startup/StartAHK.ps1` is in the same folder and `$ahkpath` is set) to automatically copy `Startup/StartAHK.ps1` into the startup folder
