# System Utilities
if(Confirm-Install 'Boxstarter::ToolsVM::7zip')             { Install-ChocoApp 7zip.install }
if(Confirm-Install 'Boxstarter::ToolsVM::notepadplusplus')  { Install-ChocoApp notepadplusplus.install }
if(Confirm-Install 'Boxstarter::ToolsVM::edge')             { Install-ChocoApp microsoft-edge }


# Auto Update Choco Packages

if(Confirm-Install 'Boxstarter::ToolsVM::chocoupgrade')     { Install-ChocoApp choco-upgrade-all-at -Params '"/WEEKLY:yes /DAY:SAT /TIME:01:00"' }

# Dev Tools
if(Confirm-Install 'Boxstarter::ToolsVM::git')             { Install-ChocoApp git.install -RefreshEnv }
if(Confirm-Install 'Boxstarter::ToolsVM::python3')         { Install-ChocoApp python3 }
if(Confirm-Install 'Boxstarter::ToolsVM::github-desktop')  { Install-ChocoApp github-desktop }
if(Confirm-Install 'Boxstarter::ToolsVM::cmder')           { Install-ChocoApp cmder }

# Config CMDER
if(Confirm-Install 'Boxstarter::ToolsVM::cmder')
{
    # Add cmder to ENV:PATH & right click at every folder
    Invoke-Expression -Command '$env:Path += ";C:\tools\Cmder"'
    Invoke-Expression -command "Cmder.exe /REGISTER ALL"
    #Pin-TaskBarItem "c:\tools\cmder\cmder.exe"
}

#--- Enable Telnet
Install-ChocoWindowsFeature 'TelnetClient'