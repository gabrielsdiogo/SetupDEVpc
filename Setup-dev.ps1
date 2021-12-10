# write-output ipconfig
# $wshell = New-Object -com WScript.shell

#enable Hyper V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# enable wsl1
wsl --install

# enable Linux sub-system
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# enable virtualization
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# install wsl2
wsl --set-default-version 2

# install docker
choco install docker-desktop -y

# install npm and node
choco install nodejs.install -y

# install Git
choco install git -y

# install Kubernetes
choco install kind -y

# install vsCode
choco install vscode -y

# install google Chrome
choco install googlechrome -y

# install 7zip
choco install 7zip.install -y


# Finalização
clear
write-output "Todos os servicos foram instalados !  "