get-help -verb ConvertTo

get-help -verb ConvertFrom

get-help -verb Export
get-help -verb Import

Get-ChildItem C:\Windows | ConvertTo-Html | Out-File listing2.txt

Get-WmiObject Win32_LogicalDisk | Select-Object -Property DeviceID, FreeSpace, @{n='Used Disk space';e={($PSItem.Size.Subtract($PSItem.FreeSpace))}} -First 1

Get-WmiObject Win32_LogicalDisk | Select-Object -Property DeviceID, FreeSpace, @{n='Used Disk space';e={($PSItem.Size.Subtract($PSItem.FreeSpace))}} -First 1 | Export-Csv -Append report.csc