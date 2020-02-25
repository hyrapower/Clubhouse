#!C:/Program\ Files/Git/usr/bin/sh.exe

git reset --soft HEAD
echo
powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\.git\hooks\ConvertToXML.ps1"
git add -A
exit

[string]$location = Get-Location
#echo $location
[string]$path = join-path -Path $location -childpath "\src\ruleApps"
#echo $path
[string]$destination="$location\src\RuleAppXML"
#echo $destination

#start clean with rulappRip
Remove-Item -Path $destination -Recurse

# copy all from current location to ./newlocation
Copy-Item -Path $path -Destination $destination -Force -Recurse

# rename all extensions from .ruleappx to .zip
Get-ChildItem -Path $destination *.ruleappx | Rename-Item -NewName { $_.Name -replace '\.ruleappx','.zip' }

# unzip
$list = Get-ChildItem -Path $destination 
foreach($file in $list) {
    Expand-Archive -Path "$destination/$file" -DestinationPath $destination -Force
}

# copy from ./ruleapp to ./
$list = Get-ChildItem -Path "$destination/ruleapp"
foreach($file in $list) {
    Copy-Item -Path "$destination/ruleapp/$file" -Destination $destination -Force -Recurse
}

#delete all zip and folder
Remove-Item -Path $destination -Include '*.zip' -Force -Recurse
Remove-Item -Path $destination -Include 'ruleapp' -Force -Recurse

#rename all no extension files to .xml
Get-ChildItem -Path $destination -Filter "*." | Rename-Item -NewName { $_.Name -replace '$','.xml' }

# githook to force user story script.sh

RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2)
regex="#[0-9]{6}($|[^0-9])"
file=`cat $1`
if ! [[ $file =~ $regex ]]; then
  echo "${RED}ERROR - Missing User Story or Bug # in commmit message starting with '#'.$NORMAL"
  exit 1
else
  echo "${GREEN}MESSAGE IS GOOD.$NORMAL"
fi

exit 0




