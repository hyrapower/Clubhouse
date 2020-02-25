#!C:/Program\ Files/Git/usr/bin/sh.exe

git reset --soft HEAD
echo
powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\.git\hooks\ConvertToXML.ps1"
git add -A
exit