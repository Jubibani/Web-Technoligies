
#importing selenium with where you installed your selenium module
Import-Module "C:\Program Files\Python311\Lib\site-packages\selenium"
#quickiePow is pwsh version for Quicki.bat file
Write-Host "---Hello we opened quickiePow!---"

#password setting for the script
$password = 'HH211R'

#function to be executed
function openWorkspace() {
    Write-Host "--opening workspace..."

    $driver = Start-SeChrome -Incognito -StartURL "https://uc-bcf.instructure.com/calendar#view_name=month&view_start=2024-02-21", "https://github.com/"
    # Navigate to the website where you want to log in
    $driver.Navigate().GoToUrl("https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2")

    # Find the elennts to insert the credential
    $emailField = $driver.FindElementById("notion-email-input-2")

    #wait 3 seconds before inputting passowrd
    $secondsToSleep = 3

    for($countStartsFrom = $secondsToSleep; $countStartsFrom -gt 0; $countStartsFrom--){
    Write-Host "waiting in $countStartsFrom"
    Start-Sleep -Seconds 1
    }

    $emailField.SendKeys("cao5224@sdtudents.uc-bcf.edu.ph")
}


#verify the user
Read-Host "Password: " -AsSecureString

if ($password -eq 'HH211R') {
    Write-Host "correct password"
    openWorkspace
    } else {
    Write-Host "Incorrect password"
    }