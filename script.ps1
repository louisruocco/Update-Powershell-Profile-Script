$url = "https://github.com/louisruocco/Powershell-Profile"

New-Item -Path "C:\psprofile" -Type Directory
Set-Location -Path "C:\psprofile"

git init
git remote add origin $url
git pull origin master

robocopy "C:\psprofile" "C:\Users\*\Documents\WindowsPowerShell" /xj /tee /np /r:0 /w:0

set-location C:\

Remove-Item -Path "C:\psprofile" -force

start-process powershell.exe