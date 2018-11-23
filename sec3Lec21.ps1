Restart-Computer -WhatIf

Stop-Computer -WhatIf

Stop-Computer -Confirm

Get-ChildItem C:\Windows >> listing.txt

Remove-Item listing.txt -Confirm

Remove-Item listing.txt -Force

$ConfirmPreference

Get-ChildItem C:\Windows >> listing.txt

$ConfirmPreference = "Low"

Remove-Item listing.txt

$ConfirmPreference = "High"

Remove-Item listing.txt