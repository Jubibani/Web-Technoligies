@echo off

rem Specify the full path to Chrome executable
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"

rem Start Chrome with the first set of tabs in a new window
start "" %CHROME_PATH% "https://uc-bcf.instructure.com/calendar#view_name=month&view_start=2024-02-09" "https://github.com/"

rem Give Chrome some time to open the first set of tabs
timeout /t 5 /nobreak

rem Start Chrome with the second set of tabs in a new window
start "" %CHROME_PATH% "https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2" "https://chat.openai.com/"
