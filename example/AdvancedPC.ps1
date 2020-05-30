#Requires -version 3
#Requires -RunAsAdministrator

# Clear output console
Clear-Host

# Change the current process policy to Unrestricted
Set-ExecutionPolicy Unrestricted -Scope Process -Force

# Profiles to install
$profiles = @(
    'Advanced'
    'Tools'
    'DevCore'
    'HyperV'
)

# Define options
$options = @(
    'Boxstarter::Begin=true'
    'Boxstarter::Begin::WindowsUpdate=false'

    'Boxstarter::End=true'
    'Boxstarter::End::WindowsUpdate=false'

    'Boxstarter::Advanced::Notebook::UI=false'

    'Boxstarter::DevCore::wget=false'
    'Boxstarter::DevCore::curl=false'
    'Boxstarter::DevCore::github-desktop=false'
    'Boxstarter::DevCore::sysinternals=false'
    'Boxstarter::DevCore::gcm=false'
    'Boxstarter::DevCore::python3=false'
    'Boxstarter::DevCore::git=false'
    'Boxstarter::DevCore::TelnetClient=false'

    'Boxstarter::Tools::office365proplus=false'
    'Boxstarter::Tools::7zip=false'
    'Boxstarter::Tools::flashplayer=false'
    'Boxstarter::Tools::jre8=false'
    'Boxstarter::Tools::greenshot=false'
    'Boxstarter::Tools::slack=false'
    'Boxstarter::Tools::google-backup=false'
    'Boxstarter::Tools::nzbget=false'
    'Boxstarter::Tools::filezilla=false'
    'Boxstarter::Tools::treesizefree=false'

    'Boxstarter::Tools::googlechrome=false'
    'Boxstarter::Tools::nvidiadriver=false'

    'Boxstarter::DevCore::fonts=false'
)

# Download my boxstarter bootstrap
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/patrickdobler/boxstarter/master/boxstarter.ps1' -OutFile "$($env:temp)\boxstarter.ps1"

# Start the setup process
&Invoke-Command -ScriptBlock {
    &"$($env:temp)\boxstarter.ps1" -profiles $profiles -options $options -scripts $scripts -packages $packages
}


