
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
