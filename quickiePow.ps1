#quickiePow is pwsh version for Quicki.bat file
Write-Host "---Hello we opened quickiePow!---"

#password setting

$password = 'HH211R'

#function to be executed
function openWorkspace() {
    Write-Host "--opening workspace..."

    Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList "--incognito", "https://uc-bcf.instructure.com/calendar#view_name=month&view_start=2024-02-21", "https://github.com/"

    Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList "--incognito", "--new-window https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2" #"add here a VPN chatGPT"
}


#verify the user
Read-Host "Password: " -AsSecureString

if ($password -eq 'HH211R') {
    Write-Host "correct password"
    openWorkspace
    } else {
    Write-Host "Incorrect password"
    }