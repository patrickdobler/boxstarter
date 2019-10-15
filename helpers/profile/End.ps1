

# Don't want to use those default parameters
# just add this option to the starter script
#
#       Boxstarter::End=false
#

#--- [Import] ---------------------------------------------------------------------------------------------------------
Import-Function -WebClient $webclient -Path "https://raw.githubusercontent.com/chocolatey/boxstarter/master/BoxStarter.Common/Remove-BoxstarterError.ps1"
Import-Function -WebClient $webclient -Path "https://raw.githubusercontent.com/chocolatey/boxstarter/master/Boxstarter.Bootstrapper/Start-UpdateServices.ps1"
#----------------------------------------------------------------------------------------------------------------------


# Restore temporary settings
Enable-UAC

#
if(Confirm-Install 'Boxstarter::End')
{
    # Enable Windows update
    if(Confirm-Install 'Boxstarter::End::WindowsUpdate') {
        Start-UpdateServices
        Install-WindowsUpdate -AcceptEula
    }

    # Disable Microsoft Update
    if(Confirm-Install 'Boxstarter::End::MicrosoftUpdate') {
        Enable-MicrosoftUpdate
    }

    # Cleanup
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "C:\eula*.txt"
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "C:\install*"
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "C:\vcredist*"
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "C:\vc_red*"

    # Remove all Public Desktop Icons and Edge
    if(Confirm-Install 'Boxstarter::End::RemoveDesktopIcons') {
        Get-ChildItem "$env:Public\Desktop\*.lnk" | ForEach-Object { Remove-Item $_ }
        Get-ChildItem "$env:USERPROFILE\Desktop\Microsoft Edge.lnk" | Remove-Item
    }
}

# Clean environnement variables
foreach($var in Get-EnvironmentVariableNames('Machine')) {
    $toRemove = $var.StartsWith("Boxstarter::")
    if($toRemove) {
        Remove-EnvironmentVariable $var 'Machine'
    }
}
foreach($var in Get-EnvironmentVariableNames('User')) {
    $toRemove = $var.StartsWith("Boxstarter::")
    if($toRemove) {
        Remove-EnvironmentVariable $var 'User'
    }
}

# Reset ExecutionPolicy back to default
if(Confirm-Install 'Boxstarter::End::ExecutionPolicy') {
    Update-ExecutionPolicy Restricted
}

if(Test-PendingReboot) { Invoke-Reboot }