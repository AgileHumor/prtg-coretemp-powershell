CPU Temperature Monitor for PRTG Custom EXE/Script Sensor - Takes last line of a CSV log file and pareses the data into an XML file compatible with PTRG network monitor tool for Windows.  

Instructions:
1. Install Core Temp (http://www.alcpu.com/CoreTemp/) to comfigure to "Start Core Temp with Windows" AND "Enable logging on startup". 
2. Copy PS1 file to your C:\Program Files (x86)\PRTG Network Monitor\Custom Sensors\EXEXML directory
3. Set custom variables for your log files for directory, warning temp, and error temp.  Written for 8 cores.  You will need to edit script for your # of cores on your CPU in two areas ($dataArray and $temparray)
4. Create a Custom EXE/Script Sensor in the PRTG web gui, using the CoreTempFromLog.ps1 as the custom script.

Note - Only works on PRTG Probe computer (unless you have access to log file via share).

