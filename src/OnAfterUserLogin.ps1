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