# Automatically copy StartAHK.ps1 into the Startup folder

# Copy Powershell StartAHK.ps1 to startup folder
Copy-Item ".\StartAHK.ps1" -Destination "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
