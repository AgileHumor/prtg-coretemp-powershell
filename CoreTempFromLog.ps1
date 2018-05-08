# Set custom variables for your log files
$dir = "C:\Program Files\Core Temp\"
$logfilepattern = "CT-Log*.csv"
$tempunit = "F"
$WarnTemp = 150
$ErrorTemp = 200

# Get latest log file in $dir matching $logfilepattern
$latest = Get-ChildItem -Path $dir$logfilepattern | Sort-Object LastAccessTime -Descending | Select-Object -First 1
$myFileName = $latest

# Get last one row of file into variable 
$lastDataRow = (Get-Content $myFileName)[-1]

#parse the CSV data back into separate variables, one for each column 
$dataArray = $lastDataRow.Split(",") 
$Core0 = $dataArray[1]
$Core1 = $dataArray[2]
$Core2 = $dataArray[3]
$Core3 = $dataArray[4]
$Core4 = $dataArray[5]
$Core5 = $dataArray[6]
$Core6 = $dataArray[7]
$Core7 = $dataArray[8]

#Find highest temp in configured cores
$TempArray = $null
$TempArray = [array]$Core0,$Core1,$Core2,$Core3,$Core4,$Core5,$Core6,$Core7
$HigestCoreTemp = ($TempArray | Measure -Max).Maximum
Write-Host "<prtg>"

Write-Host "<result>"
Write-Host "<channel>Highest CPU Core Temp</channel>"
Write-Host "<value>$HigestCoreTemp</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 0</channel>"
Write-Host "<value>$Core0</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 1</channel>"
Write-Host "<value>$Core1</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 2</channel>"
Write-Host "<value>$Core2</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 3</channel>"
Write-Host "<value>$Core3</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 4</channel>"
Write-Host "<value>$Core4</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 5</channel>"
Write-Host "<value>$Core5</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 6</channel>"
Write-Host "<value>$Core6</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "<result>"
Write-Host "<channel>Core 7</channel>"
Write-Host "<value>$Core7</value>"
Write-Host "<float>1</float>"
Write-Host "<customunit>$tempunit</customunit>"
Write-Host "<LimitMaxWarning>$WarnTemp</LimitMaxWarning>"
Write-Host "<LimitMaxError>$ErrorTemp</LimitMaxError>"
Write-Host "<LimitWarningMsg>Temperature at the warning limit</LimitWarningMsg>"
Write-Host "<LimitErrorMsg>Temperature at the error limit</LimitErrorMsg>"
Write-Host "</result>"

Write-Host "</prtg>"
