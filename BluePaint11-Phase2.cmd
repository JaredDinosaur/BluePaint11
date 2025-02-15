@echo off
echo ---WARNING 1/2---
echo This script is Phase 2 of BluePaint11!
echo This script will not work unless you have already run the Phase 1 script!
echo This script will not work unless it is run using ExecTI!
timeout /t 3 /nobreak >nul
echo Press any key to continue if you are running with ExecTI and have already run Phase 1, or close the program...
pause >nul
cls
echo ---WARNING 2/2---
echo This script causes changes to system files which cannot be easily undone.
echo UWP apps such as Explorer, Edge and Task Manager will no longer render correctly and may be unusable.
echo This includes the fallback version of Task Manager.
echo The system will restart to apply any changes made by the script.
echo Any changes made by the script apply to all users on this device.
echo ***Running this script on a real machine is strongly discouraged!***
echo ***You are running this script at your own risk!***
timeout /t 10 /nobreak >nul
echo Press any key if you are absolutely sure you want to continue, or close the program...
pause >nul
cls
echo Removing second UI layer in 5...
timeout /t 1 /nobreak >nul
cls
echo Removing second UI layer in 4...
timeout /t 1 /nobreak >nul
cls
echo Removing second UI layer in 3...
timeout /t 1 /nobreak >nul
cls
echo Removing second UI layer in 2...
timeout /t 1 /nobreak >nul
cls
echo Removing second UI layer in 1...
timeout /t 1 /nobreak >nul
cls
cd C:\Windows
echo Removing Resources folder...
del Resources /q
rd Resources /s /q
cls
echo Second UI layer removed!
echo The system will restart in 10 seconds, or when you press any key.
timeout /t 10
shutdown -r -t 0