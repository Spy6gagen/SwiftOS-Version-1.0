@echo off
cls
goto menu

:menu
echo Please Select What You Need Help With
echo.
echo [1] Wont Start
echo [2] Cant Login
set /p s=select:
if %s% == 1 goto start
if %s% == 2 goto login
goto menu

:start
cls
echo you may have not all the the nessery files or code in the operating system. Please Redownload it.
pause
exit

:login
cls
echo if you forgot your account password dont worry just delete the original and create a new account, or try to find the password.
pause
exit