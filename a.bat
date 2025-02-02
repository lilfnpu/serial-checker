@echo off
color 90
TITLE Spook Checker
:: Check if C:\temp exists, if not, create it
if not exist "C:\temp\" mkdir "C:\temp\"

:: Create a VBScript to show a pop-up window in C:\temp

:: Execute the VBScript to show the pop-up from C:\temp
cscript //nologo "C:\temp\ms.vbs"

:: Delete the temporary VBScript from C:\temp
del "C:\temp\ms.vbs"

:: Continue with your original batch logic
:start
color 4  
cls
echo [91m       Volumeid(s):
echo [90m==========================[97m
vol C:
vol D:
echo [90m==========================[97m
echo [93m       Motherboard
echo [90m==========================[97m
wmic baseboard get serialnumber
echo [90m==========================[97m
echo [92m        CHASSIS
echo [90m==========================[97m
wmic systemenclosure get serialnumber
echo [90m==========================[97m
echo [96m        SMBIOS
echo [90m==========================[97m
wmic path win32_computersystemproduct get uuid
echo [90m==========================[97m
echo [95m         BIOS
echo [90m==========================[97m
wmic bios get serialnumber
echo [90m==========================[97m
echo [91m         CPU
echo [90m==========================[97m
wmic cpu get serialnumber
echo [90m==========================[97m
echo [94m      PRODUCTID
echo [90m==========================[97m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductID
echo [90m==========================[97m
echo [92m         MAC
echo [90m==========================[97m
getmac
echo [90m==========================[97m
echo [93m        RAM SERIAL(S)
echo [90m==========================[97m
wmic memorychip get serialnumber
echo [90m==========================[97m
echo [97m==============================================================================[97m
echo.
pause>nul
goto:a
