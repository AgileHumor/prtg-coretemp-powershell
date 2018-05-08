CPU Temperature Monitor for PRTG Custom EXE/Script Sensor in Poweshell

Instructions:
1. Set CoreTemp to start with Windows AND Log on Start.
2. Copy PS1 file to your C:\Program Files (x86)\PRTG Network Monitor\Custom Sensors\EXEXML directory
3. Set custom variables for your log files
$dir = "C:\Program Files\Core Temp\"
$tempunit = "F"
$WarnTemp = 150
$ErrorTemp = 200
