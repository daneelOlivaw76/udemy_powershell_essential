Get-ChildItem . | Select-Object Name, Length,@{n='Size in KB';e={($PSItem.Length/1KB)}}

Get-ChildItem . | Select-Object Name, Length,@{n='Size in KB';e={($PSItem.Length/1KB)}},@{n='Size in MB';e={($PSItem.Length/1MB)}}

Get-ChildItem . | Select-Object Name, Length,@{n='Size in KB';e={($_.Length/1KB)}}

Get-ChildItem . | Select-Object Name, Length,@{n='Size in KB';e={'{0:N2}' -f ($PSItem.Length/1KB)}},@{n='Size in MB';e={'{0:N2}' -f ($PSItem.Length/1MB)}}

Get-ChildItem -Recurse Cert:\LocalMachine\CA

Get-ChildItem -Recurse Cert:\LocalMachine\CA | Select-Object -Property Thumbprint, NotBefore, NotAfter

Get-ChildItem -Recurse Cert:\LocalMachine\CA | Select-Object -Property Thumbprint, NotBefore, NotAfter, @{n='Time Difference';e={($PSItem.NotAFter.Subtract($PSItem.NotBefore))}}

Get-Process

get-process | sort CPU -Descending

get-process | sort CPU -Descending | Select-Object Handle, NPM, PM, WS, @{n='CPU in minutes'; e={($PSItem.CPU/60)}}, Id, SI, ProcessName -First 5

get-process | sort CPU -Descending | Select-Object Handle, NPM, PM, WS, @{n='CPU in minutes'; e={'{0:N0}' -f ($PSItem.CPU/60)}}, Id, SI, ProcessName -First 5