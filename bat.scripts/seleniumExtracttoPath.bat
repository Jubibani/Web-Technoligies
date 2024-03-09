@echo off
title Selenium Extraction To Path

rem Retrieve the Downloads folder path
FOR /F "USEBACKQ TOKENS=2,*" %%a IN (
    `REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V {374DE290-123F-4565-9164-39C4925E467B}`
) DO (
    SET DOWNLOADS=%%b
)

rem Check if the Downloads folder path is retrieved successfully
if "%DOWNLOADS%"=="" (
    echo Downloads folder path not found.
    exit /b
)

rem Set the path to the Automation-automation zip file in the Downloads folder
set "zipFile=%DOWNLOADS%\Automation-automation.zip"

rem Check if the Automation-automation zip file exists
if not exist "%zipFile%" (
    echo Automation-automation zip file not found in the Downloads folder.
    exit /b
)

rem Set the destination path for extraction
set "extractTo=C:\selenium-selenium-4.18.0"

rem Check if the destination folder already exists
if exist "%extractTo%" (
    echo Destination folder already exists. Extraction aborted.
    exit /b
)

rem Create the destination folder
mkdir "%extractTo%"

rem Use PowerShell to extract the zip file
powershell Expand-Archive -Path "%zipFile%" -DestinationPath "%extractTo%"

echo Extraction completed.
