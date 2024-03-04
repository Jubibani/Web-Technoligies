# Set the path to Selenium WebDriver DLL and ChromeDriver
$workingPath = "C:\selenium-selenium-4.18.0"
$chromeDriverPath = Join-Path -Path $workingPath -ChildPath "chromedriver.exe"
$webDriverDllPath = Join-Path -Path $workingPath -ChildPath "WebDriver.dll"

# Add the path to Selenium WebDriver DLL to the assembly
Add-Type -Path $webDriverDllPath

# Start Chrome WebDriver
$driver = [OpenQA.Selenium.Chrome.ChromeDriver]::new($chromeDriverPath)

# Navigate to the website where you want to log in
$driver.Navigate().GoToUrl("https://www.notion.so/Student-Notes-d19082c1bdf942ebaef6678b0ab342b2")

# Find the element to insert the email
$emailField = $driver.FindElementById("notion-email-input-2")
$emailField.SendKeys("cao5224@sdtudents.uc-bcf.edu.ph")

# Prompt for password
$passwordInput = Read-Host "Password: " -AsSecureString
$passwordPlainText = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($passwordInput))

# Example: Finding and interacting with password field
$passwordField = $driver.FindElementById("password-field-id")
$passwordField.SendKeys($passwordPlainText)

# Example: Clicking on login button
$loginButton = $driver.FindElementById("login-button-id")
$loginButton.Click()
