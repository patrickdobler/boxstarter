#--- Install tools


# Browser
if(Confirm-Install 'Boxstarter::ToolsBasic::googlechrome')    { Install-ChocoApp googlechrome -NoUpgrade }

# Office
if(Confirm-Install 'Boxstarter::ToolsBasic::office365proplus') { Install-ChocoApp office365proplus -NoUpgrade }

# System Utilities
if(Confirm-Install 'Boxstarter::ToolsBasic::7zip')             { Install-ChocoApp 7zip.install }
if(Confirm-Install 'Boxstarter::ToolsBasic::adobereader')      { Install-ChocoApp adobereader }
if(Confirm-Install 'Boxstarter::ToolsBasic::adobereader')      { Install-ChocoApp adobereader-update }
if(Confirm-Install 'Boxstarter::ToolsBasic::flashplayer')      { Install-ChocoApp flashplayer }
if(Confirm-Install 'Boxstarter::ToolsBasic::notepadplusplus')  { Install-ChocoApp notepadplusplus.install }
if(Confirm-Install 'Boxstarter::ToolsBasic::google-backup')    { Install-ChocoApp google-backup-and-sync -NoChecksums $true -NoUpgrade }
if(Confirm-Install 'Boxstarter::ToolsBasic::jre8')             { Install-ChocoApp jre8 }
if(Confirm-Install 'Boxstarter::ToolsBasic::keepass')          { Install-ChocoApp keepass.install }
if(Confirm-Install 'Boxstarter::ToolsBasic::greenshot')        { Install-ChocoApp greenshot }
if(Confirm-Install 'Boxstarter::ToolsBasic::picpick')          { Install-ChocoApp picpick.portable }

# Messenger
if(Confirm-Install 'Boxstarter::ToolsBasic::whatsapp')         { Install-ChocoApp whatsapp -NoUpgrade }

# Images
if(Confirm-Install 'Boxstarter::ToolsBasic::imageglass')       { Install-ChocoApp imageglass }

# Multi Media
if(Confirm-Install 'Boxstarter::ToolsBasic::k-litecodec')      { Install-ChocoApp k-litecodecpackfull }
if(Confirm-Install 'Boxstarter::ToolsBasic::vlc')              { Install-ChocoApp vlc }

# Auto Update Choco Packages

if(Confirm-Install 'Boxstarter::ToolsBasic::chocoupgrade')     { Install-ChocoApp choco-upgrade-all-at -Params '"/WEEKLY:yes /DAY:SAT /TIME:01:00"' }