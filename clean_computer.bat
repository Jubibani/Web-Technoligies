@ECHO OFF
ECHO ----------------[Cleaning Unnecessary 'Temp' Files] -----------
rem navigate to 'temp' directory
cd C:\Windows\Temp

rem delete all files in the 'temp' directory
DEL /Q /F /S *

rem delete the 'temp' directory and its subdirectories
RMDIR /Q /S Temp
ECHO ----------------[Temp Files Sucessfully Moved to Bin] -------
ECHO ----------------[Cleaning Unnecessary '&Temp&' Files] -----------
rem navigate to '%temp%' directory
cd C:\Users\JUBIBI~1\AppData\Local\Temp

rem delete all files in the 'temp' directory
DEL /Q /F /S *

rem delete the 'temp' directory and its subdirectories
RMDIR /Q /S Temp
ECHO ----------------['&Temp&' Files Sucessfully Moved to Bin] -------
ECHO ----------------[Cleaning Unnecessary 'prefetch' Files] -----------
rem navigate to prefetch directory
cd C:\Windows\Prefetch

rem delete all files in the 'temp' directory
DEL /Q /F /S *

rem delete the 'temp' directory and its subdirectories
RMDIR /Q /S Prefetch
ECHO ----------------['prefetch' Files Sucessfully Moved to Bin] -------
rem we now go to recylebin to successfully clean them files

rem navigate to recylebin
rd /s /q C:\$Recycle.Bin
ECHO [Unnecessary Files Sucessfully Cleaned!]

pause
