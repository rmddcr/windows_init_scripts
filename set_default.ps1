function Set-DefaultBrowser {
Add-Type -AssemblyName 'System.Windows.Forms'
Start-Process $env:windir\system32\control.exe -LoadUserProfile -Wait -ArgumentList '/name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=Firefox-308046B0AF4A39CB'
Sleep 10
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}{TAB} {ENTER}{ENTER} ")
}
Set-DefaultBrowser;