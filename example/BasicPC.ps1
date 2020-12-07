#Requires -version 3
#Requires -RunAsAdministrator

# Clear output console
Clear-Host

# Change the current process policy to Unrestricted
Set-ExecutionPolicy Unrestricted -Scope Process -Force

# Profiles to install
$profiles = @(
    'Basic'
    'ToolsBasic'
)

# Tools installation recommended with ninite.com

# Define options
$options = @(
    'Boxstarter::Begin=true'
    'Boxstarter::Begin::WindowsUpdate=false'

    'Boxstarter::End=true'
    'Boxstarter::End::WindowsUpdate=false'

    'Boxstarter::Advanced::Notebook::UI=false'


    'Boxstarter::ToolsBasic::office365proplus=false'

    'Boxstarter::ToolsBasic::flashplayer=false'

    'Boxstarter::ToolsBasic::google-backup=false'
    'Boxstarter::ToolsBasic::jre8=false'
    'Boxstarter::ToolsBasic::keepass=false'
	
    'Boxstarter::ToolsBasic::greenshot=false'
    'Boxstarter::ToolsBasic::imageglass=false'

)

# Download my boxstarter bootstrap
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/patrickdobler/boxstarter/master/boxstarter.ps1' -OutFile "$($env:temp)\boxstarter.ps1"

# Start the setup process
&Invoke-Command -ScriptBlock {
    &"$($env:temp)\boxstarter.ps1" -profiles $profiles -options $options -scripts $scripts -packages $packages
}
