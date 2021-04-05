# Automatically copy StartAHK.ps1 into the Startup folder
# Import modules
# Import-Module PSScheduledJob

# Enable running unsigned scripts
Set-ExecutionPolicy RemoteSigned

# Variables
$start_ahk_path = ".\StartAHK.ps1"
$trigger = New-JobTrigger -AtLogOn

Register-ScheduledJob -Trigger $trigger -FilePath $start_ahk_path -Name StartAHKScripts

# Copy Powershell StartAHK.ps1 to startup folder
# Copy-Item ".\StartAHK.ps1" -Destination "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
