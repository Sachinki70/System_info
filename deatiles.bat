@echo off
:: Set output file path
set "output_file=C:\Users\sachi\Videos\Study items\Notes\PC_Full_Details.txt"

:: Start writing to the file
echo Collecting system information... > "%output_file%"
echo. >> "%output_file%"

:: System info
echo === SYSTEM INFORMATION === >> "%output_file%"
systeminfo >> "%output_file%"
echo. >> "%output_file%"

:: CPU Info
echo === CPU INFO === >> "%output_file%"
wmic cpu get Name,NumberOfCores,NumberOfLogicalProcessors >> "%output_file%"
echo. >> "%output_file%"

:: RAM Info
echo === RAM INFO === >> "%output_file%"
wmic memorychip get Capacity,Speed,Manufacturer >> "%output_file%"
echo. >> "%output_file%"

:: Disk Info
echo === DISK INFO === >> "%output_file%"
wmic diskdrive get Model,Size,InterfaceType,MediaType >> "%output_file%"
echo. >> "%output_file%"

:: Network info
echo === NETWORK CONFIGURATION === >> "%output_file%"
ipconfig /all >> "%output_file%"
echo. >> "%output_file%"

:: Installed programs
echo === INSTALLED PROGRAMS === >> "%output_file%"
wmic product get Name,Version >> "%output_file%"
echo. >> "%output_file%"

:: Running processes
echo === RUNNING PROCESSES === >> "%output_file%"
tasklist >> "%output_file%"
echo. >> "%output_file%"

:: User accounts
echo === USER ACCOUNTS === >> "%output_file%"
net user >> "%output_file%"
echo. >> "%output_file%"

exit