
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Enable Hyper-V
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::HyperV::HyperVAll')                            { Install-ChocoWindowsFeature Microsoft-Hyper-V-All }
if(Confirm-Install 'Boxstarter::HyperV::Sandbox')                              { Install-ChocoWindowsFeature Containers-DisposableClientVM }
#if(Confirm-Install 'Boxstarter::HyperV::Containers')                           { Install-ChocoWindowsFeature Containers }
#if(Confirm-Install 'Boxstarter::HyperV::Microsoft-Windows-Subsystem-Linux')    { Install-ChocoWindowsFeature Microsoft-Windows-Subsystem-Linux }
#if(Confirm-Install 'Boxstarter::HyperV::VirtualMachinePlatform')               { Install-ChocoWindowsFeature VirtualMachinePlatform }

if(Confirm-Install 'Boxstarter::HyperV::HyperVAll')
{
    if(Confirm-Install 'Boxstarter::HyperV::HyperVAll::Defender')
    {
        #Adding Recommended antivirus exclusions for Hyper-V hosts - Source  "https://support.microsoft.com/en-gb/help/3105657/recommended-antivirus-exclusions-for-hyper-v-hosts" 

        Write-Host "Adding Recommended Hyper-V Anti-Virus Exclusions" -ForegroundColor Green 
        Write-Host "Excluding Recomended File Extensions" -ForegroundColor Yellow 
        Add-MpPreference -ExclusionExtension ISO, VHD, VHDX, AVHD, AVHDX, VSV, ISO 
        
        Write-Host "Excluding Recommended Folders used by Hyper-V" -ForegroundColor Yellow 
        Add-MpPreference -ExclusionPath "C:\ProgramData\Microsoft\Windows\Hyper-V" 
        #Add-MpPreference -ExclusionPath "C:\Users\Public\Documents\Hyper-V\Virtual Hard Disks" 
        #Add-MpPreference -ExclusionPath "C:\ProgramData\Microsoft\Windows\Hyper-V\Snapshots" 
        #Add-MpPreference -ExclusionPath "C:\ClusterStorage"
        Add-MpPreference -ExclusionPath "D:\VM"
        
        Add-MpPreference -ExclusionProcess "C:\Windows\system32\vmms.exe" 
        Add-MpPreference -ExclusionProcess "C:\Windows\system32\vmwp.exe" 
        Add-MpPreference -ExclusionProcess "C:\Windows\system32\vmsp.exe" 
    }
    
    #set high performance power settings
    Invoke-Expression -command "POWERCFG.EXE /S SCHEME_MIN"
    
    Set-VMHost -EnableEnhancedSessionMode:$true
}