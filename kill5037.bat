@echo off 
color a
title ReleaseAdbPort
echo ======================
echo *** Dash 2019-06-20***
echo ***     v1.1.1     ***
echo ======================
echo ---------------------------
echo Checking adb port...
for /F "usebackq tokens=5" %%a in (`"netstat -ano | findstr "5037""`) do (   
if not "%%a" =="0" call :ReleasePort %%a
)
echo ---------------------------
echo adb port has been released!
echo ---------------------------


exit

:ReleasePort
TASKKILL /f /PID %1

exit