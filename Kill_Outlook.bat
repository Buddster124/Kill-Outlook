::Script Created By: Anthony Budd
::Last Edit: 01/07/2021
::Description: This script will kill all outlook processes

echo off

::Loop To Kill Outlook
:loop
timeout -t 2
echo "Killing outlook.exe"
taskkill /IM outlook.exe
echo "outlook.exe Killed"

::Creates kills outlook if it is still running
tasklist /FI "IMAGENAME eq outlook.exe" 2>NUL | find /I /N "outlook.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop

:End Message
cls
echo "Outlook Completly Closed"
echo "Exiting Program"
timeout -t 2
exit

::End Of File
:EOF
