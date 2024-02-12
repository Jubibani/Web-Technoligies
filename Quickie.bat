@echo off
title Jubibani Student Workspace
echo [--------------------------------------------]
echo Hi! My name is Quickie. Let's get you started...
set /p password="Enter password: "

rem Check if the entered password is correct
if "%password%"=="HH211R" (
    goto loggedin
) else (
	echo !----------------------------------------------!
    echo Hmmp! You're not Jubibani huhu Stay away please...
	echo !----------------------------------------------!
    timeout /t 5 /nobreak
    exit
)

:loggedin
rem Specify the full path to Chrome executable
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"

<<<<<<< HEAD
rem Start Chrome with the first set of tabs on an incognito window
start "" %CHROME_PATH% "https://uc-bcf.instructure.com/calendar#view_name=month&view_start=2024-02-09" "https://github.com/" --incognito
=======
rem Start Chrome with the first set of tabs in a new window
start "" %CHROME_PATH% "https://uc-bcf.instructure.com/calendar#view_name=month&view_start=2024-02-09" "https://chat.openai.com/"
>>>>>>> 613696a79aca6a089878427506c158c2dc4af67d

rem Give Chrome some time to open the first set of tabs
timeout /t 5 /nobreak

<<<<<<< HEAD
rem Start Chrome with the second set of tabs in a new incognito window
start "" %CHROME_PATH% "https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2" "https://chat.openai.com/" --new-window --incognito
=======
rem Start Chrome with the second set of tabs in a new window
start "" %CHROME_PATH% "https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2" "https://github.com/"

>>>>>>> 613696a79aca6a089878427506c158c2dc4af67d
