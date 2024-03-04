# Import Selenium WebDriver module
Import-Module Selenium

# Set the path to ChromeDriver
$chromeDriverPath = "C:\selenium-selenium-4.18.0\chromedriver.exe"

# Create a new ChromeDriver instance
$driver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverPath)
function loginToQuickie () {
    $passwordToQuickie = "HH211R"
    $passwordInput = Read-Host "Enter Passowrd" -AsSecureString
    if ($passwordInput == $passwordToQuickie) {
        Read-Host "Access Granted!"
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

    }
}
