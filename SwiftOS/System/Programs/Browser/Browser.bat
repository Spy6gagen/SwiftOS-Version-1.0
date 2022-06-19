@echo off
cls
title browser
goto browse

:browse
cls
echo Please Start The Url With https://
echo.
echo Popular Url: https://www.youtube.com
echo.
echo Please Enter A Url
set /p url=url:
start %url%
goto browse