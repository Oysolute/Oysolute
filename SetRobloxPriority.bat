@echo off
title Roblox Priority Script
color 0A

REM Вывод крупного текста с ASCII-артом
echo.
echo.  Script
echo.        By
echo.          Oysolute 
echo.                  :)
echo.
echo.    Roblox will be in High priority even but the 
echo. window is best left to open later in this priority
echo.
echo
timeout /t 3 >nul

REM Запуск основного скрипта
:start
setlocal
set EXE_NAME=RobloxPlayerBeta.exe
set PRIORITY=High

:loop
timeout /t 2 /nobreak >nul
for /f "tokens=*" %%a in ('tasklist /FI "IMAGENAME eq %EXE_NAME%" /FO CSV /NH') do (
    if "%%a" neq "" (
        PowerShell -Command "Get-Process -Name 'RobloxPlayerBeta' | ForEach-Object { $_.PriorityClass = '%PRIORITY%' }"
    )
)
goto loop
