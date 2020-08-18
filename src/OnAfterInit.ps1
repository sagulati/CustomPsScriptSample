<#

Feel free to modify this file by implementing your logic.

This script is invoked after initialization scripts completed running 
but before user has logged in.

This script runs under Administrator account but without any UI, 
meaning this script can't ask for user input. 

It's OK for this script to run a few minutes, as it runs before
users log in.

#>

Write-Host "Main script finished running at $(Get-Date)."

Write-Information "Downloading porting assistant for .NET"

(new-object net.webclient).DownloadFile('https://s3.us-west-2.amazonaws.com/aws.portingassistant.dotnet.download/latest/windows/Porting-Assistant-Dotnet.exe','C:\Users\Administrator\Downloads\Porting-Assistant-Dotnet.exe')

Write-Information "Installing porting assistant for .NET"
& C:\Users\Administrator\Downloads\Porting-Assistant-Dotnet.exe /S

Write-Information "Finished installing porting assistant for .NET"