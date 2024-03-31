@echo off
title Quickie
echo [--------------------------------------------]
echo Hi! My name is Quickie. Let's get you started...
set /p password="Enter password: "

rem [this is optional]: but you can add a password before the script to be executed. be sure to encrypt the file afterwards.
::if "%password%"=="yourPasswordHere" (
::    goto loggedin
::) else (
::	echo !----------------------------------------------!
::   echo Password Incorrect!
::	echo !----------------------------------------------!
::    timeout /t 5 /nobreak
::    exit
::)

:loggedin
rem Specify the full path to Chrome executable
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"

rem Start Chrome with the first set of tabs on an 'incognito window'
rem [this is optional]: but you can delete the argument '--incognito'
start "" %CHROME_PATH% "inputYourURLhere" "inputYourURLhere" --incognito
rem Give Chrome some time to open the first set of tabs
timeout /t 5 /nobreak

rem Start Chrome with the second set of tabs in a 'new incognito window'
start "" %CHROME_PATH% "inputYourURLhere" "inputYourURLhere" --new-window --incognito
