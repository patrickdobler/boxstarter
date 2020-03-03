#Requires -version 3
#Requires -RunAsAdministrator

# Clear output console
Clear-Host

# Change the current process policy to Unrestricted
Set-ExecutionPolicy Unrestricted -Scope Process -Force

# Profiles to install
$profiles = @(
    'Advanced'
    'ToolsVM'
)

# Define options
$options = @(
    'Boxstarter::Begin=true'
    'Boxstarter::Begin::WindowsUpdate=false'

    'Boxstarter::End=true'
    'Boxstarter::End::WindowsUpdate=false'

    'Boxstarter::Advanced::Notebook::UI=false'

)

# Download my boxstarter bootstrap
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/patrickdobler/boxstarter/master/boxstarter.ps1' -OutFile "$($env:temp)\boxstarter.ps1"

# Start the setup process
&Invoke-Command -ScriptBlock {
    &"$($env:temp)\boxstarter.ps1" -profiles $profiles -options $options -scripts $scripts -packages $packages
}