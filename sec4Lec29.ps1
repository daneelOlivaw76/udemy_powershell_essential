1,2,3,4,5 | Measure-Object -Sum -Minimum -Maximum -Average 

1..5 | Measure-Object -Sum -Minimum -Maximum -Average 

Get-ChildItem . | Measure-Object -Property Length -Maximum -Minimum

get-command *hot*

get-hotfix

help Get-HotFix -Online

Get-ChildItem -Recurse Cert:\LocalMachine

Get-ChildItem -Recurse Cert:\LocalMachine | Measure-Object  

Get-ChildItem -Recurse Cert:\LocalMachine | Measure-Object -Property NotAfter -Minimum

Get-ChildItem -Recurse C:\Windows\system32 | Measure-Object -Property Length -Maximum -Minimum


