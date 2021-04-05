# AutoHotkey Scripts

A collection of my various AutoHotkey Scripts.

Download AutoHotkey: <https://www.autohotkey.com/>

> Note: AutoHotkey is Windows only. You will not be able to run these scripts without having AutoHotkey installed

## Usage

Feel free to copy and paste from various scripts to build your own.

- **MathKeys** - Hotkeys/Hotstrings containing various math characters. Includes:
    - Type greek letters with the format: `\\alpha` -> α
    - Squared / Cubed exponent with `Alt+2` / `Alt+3` respectively.
    - Multiplication dot with `Shift+Alt+8`
    - And more!
- **EssentialKeys** - Various miscellaneous hotkeys/hotstrings I find useful.
- **Emojis** - A subset of **EssentialKeys** that has just hotstrings for commonly used emojis

## Startup

If you want the scripts to run when you start your computer, you can copy the AutoHotkey scripts into the startup folder.

Startup folder path:

```path
%APPDATA%/Microsoft/Windows/Start Menu/Programs/Startup/
```

Alternatively, you can copy `Startup/StartAHK.bat` into the startup folder noted above and set the variable `AHK_PATH` on line 3 to the folder where you keep your AutoHotkey files.
