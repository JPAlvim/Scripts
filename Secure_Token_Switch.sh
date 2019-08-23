#!/bin/sh

## by José Paulo - https://github.com/JPAlvim

curUser=$(/usr/bin/stat -f%Su /dev/console)
curPass=$password for admin account with secure token

## Get the desired user's account
echo "Prompting ${curUser} for the desired user to enable for FV2."
Newuser="$(/usr/bin/osascript -e 'Tell current application to display dialog "Please enter the desired user to enable for FV2:" default answer "" with title "Window Title" with text buttons {"Ok"} default button 1 ' -e 'text returned of result')"


## Get the desired user's password
echo "Prompting ${curUser} for the password for desired user to enable for FV2."
NewuserPass="$(/usr/bin/osascript -e 'Tell current application to display dialog "Please enter the password for the desired user:" default answer "" with title "Window Title" with text buttons {"Ok"} default button 1 with hidden answer' -e 'text returned of result')"


## Sets new user with a secure token so it can be enabled for FV2. This requires GUI authentication from the local account but can be run from any account as if secure token admin credentials are entered
## Switch between -secureTokenOn(Off) as needed.
sudo sysadminctl -secureTokenOff $Newuser -password $NewuserPass -adminUser admin -adminPassword admin
