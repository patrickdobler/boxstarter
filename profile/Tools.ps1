#--- Install tools


# Browser
if(Confirm-Install 'Boxstarter::Tools::googlechrome')    { Install-ChocoApp googlechrome -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::opera')           { Install-ChocoApp opera -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::edge')            { Install-ChocoApp microsoft-edge -NoChecksums $true -NoUpgrade }

# Office
if(Confirm-Install 'Boxstarter::Tools::citrix')           { Install-ChocoApp citrix-workspace }
#if(Confirm-Install 'Boxstarter::Tools::grammarly')        { Install-ChocoApp grammarly }
if(Confirm-Install 'Boxstarter::Tools::office365proplus') { Install-ChocoApp office365proplus -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::notion')           { Install-ChocoApp notion -NoUpgrade }

# System Utilities
if(Confirm-Install 'Boxstarter::Tools::7zip')             { Install-ChocoApp 7zip.install }
if(Confirm-Install 'Boxstarter::Tools::adobereader')      { Install-ChocoApp adobereader }
if(Confirm-Install 'Boxstarter::Tools::adobereader')      { Install-ChocoApp adobereader-update }
if(Confirm-Install 'Boxstarter::Tools::adobedigitaleditions') { Install-ChocoApp adobedigitaleditions }
if(Confirm-Install 'Boxstarter::Tools::flashplayer')      { Install-ChocoApp flashplayer }
if(Confirm-Install 'Boxstarter::Tools::notepadplusplus')  { Install-ChocoApp notepadplusplus.install }
if(Confirm-Install 'Boxstarter::Tools::google-backup')    { Install-ChocoApp google-backup-and-sync -NoChecksums $true -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::filezilla')        { Install-ChocoApp filezilla }
if(Confirm-Install 'Boxstarter::Tools::jre8')             { Install-ChocoApp jre8 }
if(Confirm-Install 'Boxstarter::Tools::keepass')          { Install-ChocoApp keepass.install }
if(Confirm-Install 'Boxstarter::Tools::treesizefree')     { Install-ChocoApp treesizefree }
if(Confirm-Install 'Boxstarter::Tools::putty')            { Install-ChocoApp putty.install }
#if(Confirm-Install 'Boxstarter::Tools::samsung-magician') { Install-ChocoApp samsung-magician -NoChecksums $true } # package error
#if(Confirm-Install 'Boxstarter::Tools::sandboxie')        { Install-ChocoApp sandboxie.install } # download error
if(Confirm-Install 'Boxstarter::Tools::teamviewer')       { Install-ChocoApp teamviewer }
if(Confirm-Install 'Boxstarter::Tools::totalcommander')   { Install-ChocoApp totalcommander }
if(Confirm-Install 'Boxstarter::Tools::winrar')           { Install-ChocoApp winrar }
if(Confirm-Install 'Boxstarter::Tools::winscp')           { Install-ChocoApp winscp.install }
if(Confirm-Install 'Boxstarter::Tools::greenshot')        { Install-ChocoApp greenshot }
if(Confirm-Install 'Boxstarter::Tools::picpick')          { Install-ChocoApp picpick.portable }

# Messenger
if(Confirm-Install 'Boxstarter::Tools::discord')          { Install-ChocoApp discord.install -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::whatsapp')         { Install-ChocoApp whatsapp -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::slack')            { Install-ChocoApp slack -NoUpgrade }
if(Confirm-Install 'Boxstarter::Tools::telegram')         { Install-ChocoApp telegram -NoUpgrade }

# Images
if(Confirm-Install 'Boxstarter::Tools::imageglass')       { Install-ChocoApp imageglass }

# Multi Media
if(Confirm-Install 'Boxstarter::Tools::k-litecodec')      { Install-ChocoApp k-litecodecpackfull }
if(Confirm-Install 'Boxstarter::Tools::nzbget')           { Install-ChocoApp nzbget }
if(Confirm-Install 'Boxstarter::Tools::vlc')              { Install-ChocoApp vlc }

# Drivers
if(Confirm-Install 'Boxstarter::Tools::nvidiadriver')     { Install-ChocoApp nvidia-display-driver -NoUpgrade }

# Auto Update Choco Packages

if(Confirm-Install 'Boxstarter::Tools::chocoupgrade')     { Install-ChocoApp choco-upgrade-all-at -Params '"/WEEKLY:yes /DAY:SAT /TIME:01:00"' }

<# Does not work in current 1909 german build
#--- Pin to Taskbar
if(Confirm-Install 'Boxstarter::Tools::googlechrome')     { Pin-TaskBarItem "${Env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe" }
if(Confirm-Install 'Boxstarter::Tools::opera')            { Pin-TaskBarItem "${Env:ProgramFiles}\Opera\launcher.exe" }
if(Confirm-Install 'Boxstarter::Tools::nzbget')           { Pin-TaskBarItem "${Env:ProgramFiles}\NZBGet\nzbget.exe" }
if(Confirm-Install 'Boxstarter::Tools::totalcommander')   { Pin-TaskBarItem "${Env:ProgramFiles}\totalcmd\TOTALCMD64.EXE" }
if(Confirm-Install 'Boxstarter::Tools::notepadplusplus')  { Pin-TaskBarItem "${Env:ProgramFiles(x86)}\Notepad++\notepad++.exe" }
if(Confirm-Install 'Boxstarter::Tools::whatsapp')         { Pin-TaskBarItem "${env:UserProfile}\AppData\Local\WhatsApp\WhatsApp.exe" }
#>