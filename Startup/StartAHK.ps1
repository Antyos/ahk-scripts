# Start all AutoHotkey (.ahk or .ahk.exe) files in a certain folder
# Useful for starting multiple scripts at once on startup

# Path to ahk files. If you are not using a "secrets" file, you can
# Remove the line below and uncomment the following line.
. .\secret.ps1
# $ahkpath = "path/to/your/ahk/files"

# Set the window title
$host.UI.RawUI.WindowTitle = "StartAHK"

# Print what we're doing
Write-Host "Starting AHK scripts..."

# Run `.ahk` files
$files = Get-ChildItem $ahkpath\* -Include "*.ahk", "*.ahk.exe"

foreach ($file in $files) {
    Start-Process -FilePath $file
}
