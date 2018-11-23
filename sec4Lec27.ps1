Get-Process

Get-Process | Sort -Property CPU

Get-Process | Sort -Property CPU -Descending

Get-Process | Sort -Property Name, CPU

Get-Process | get-member  # TotalProcessorTime

Get-Process | Sort -Property TotalProcessorTime -Descending