$url = "https://github.com/louisruocco/Powershell-Profile"

New-Item -Path "C:\Documents\psprofile" -Type Directory
Set-Location -Path "C:\Documents\psprofile"

git init
git remote add origin $url
git pull origin master

robocopy "C:\Documents\psprofile" "C:\Users\*\Documents\WindowsPowerShell" /xj /tee /np /r:0 /w:0

set-location C:\

Remove-Item -Path "C:\Documents\psprofile" -force
Get-ChildItem "C:\Documents\updatepsprofile" -recurse | Remove-Item "C:\Documents\updatepsprofile"

write-host "Profile updated successfully!"

pause