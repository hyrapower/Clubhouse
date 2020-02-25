#!C:/Program\ Files/Git/usr/bin/sh.exe

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