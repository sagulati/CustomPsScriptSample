<#

Feel free to modify this file by implementing your logic.

This script is invoked by Windows "shell:startup". It runs
under Administrator interactive user in minimized window to
minimize changes that users will close the window before 
script finishes its run.

This script needs to complete its run fast to avoid
distracting users. A few seconds is ideal.

#>

Write-Host "Windows user `"$($env:USERNAME)`" logged in at $(Get-Date)."

Write-Information "Downloading porting assistant for .NET"

(new-object net.webclient).DownloadFile('https://s3.us-west-2.amazonaws.com/aws.portingassistant.dotnet.download/latest/windows/Porting-Assistant-Dotnet.exe','C:\Users\Administrator\Downloads\Porting-Assistant-Dotnet.exe')

Write-Information "Installing porting assistant for .NET"
& C:\Users\Administrator\Downloads\Porting-Assistant-Dotnet.exe /S

Write-Information "Finished installing porting assistant for .NET"