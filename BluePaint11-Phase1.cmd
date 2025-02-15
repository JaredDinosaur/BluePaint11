@echo off
echo ---WARNING 1/2---
echo This script will not work unless it is run on Windows 11 using ExecTI!
echo dl-execti.html provides a download link.
timeout /t 3 /nobreak >nul
echo Press any key to continue if running with ExecTI, or close the program...
pause >nul
cls
echo ---WARNING 2/2---
echo This script causes changes to system files which cannot be easily undone.
echo UWP apps such as Explorer, Edge and Task Manager will no longer render correctly.
echo The Windows 10 Task Manager can be opened with FallbackTaskManager.cmd.
echo The taskbar will no longer render.
echo The system will restart to apply any changes made by the script.
echo If Windows appears to hang upon startup, press enter.
echo Any changes made by the script apply to all users on this device.
echo ***Running this script on a real machine is strongly discouraged!***
echo ***You are running this script at your own risk!***
timeout /t 10 /nobreak >nul
echo Press any key if you are absolutely sure you want to continue, or close the program...
pause >nul
cls
echo Removing first UI layer in 5...
timeout /t 1 /nobreak >nul
cls
echo Removing first UI layer in 4...
timeout /t 1 /nobreak >nul
cls
echo Removing first UI layer in 3...
timeout /t 1 /nobreak >nul
cls
echo Removing first UI layer in 2...
timeout /t 1 /nobreak >nul
cls
echo Removing first UI layer in 1...
timeout /t 1 /nobreak >nul
cls
cd C:\Windows\System32
echo Removing DWM...
del dwm.exe
echo Removing Login GUI...
del Windows.UI.Logon.dll
echo Removing Shell Infrastructure Host...
move sihost.exe sihost2.exe
echo Creating decoy DWM...
copy cmd.exe dwm.exe
echo Restoring cursor functionality...
del dwminit.dll
cls
echo First UI layer removed!
echo The system will restart in 10 seconds, or when you press any key.
timeout /t 10
shutdown -r -t 0