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
    Write-Host "Delaying before sending keys to email"
    $sleepDuration = 6
    for ($i = $sleepDuration; $i -ge 0; $i--) {
        Write-Host "Waiting... $($i)s remaining"
        Start-Sleep -Seconds 1
    }
    Write-Host "done delaying"

    #click for the gmail butto
    $continueWithGmailButton = $driver.FindElementByXPath("//div[text()='Continue with Google']")
    $continueWithGmailButton.Click()

    Write-Host "button Clicked"
   # Switch to the newly opened window or frame, also this will act as the delay
   $driver.SwitchTo().Window($driver.WindowHandles[-1])
    Write-Host "switched to mini window"
    Write-Host "done delaying for gmail input"

    # Enter the email address
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
loginToQuickie   
