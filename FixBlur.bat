@echo off 
echo This batch script fixes the right eye blur that occurs when using air link
echo All you need to do after running this script is relogin and relink your quest 2
echo.
echo Killing oculus processes... (OVRServer_x64.exe, oculus-platform-runtime.exe, OVRRedir.exe, OVRServiceLauncher.exe)
taskkill /f /im OVRServer_x64.exe
taskkill /f /im oculus-platform-runtime.exe
taskkill /f /im OVRRedir.exe
taskkill /f /im OVRServiceLauncher.exe
echo.
echo Oculus appdata folder path: C:\Users\%username%\AppData\Roaming\Oculus
echo Deleting oculus appdata folder...
rmdir /s /q C:\Users\%username%\AppData\Roaming\Oculus§
echo. 
echo Done! You can now relogin and relink your quest 2
start "" "C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe" > null
echo.
echo ANY LOGS BELOW ARE FROM THE OCULUS CLIENT STARTING UP
exit