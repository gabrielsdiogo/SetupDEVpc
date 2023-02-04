clear-host
Write-Output "inicializando instalacao dos recursos!"

#enable Hyper V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart

# enable wsl1
wsl --install

# enable Linux sub-system
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# enable virtualization
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# install wsl2
wsl --set-default-version 2


#installing chocolatey
clear-host
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))



#installing docker desktop
clear-host
choco install docker-desktop -y
Write-Output "Docker-Desktop Installed!"

#installing Git
clear-host
choco install git -y
Write-Output "Git Installed!"

#Installing Git kraken
clear-host
choco install gitkraken -y
Write-Output "Git Kraken Installed!"

#installing python
clear-host
choco install python -y
Write-Output "Python Installed!"

#installing Ueli
clear-host
choco install ueli -y
Write-Output "Ueli Installed"

#installing Insomnia
clear-host
choco install insomnia-rest-api-client -y
Write-Output "Insomnia Installed"

#installing Postman
clear-host
choco install postman -y
Write-Output "Postman Installed"

#installing VScode
clear-host
choco install vscode -y
Write-Output "VScode Installed"

#installing Visual Studio
clear-host
choco install visualstudio2022community -y
Write-Output "Visual Studio Installed"

#installing DBeaver
clear-host
choco install dbeaver -y
Write-Output "Dbeaver Installed"

#installing openvpn
clear-host
choco install openvpn -y
Write-Output "openvpn Installed"

#installing 7zip
clear-host
choco install 7zip -y
Write-Output "7zip Installed"

#installing microsoft-teams
clear-host
choco install microsoft-teams.install -y
Write-Output "microsoft-teams Installed"

#installing google chrome
clear-host
choco install googlechrome -y
Write-Output "google chrome Installed"
