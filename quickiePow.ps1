# Import Selenium WebDriver module
Import-Module Selenium

# Set the path to ChromeDriver (change it if you have to)
$chromeDriverPath = "C:\selenium-selenium-4.18.0\selenium-selenium-4.18.0"

# $passwordToQuickie = "HH211R"
# $passwordInput = Read-Host "Enter Password" -AsSecureString
# Create a new ChromeDriver instance
$driver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverPath)

# if ($passwordInput -eq $passwordToQuickie) {
#     Write-Host "Access Granted!"
#     loginToQuickie
# }
function loginToQuickie {
    # Navigate to the website where you want to log in
    $driver.Navigate().GoToUrl("https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2")

    
    # Wait for the email input field to be visible
    $wait = New-Object OpenQA.Selenium.Support.UI.WebDriverWait($driver, [timespan]::FromSeconds(10))
    $emailField = $wait.Until({
        param ($driver)
        $element = $driver.FindElementById("notion-email-input-2")
        if ($element.Displayed) {
            $element
        }
    })
    #im adding a delay
    Write-Host "delaying"
    Start-Sleep -Seconds 5
    Write-Host "done delaying"
    # Enter the email address
    # Find the element to insert the email
    $emailField = $driver.FindElementById("notion-email-input-2")
    $emailField.SendKeys("cao5224@sdtudents.uc-bcf.edu.ph")


}
loginToQuickie   