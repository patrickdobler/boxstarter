# DevCore Config


#--- [Import] ---------------------------------------------------------------------------------------------------------
Import-Function -Path "$sRoot/helpers/install/Install-VisualStudioCode.ps1"
Import-Function -Path "$sRoot/helpers/install/Install-VisualStudioCodeExtensions.ps1"
#----------------------------------------------------------------------------------------------------------------------


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Other common tools
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::DevCore::git')             { Install-ChocoApp git.install -RefreshEnv }
if(Confirm-Install 'Boxstarter::DevCore::git')             { Install-ChocoApp tortoisegit }
if(Confirm-Install 'Boxstarter::DevCore::gcm')             { Install-ChocoApp git-credential-manager-for-windows }
if(Confirm-Install 'Boxstarter::DevCore::cmder')           { Install-ChocoApp cmder }
if(Confirm-Install 'Boxstarter::DevCore::wget')            { Install-ChocoApp wget }
if(Confirm-Install 'Boxstarter::DevCore::curl')            { Install-ChocoApp curl }
if(Confirm-Install 'Boxstarter::DevCore::python3')         { Install-ChocoApp python3 }
if(Confirm-Install 'Boxstarter::DevCore::github-desktop')  { Install-ChocoApp github-desktop }
if(Confirm-Install 'Boxstarter::DevCore::sysinternals')    { Install-ChocoApp sysinternals }

# Config CMDER
if(Confirm-Install 'Boxstarter::Tools::cmder')
{
    # Add cmder to ENV:PATH & right click at every folder
    Invoke-Expression -Command '$env:Path += ";C:\tools\Cmder"'
    Invoke-Expression -command "Cmder.exe /REGISTER ALL"
    #Pin-TaskBarItem "c:\tools\cmder\cmder.exe"
}

#--- Enable Telnet
if(Confirm-Install 'Boxstarter::DevCore::TelnetClient')    { Install-ChocoWindowsFeature 'TelnetClient' }

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Visual studio code : https://code.visualstudio.com/
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::DevCore::VisualStudioCode') {
    Install-VisualStudioCode
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Visual studio code extensions : https://marketplace.visualstudio.com/VSCode
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if($(Confirm-Install 'Boxstarter::DevCore::VisualStudioCodeExtensions') -And $(Confirm-Install 'Boxstarter::DevCore::VisualStudioCode')) {
    # Extensions to add to Visual studio code :
    [String[]]$extensions = @()
    $extensions += 'Shan.code-settings-sync'
    $extensions += 'ms-vscode.PowerShell'
    $extensions += 'odubuc.mysql-inline-decorator'
    $extensions += 'ms-python.python'
    $extensions += 'MS-CEINTL.vscode-language-pack-de'
    $extensions += 'liximomo.sftp'
    $extensions += 'abusaidm.html-snippets'
    # Get user define extensions
    $userExtensions = Get-Option 'Boxstarter::DevCore::VisualStudioCodeExtensions::Extensions'
    if(-not($null -eq $userExtensions)) { $extensions += $userExtensions.split(';, ').Trim() }

    Install-VisualStudioCodeExtensions $extensions
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Install fonts
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::DevCore::fonts')
{
    if(Confirm-Install 'Boxstarter::DevCore::dejavufonts')      { Install-ChocoApp 'dejavufonts' }
    #if(Confirm-Install 'Boxstarter::DevCore::firacode')         { Install-ChocoApp 'firacode' } # build error
    if(Confirm-Install 'Boxstarter::DevCore::hackfont')         { Install-ChocoApp 'hackfont' }
    if(Confirm-Install 'Boxstarter::DevCore::robotofonts')      { Install-ChocoApp 'robotofonts' }
    #if(Confirm-Install 'Boxstarter::DevCore::sourcecodepro')    { Install-ChocoApp 'sourcecodepro' } # build error
    #if(Confirm-Install 'Boxstarter::DevCore::cascadiacode')     { Install-ChocoApp 'cascadiacode' } # build error
}