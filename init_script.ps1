function Set-DefaultBrowser {
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/rmddcr/windows_init_scripts/master/install.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/rmddcr/windows_init_scripts/master/choco_install.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/rmddcr/windows_init_scripts/master/set_default.ps1'))
Add-Type -AssemblyName 'System.Windows.Forms'
Start-Process $env:windir\system32\control.exe -LoadUserProfile -Wait -ArgumentList '/name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=Firefox-308046B0AF4A39CB'
Sleep 10
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}{TAB} {ENTER}{ENTER} ")
}
Set-DefaultBrowser;
