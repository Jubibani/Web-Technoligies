# Import Selenium WebDriver module
Import-Module Selenium

# Set the path to ChromeDriver (change it if you have to)
$chromeDriverPath = "C:\selenium-selenium-4.18.0\selenium-selenium-4.18.0"

# Create ChromeOptions instance and set unhandledPromptBehavior to ignore
$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions
$chromeOptions.AddArgument("--unhandledPromptBehavior=ignore")

# Create a new ChromeDriver instance with ChromeOptions
$driver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverPath, $chromeOptions)


# if ($passwordInput -eq $passwordToQuickie) {
#     Write-Host "Access Granted!"
#     loginToQuickie
# }

function delay {
    #im adding a delay. Displaying the count down with a for loop since powshell doesnt have a built-in countdown.
    Write-Host "Delaying before sending keys to email"
    $sleepDuration = 6
    for ($i = $sleepDuration; $i -ge 0; $i--) {
        Write-Host "Waiting... $($i)s remaining"
        Start-Sleep -Seconds 1
    }
    Write-Host "done delaying"
}
function switchWindow {
    # Switch to the newly opened window or frame, also this will act as the delay
   $driver.SwitchTo().Window($driver.WindowHandles[-1])
}
function loginToUcCanvasUsingQuickie{
    $driver.Navigate().GoToUrl("https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=d9049f1e-bc5a-47db-a706-afff21f24a89&redirect_uri=https%3A%2F%2Fsso.canvaslms.com%2Flogin%2Foauth2%2Fcallback&response_type=code&scope=openid+email&state=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhYWNfaWQiOjE2OTM2MDAwMDAwMDAwMDAwMiwibm9uY2UiOiJhMTY2YTA3YTUyMzE0YmU0MWFmMmM2YTQ0NTQ4NGEyMTU0OGJhYTRiZjZlNzdiZTciLCJob3N0IjoidWMtYmNmLmluc3RydWN0dXJlLmNvbSIsImV4cCI6MTcwOTczNjYzNX0.Nn13bZRb5ApqN0D2Qe1joI7HHD9hOntJUE6dW8zaA2A&sso_reload=true#view_name=month&view_start=2022-02-07")
    
    #implement delay to wait for booting process
    delay
    Write-Host "delaying"
    #we enter the school email for our canvas
    Write-Host "Entering School Email"
    $emailField = $driver.FindElementById("i0116")
    $emailField.SendKeys("cao5224@students.uc-bcf.edu.ph")

    #click next button after entering my gmail
    Write-Host "Clicking Next Button"
    $enterNextButton = $driver.FindElementById("idSIButton9")
    $enterNextButton.Click()

    Write-Host "Switchin to another Window"
    switchWindow

    #enter password
    Write-Host "Entering School Password"
    $emailField = $driver.FindElementById("i0118")
    $emailField.SendKeys("Jubibi'sstrawbibi")

    #click next button to submit to login
    Write-Host "Clicking Next Button"
    $enterNextButton = $driver.FindElementById("idSIButton9")
    $enterNextButton.Click()

    #click yes button
    Write-Host "delay with 2 seconds"
    Start-Sleep -Seconds 2
    Write-Host "Clicking 'Yes' Button"
    $enterNextButton = $driver.FindElementById("idSIButton9")
    $enterNextButton.Click()

    Write-Host "you should be logged in to UC Canvas By Now!"
}   
function loginToNotionUsingQuickie {
    # Navigate to the website where you want to log in
    $driver.Navigate().GoToUrl("https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2")

    
    # # Wait for the email input field to be visible
    # $wait = New-Object OpenQA.Selenium.Support.UI.WebDriverWait($driver, [timespan]::FromSeconds(10))
    # $emailField = $wait.Until({
    #     param ($driver)
    #     $element = $driver.FindElementById("notion-email-input-2")
    #     if ($element.Displayed) {
    #         $element
    #     }
    # })
    #im adding a delay. Displaying the count down with a for loop since powshell doesnt have a built-in countdown.
    delay
    #click for the gmail butto
    $continueWithGmailButton = $driver.FindElementByXPath("//div[text()='Continue with Google']")
    $continueWithGmailButton.Click()

    Write-Host "button Clicked"
   # Switch to the newly opened window or frame, also this will act as the delay
   $driver.SwitchTo().Window($driver.WindowHandles[-1])
    Write-Host "switched to mini window"
    Write-Host "done delaying for gmail input"

    # Enter the Gmail address
    $emailField = $driver.FindElementByXPath("//input[@id='identifierId']")
    $emailField.SendKeys("strawberryloli3@gmail.com")

    # Find the "Next" button by XPath
    $nextButton = $driver.FindElementByXPath("//button[@type='button']//span[text()='Next']")

    # Click the "Next" button
    $nextButton.Click()

#     # Find the "Continue with email" button
#     $continueWithEmailButton = $driver.FindElementByXPath("//div[text()='Continue with email']")

#     # Click the button to continue with email
#     $continueWithEmailButton.Click()
#     Write-Host "button Clicked"
    
}

# loginToQuickie   
loginToUcCanvasUsingQuickie
