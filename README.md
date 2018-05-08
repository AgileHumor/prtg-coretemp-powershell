# prtg-coretemp-powershell
CPU Temperature Monitor for PRTG Custom EXE/Script Sensor in Poweshell

Copy PS1 file to your C:\Program Files (x86)\PRTG Network Monitor\Custom Sensors\EXEXML directory

# Set custom variables for your log files
$dir = "C:\Program Files\Core Temp\"
$logfilepattern = "CT-Log*.csv"
$tempunit = "F"
$WarnTemp = 150
$ErrorTemp = 200


