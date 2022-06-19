@echo off
cls
title SwiftOS
goto boot

:boot
if exist "System\setup.bat" (
goto boot1
) else (
goto setup
)

:boot1
cls
call "System\setup.bat"
echo Hello, %user%
echo.
echo Please Enter Your Password
set /p passwordenter=Password:
if %pass% == %passwordenter% goto homescreen
echo.
echo oops, wrong password!
echo.
pause
goto boot1

:homescreen
cls
echo Welcome, %user%
echo.
echo [1] Shift Coding
echo [2] Internet
echo [3] Commander
set /p select=select:
if %select% == 3 goto commander
if %select% == 2 goto internetbrowse
if %select% == 1 goto shiftcoding
goto homescreen

:internetbrowse
cls
start System\Programs\Browser\Browser.bat
goto homescreen

:shiftcoding
cls
echo Please Select The File Format
echo.
echo [1] Swift Batch
echo [2] Swift Text
echo [3] Exit
set /p a=?
if %a% == 1 goto batchcoder
if %a% == 2 goto txtmaker
if %a% == 3 goto homescreen

:batchcoder
cls
echo you can only put 10 lines of code
echo.
set /p line1=line?
cls
echo you can only put 10 lines of code
echo.
set /p line2=line?
cls
echo you can only put 10 lines of code
echo.
set /p line3=line?
cls
echo you can only put 10 lines of code
echo.
set /p line4=line?
cls
echo you can only put 10 lines of code
echo.
set /p line5=line?
cls
echo you can only put 10 lines of code
echo.
set /p line6=line?
cls
echo you can only put 10 lines of code
echo.
set /p line7=line?
cls
echo you can only put 10 lines of code
echo.
set /p line8=line?
cls
echo you can only put 10 lines of code
echo.
set /p line9=line?
cls
echo you can only put 10 lines of code
echo.
set /p line10=line?
goto batchname

:batchname
cls
echo name for file
echo.
set /p namebatch=name?
set namebatch=%namebatch%
goto savebatch

:savebatch
cls
(
echo %line1%
echo %line2%
echo %line3%
echo %line4%
echo %line5%
echo %line6%
echo %line7%
echo %line8%
echo %line9%
echo %line10%
)>System\ProgramsSwift\%namebatch%.bat
goto shiftcoding

:txtmaker
cls
echo write your text
echo.
set /p kal=text?
set textt=%kal%
goto nametext

:nametext
cls
echo please enter a name for your File
echo.
set /p name=name?
set name=%name%
goto savetxt

:savetxt
(
echo %textt%
)>System/TextFilesSwift/%name%.txt
goto shiftcoding

:commander
cls
echo Type Exit To Leave
echo.
echo Please Enter A Command
set /p command=com:
if %command% == exit goto homescreen
if %command% == search goto searchdir
if %command% == delete goto deleter
if %command% == open goto opener
if %command% == ":A:M" goto Mat
echo Command Not Recognised
pause
goto commander

:Mat
cls
color 0a
goto mata

:mata
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
echo %random% %random% %random%%random% %random% %random%
goto mata

:searchdir
cls
echo Please Enter A Drive
set /p dri=dri:
cls
dir %dri%
pause
goto commander

:deleter
cls
echo What Folder
set /p folde=fold:
cls
echo What File Name (With File Extension)
echo.
set /p file=file:
del System\%folde%\%file%
goto commander

:opener
cls
echo What Folder
set /p folde=fold:
cls
echo What File Name (With File Extension)
echo.
set /p file=file:
start System\%folde%\%file%
goto commander


:setup
cls
echo SwiftOS Setup
echo.
echo Welcome to the SwiftOS Setup! Please Enter Your New Username!
set /p userna=Username:
set user1=%userna%
goto setup1

:setup1
cls
echo SwiftOS Setup
echo.
echo Please Enter A Password!
set /p password=Pass:
goto set

:set
cls
(
echo set  user=%user1%
echo set pass=%password%
)>System\setup.bat
timeout 3 >nul
goto exit1

:exit1
cls
echo Please Reopen the operating system
pause
exit
 





