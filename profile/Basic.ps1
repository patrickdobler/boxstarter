# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#   Basic profile:
#
#   This is a Windows settings script for basic users
#   It contains some options for pc and for notebooks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


#--- [Import] ---------------------------------------------------------------------------------------------------------
Import-Function -Path "$sRoot/helpers/tweak/Remove-WindowsApp.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Remove-OneDrive.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/Win10.ps1"
Import-Function -Path "$sRoot/helpers/tweak/SetDefaultKeyboardCH.ps1"
#----------------------------------------------------------------------------------------------------------------------

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Keyboard settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 if(Confirm-Install 'Boxstarter::Basic::Keyboard')
 {
     Write-BoxstarterMessage "Changing Keyboard settings..."
     SetDefaultKeyboardCH
 }

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Privacy settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Privacy')
{
    Write-BoxstarterMessage "Updating Privacy settings..."

    ### Privacy Tweaks ###
	DisableTelemetry                # EnableTelemetry
	DisableCortana                  # EnableCortana
	DisableWiFiSense                # EnableWiFiSense
	# DisableSmartScreen            # EnableSmartScreen
	DisableWebSearch                # EnableWebSearch
	DisableAppSuggestions           # EnableAppSuggestions
	DisableActivityHistory          # EnableActivityHistory
														
	# DisableSensors                # EnableSensors
	DisableLocation                 # EnableLocation
	DisableMapUpdates               # EnableMapUpdates
	DisableFeedback                 # EnableFeedback
	DisableTailoredExperiences      # EnableTailoredExperiences
	DisableAdvertisingID            # EnableAdvertisingID
	DisableWebLangList              # EnableWebLangList
												
	# DisableBiometrics             # EnableBiometrics
	DisableCamera                   # EnableCamera
	# DisableMicrophone             # EnableMicrophone
	DisableErrorReporting           # EnableErrorReporting
	SetP2PUpdateLocal             	# SetP2PUpdateInternet          # SetP2PUpdateDisable
	DisableDiagTrack                # EnableDiagTrack
	DisableWAPPush                  # EnableWAPPush
	# EnableClearRecentFiles        # DisableClearRecentFiles
	# DisableRecentFiles            # EnableRecentFiles
}

if(Confirm-Install 'Boxstarter::Basic::PC::Privacy')
{
    Write-BoxstarterMessage "Updating Privacy settings..."

    DisableSensors                  # EnableSensors
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Security  settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Security')
{
    Write-BoxstarterMessage "Updating Security settings..."

	### Security Tweaks ###
	# SetUACLow                     # SetUACHigh
	# EnableSharingMappedDrives     # DisableSharingMappedDrives
	DisableAdminShares              # EnableAdminShares
	# DisableFirewall               # EnableFirewall
	# HideDefenderTrayIcon          # ShowDefenderTrayIcon
	# DisableDefender               # EnableDefender
	# DisableDefenderCloud          # EnableDefenderCloud
	# EnableCtrldFolderAccess       # DisableCtrldFolderAccess
	# EnableCIMemoryIntegrity       # DisableCIMemoryIntegrity
	# EnableDefenderAppGuard        # DisableDefenderAppGuard
	HideAccountProtectionWarn       # ShowAccountProtectionWarn
	# DisableDownloadBlocking       # EnableDownloadBlocking
	# DisableScriptHost             # EnableScriptHost
	# EnableDotNetStrongCrypto      # DisableDotNetStrongCrypto
	# EnableMeltdownCompatFlag      # DisableMeltdownCompatFlag
	# EnableF8BootMenu              # DisableF8BootMenu
	# DisableBootRecovery           # EnableBootRecovery
	# DisableRecoveryAndReset       # EnableRecoveryAndReset
	# SetDEPOptOut                  # SetDEPOptIn
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Network settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Network')
{
    Write-BoxstarterMessage "Updating Network settings..."

    ### Network Tweaks ###
	SetCurrentNetworkPrivate        # SetCurrentNetworkPublic
	# SetUnknownNetworksPrivate     # SetUnknownNetworksPublic
	# DisableNetDevicesAutoInst     # EnableNetDevicesAutoInst
	# DisableHomeGroups             # EnableHomeGroups
	# DisableSMB1                   # EnableSMB1
	# DisableSMBServer              # EnableSMBServer
	# DisableNetBIOS                # EnableNetBIOS
	# DisableLLMNR                  # EnableLLMNR
	# DisableLLDP                   # EnableLLDP
	# DisableLLTD                   # EnableLLTD
	# DisableMSNetClient            # EnableMSNetClient
	# DisableQoS                    # EnableQoS
	# DisableIPv4                   # EnableIPv4
	# DisableIPv6                   # EnableIPv6
	# DisableNCSIProbe              # EnableNCSIProbe
	# DisableConnectionSharing      # EnableConnectionSharing
	DisableRemoteAssistance         # EnableRemoteAssistance
	# EnableRemoteDesktop           # DisableRemoteDesktop

}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Service settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Service')
{
    Write-BoxstarterMessage "Updating Service settings..."

    ### Service Tweaks ###
	# DisableUpdateMSRT             # EnableUpdateMSRT
	# DisableUpdateDriver           # EnableUpdateDriver
	EnableUpdateMSProducts          # DisableUpdateMSProducts
	# DisableUpdateAutoDownload     # EnableUpdateAutoDownload
	DisableUpdateRestart            # EnableUpdateRestart
	DisableMaintenanceWakeUp        # EnableMaintenanceWakeUp
	# DisableAutoRestartSignOn      # EnableAutoRestartSignOn
	DisableSharedExperiences        # EnableSharedExperiences
	# EnableClipboardHistory        # DisableClipboardHistory
	DisableAutoplay                 # EnableAutoplay
	DisableAutorun                  # EnableAutorun
	# DisableRestorePoints          # EnableRestorePoints
	# EnableStorageSense            # DisableStorageSense
	DisableDefragmentation        # EnableDefragmentation
	# DisableSuperfetch             # EnableSuperfetch
	# DisableIndexing               # EnableIndexing
													
	# DisableRecycleBin             # EnableRecycleBin
	EnableNTFSLongPaths             # DisableNTFSLongPaths
	# DisableNTFSLastAccess         # EnableNTFSLastAccess
	# SetBIOSTimeUTC                # SetBIOSTimeLocal
	# EnableHibernation             # DisableHibernation
	# DisableSleepButton            # EnableSleepButton
	# DisableSleepTimeout           # EnableSleepTimeout
	# DisableFastStartup            # EnableFastStartup
	# DisableAutoRebootOnCrash      # EnableAutoRebootOnCrash
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    UI settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::UI')
{
    Write-BoxstarterMessage "Updating UI settings..."

    ### UI Tweaks ###
	# DisableActionCenter             # EnableActionCenter
	# DisableLockScreen               # EnableLockScreen
	# DisableLockScreenRS1          # EnableLockScreenRS1
	HideNetworkFromLockScreen       # ShowNetworkOnLockScreen
	# HideShutdownFromLockScreen      # ShowShutdownOnLockScreen
	# DisableLockScreenBlur           # EnableLockScreenBlur
	DisableAeroShake              # EnableAeroShake
	DisableAccessibilityKeys        # EnableAccessibilityKeys
	ShowTaskManagerDetails          # HideTaskManagerDetails
	ShowFileOperationsDetails       # HideFileOperationsDetails
	# EnableFileDeleteConfirm       # DisableFileDeleteConfirm
	# HideTaskbarSearch               # ShowTaskbarSearchIcon         # ShowTaskbarSearchBox
	# HideTaskView                    # ShowTaskView
	# ShowSmallTaskbarIcons           # ShowLargeTaskbarIcons
	# SetTaskbarCombineWhenFull       # SetTaskbarCombineNever        # SetTaskbarCombineAlways
	HideTaskbarPeopleIcon           # ShowTaskbarPeopleIcon
	# ShowTrayIcons                   # HideTrayIcons
	# ShowSecondsInTaskbar          # HideSecondsFromTaskbar
	DisableSearchAppInStore         # EnableSearchAppInStore
	# DisableNewAppPrompt             # EnableNewAppPrompt
	# HideRecentlyAddedApps         # ShowRecentlyAddedApps
	# HideMostUsedApps              # ShowMostUsedApps
	# SetWinXMenuPowerShell         # SetWinXMenuCmd
	# SetControlPanelSmallIcons     # SetControlPanelLargeIcons     # SetControlPanelCategories
	DisableShortcutInName           # EnableShortcutInName
	# HideShortcutArrow             # ShowShortcutArrow
	# SetVisualFXPerformance          # SetVisualFXAppearance
	# EnableTitleBarColor           # DisableTitleBarColor
	# SetAppsDarkMode               # SetAppsLightMode
	# SetSystemLightMode            # SetSystemDarkMode
	# AddENKeyboard                 # RemoveENKeyboard
	# EnableNumlock                 # DisableNumlock
	# DisableEnhPointerPrecision    # EnableEnhPointerPrecision
	SetSoundSchemeNone            # SetSoundSchemeDefault
	# DisableStartupSound           # EnableStartupSound
	# DisableChangingSoundScheme    # EnableChangingSoundScheme
	# EnableVerboseStatus           # DisableVerboseStatus
	DisableF1HelpKey                # EnableF1HelpKey
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    UI preferences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::UI-Preferences')
{
    Write-BoxstarterMessage "Updating UI preferences..."

    ### Explorer UI Tweaks ###
	# ShowExplorerTitleFullPath     # HideExplorerTitleFullPath
	ShowKnownExtensions             # HideKnownExtensions
	# ShowHiddenFiles                 # HideHiddenFiles
	# ShowSuperHiddenFiles          # HideSuperHiddenFiles
	# ShowEmptyDrives               # HideEmptyDrives
	# ShowFolderMergeConflicts      # HideFolderMergeConflicts
	# EnableNavPaneExpand             # DisableNavPaneExpand
	# ShowNavPaneAllFolders         # HideNavPaneAllFolders
	# ShowNavPaneLibraries          # HideNavPaneLibraries
	# EnableFldrSeparateProcess     # DisableFldrSeparateProcess
	# EnableRestoreFldrWindows      # DisableRestoreFldrWindows
	# ShowEncCompFilesColor         # HideEncCompFilesColor
	DisableSharingWizard          # EnableSharingWizard
	# HideSelectCheckboxes          # ShowSelectCheckboxes
	HideSyncNotifications           # ShowSyncNotifications
	# HideRecentShortcuts             # ShowRecentShortcuts
	SetExplorerThisPC               # SetExplorerQuickAccess
	# HideQuickAccess                 # ShowQuickAccess
	# HideRecycleBinFromDesktop     # ShowRecycleBinOnDesktop
	# ShowThisPCOnDesktop             # HideThisPCFromDesktop
	ShowUserFolderOnDesktop       # HideUserFolderFromDesktop
	# ShowControlPanelOnDesktop     # HideControlPanelFromDesktop
	# ShowNetworkOnDesktop          # HideNetworkFromDesktop
	# HideDesktopIcons              # ShowDesktopIcons
	# ShowBuildNumberOnDesktop      # HideBuildNumberFromDesktop
	HideDesktopFromThisPC           # ShowDesktopInThisPC
	# HideDesktopFromExplorer       # ShowDesktopInExplorer
	HideDocumentsFromThisPC         # ShowDocumentsInThisPC
	# HideDocumentsFromExplorer     # ShowDocumentsInExplorer
	HideDownloadsFromThisPC         # ShowDownloadsInThisPC
	# HideDownloadsFromExplorer     # ShowDownloadsInExplorer
	HideMusicFromThisPC             # ShowMusicInThisPC
	# HideMusicFromExplorer         # ShowMusicInExplorer
	HidePicturesFromThisPC          # ShowPicturesInThisPC
	# HidePicturesFromExplorer      # ShowPicturesInExplorer
	HideVideosFromThisPC            # ShowVideosInThisPC
	# HideVideosFromExplorer        # ShowVideosInExplorer
	Hide3DObjectsFromThisPC         # Show3DObjectsInThisPC
	Hide3DObjectsFromExplorer     # Show3DObjectsInExplorer
	# HideNetworkFromExplorer       # ShowNetworkInExplorer
	HideIncludeInLibraryMenu      # ShowIncludeInLibraryMenu
	HideGiveAccessToMenu          # ShowGiveAccessToMenu
	HideShareMenu                 # ShowShareMenu
	# DisableThumbnails             # EnableThumbnails
	# DisableThumbnailCache           # EnableThumbnailCache
	# DisableThumbsDBOnNetwork        # EnableThumbsDBOnNetwork
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Application
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Application')
{
    Write-BoxstarterMessage "Updating Application preferences..."

    ### Application Tweaks ###
	# DisableOneDrive                 # EnableOneDrive
	# UninstallOneDrive               # InstallOneDrive
	# UninstallMsftBloat              # InstallMsftBloat
	UninstallThirdPartyBloat        # InstallThirdPartyBloat
	# UninstallWindowsStore         # InstallWindowsStore
	# DisableXboxFeatures             # EnableXboxFeatures
	# DisableFullscreenOptims       # EnableFullscreenOptims
	# DisableAdobeFlash               # EnableAdobeFlash
	DisableEdgePreload              # EnableEdgePreload
	DisableEdgeShortcutCreation     # EnableEdgeShortcutCreation
	DisableIEFirstRun               # EnableIEFirstRun
	DisableFirstLogonAnimation      # EnableFirstLogonAnimation
	DisableMediaSharing             # EnableMediaSharing
	# DisableMediaOnlineAccess      # EnableMediaOnlineAccess
	# EnableDeveloperMode           # DisableDeveloperMode
	# UninstallMediaPlayer          # InstallMediaPlayer
	# UninstallInternetExplorer     # InstallInternetExplorer
	UninstallWorkFolders          # InstallWorkFolders
	# UninstallHelloFace            # InstallHelloFace
	# UninstallMathRecognizer       # InstallMathRecognizer
	# UninstallPowerShellV2         # InstallPowerShellV2
	# UninstallPowerShellISE        # InstallPowerShellISE
	# InstallLinuxSubsystem         # UninstallLinuxSubsystem
	# InstallHyperV                 # UninstallHyperV
	# UninstallSSHClient            # InstallSSHClient
	# InstallSSHServer              # UninstallSSHServer
	# InstallTelnetClient           # UninstallTelnetClient
	# InstallNET23                  # UninstallNET23
	SetPhotoViewerAssociation       # UnsetPhotoViewerAssociation
	AddPhotoViewerOpenWith          # RemovePhotoViewerOpenWith
	# UninstallPDFPrinter           # InstallPDFPrinter
	UninstallXPSPrinter             # InstallXPSPrinter
	RemoveFaxPrinter                # AddFaxPrinter
	# UninstallFaxAndScan           # InstallFaxAndScan
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Unpinning
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Basic::Unpinning')
{
    Write-BoxstarterMessage "Unpinning tiles and/or icons..."

    UnpinStartMenuTiles
    # UnpinTaskbarIcons
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Default Windows apps
#
# Get-AppxPackage -AllUsers | Select Name, PackageFullName | Sort Name
# Get-AppxProvisionedPackage -Online | Select DisplayName, PackageName | Sort DisplayName
#
# https://docs.microsoft.com/en-us/windows/application-management/remove-provisioned-apps-during-update
# https://gist.github.com/alirobe/7f3b34ad89a159e6daa1
# https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.ps1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Set-DefaultOption 'Boxstarter::Basic::Remove-Apps'                                      'true'

Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.3DBuilder'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Appconnector'                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingFinance'                    'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingFoodAndDrink'               'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingHealthAndFitness'           'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingMaps'                       'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingNews'                       'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingSports'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingTranslator'                 'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingTravel'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.BingWeather'                    'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.CommsPhone'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.ConnectivityStore'              'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.DesktopAppInstaller'            'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.FreshPaint'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.GetHelp'                        'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Getstarted'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.HelpAndTips'                    'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Media.PlayReadyClient.2'        'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Messaging'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Microsoft3DViewer'              'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MicrosoftOfficeHub'             'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MicrosoftPowerBIForWindows'     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MicrosoftSolitaireCollection'   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MicrosoftStickyNotes'           'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MinecraftUWP'                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MixedReality.Portal'            'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Microsoft.MoCamera'             'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.MSPaint'                        'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.NetworkSpeedTest'               'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.OfficeLens'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Office.OneNote'                 'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Office.Sway'                    'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.OneConnect'                     'true'
# Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.OneDrive'                     'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.People'                         'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Print3D'                        'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Reader'                         'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.RemoteDesktop'                  'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.ScreenSketch'                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.SkypeApp'                       'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.StorePurchaseApp'               'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Todos'                          'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Wallet'                         'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WebMediaExtensions'             'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Whiteboard'                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Windows.Photos'                 'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Windows.CapturePicker'          'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Windows.CloudExperienceHost'    'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Windows.PeopleExperienceHost'   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsAlarms'                  'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsCalculator'              'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsCamera'                  'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::microsoft.windowscommunicationsapps'      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsFeedbackHub'             'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsMaps'                    'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsPhone'                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsReadingList'             'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Microsoft.WindowsScan'          'false'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsSoundRecorder'           'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WindowsStore'                   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.XboxApp'                        'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.XboxGameOverlay'                'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.XboxGamingOverlay'              'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.XboxIdentityProvider'           'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.XboxSpeechToTextOverlay'        'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Xbox.TCUI'                      'false' # Don't remove
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WinJS.1.0'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.WinJS.2.0'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.YourPhone'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.ZuneMusic'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.ZuneVideo'                      'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Microsoft.Advertising.Xaml'               'false' # Dependency for microsoft.windowscommunicationsapps, Microsoft.BingWeather

Set-DefaultOption 'Boxstarter::Basic::Remove::Autodesk'                                 'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::BubbleWitch'                              'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::CandyCrush'                               'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Dell'                                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Facebook'                                 'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Keeper'                                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::MarchofEmpires'                           'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::McAfee'                                   'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Minecraft'                                'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Netflix'                                  'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Plex'                                     'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Solitaire'                                'true'
Set-DefaultOption 'Boxstarter::Basic::Remove::Twitter'                                  'true'

[String[]]$apps = @()
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.3DBuilder')                     { $apps += 'Microsoft.3DBuilder' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Appconnector')                  { $apps += 'Microsoft.Appconnector' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingFinance')                   { $apps += 'Microsoft.BingFinance' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingFoodAndDrink')              { $apps += 'Microsoft.BingFoodAndDrink' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingHealthAndFitness')          { $apps += 'Microsoft.BingHealthAndFitness' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingMaps')                      { $apps += 'Microsoft.BingMaps' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingNews')                      { $apps += 'Microsoft.BingNews' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingSports')                    { $apps += 'Microsoft.BingSports' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingTranslator')                { $apps += 'Microsoft.BingTranslator' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingTravel')                    { $apps += 'Microsoft.BingTravel' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.BingWeather')                   { $apps += 'Microsoft.BingWeather' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.CommsPhone')                    { $apps += 'Microsoft.CommsPhone' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.ConnectivityStore')             { $apps += 'Microsoft.ConnectivityStore' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.DesktopAppInstaller')           { $apps += 'Microsoft.DesktopAppInstaller' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.FreshPaint')                    { $apps += 'Microsoft.FreshPaint' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.GetHelp')                       { $apps += 'Microsoft.GetHelp' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Getstarted')                    { $apps += 'Microsoft.Getstarted' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.HelpAndTips')                   { $apps += 'Microsoft.HelpAndTips' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Media.PlayReadyClient.2')       { $apps += 'Microsoft.Media.PlayReadyClient.2' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Messaging')                     { $apps += 'Microsoft.Messaging' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Microsoft3DViewer')             { $apps += 'Microsoft.Microsoft3DViewer' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MicrosoftOfficeHub')            { $apps += 'Microsoft.MicrosoftOfficeHub' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MicrosoftPowerBIForWindows')    { $apps += 'Microsoft.MicrosoftPowerBIForWindows' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MicrosoftSolitaireCollection')  { $apps += 'Microsoft.MicrosoftSolitaireCollection' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MicrosoftStickyNotes')          { $apps += 'Microsoft.MicrosoftStickyNotes' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MinecraftUWP')                  { $apps += 'Microsoft.MinecraftUWP' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MixedReality.Portal')           { $apps += 'Microsoft.MixedReality.Portal' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Microsoft.MoCamera' )           { $apps += 'Microsoft.Microsoft.MoCamera' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MSPaint')                       { $apps += 'Microsoft.MSPaint' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.NetworkSpeedTest')              { $apps += 'Microsoft.NetworkSpeedTest' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.OfficeLens')                    { $apps += 'Microsoft.OfficeLens' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Office.OneNote')                { $apps += 'Microsoft.Office.OneNote' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Office.Sway')                   { $apps += 'Microsoft.Office.Sway' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.OneConnect')                    { $apps += 'Microsoft.OneConnect' }
# if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.OneDrive')                    { $apps += 'Microsoft.OneDrive' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.People')                        { $apps += 'Microsoft.People' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Print3D')                       { $apps += 'Microsoft.Print3D' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Reader')                        { $apps += 'Microsoft.Reader' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.RemoteDesktop')                 { $apps += 'Microsoft.RemoteDesktop' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.ScreenSketch')                  { $apps += 'Microsoft.ScreenSketch' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.SkypeApp')                      { $apps += 'Microsoft.SkypeApp' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.StorePurchaseApp')              { $apps += 'Microsoft.StorePurchaseApp' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Todos')                         { $apps += 'Microsoft.Todos' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Wallet')                        { $apps += 'Microsoft.Wallet' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WebMediaExtensions')            { $apps += 'Microsoft.WebMediaExtensions' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Whiteboard')                    { $apps += 'Microsoft.Whiteboard' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Windows.Photos')                { $apps += 'Microsoft.Windows.Photos' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Windows.CapturePicker')         { $apps += 'Microsoft.Windows.CapturePicker' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Windows.CloudExperienceHost')   { $apps += 'Microsoft.Windows.CloudExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Windows.PeopleExperienceHost')  { $apps += 'Microsoft.Windows.PeopleExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsAlarms')                 { $apps += 'Microsoft.WindowsAlarms' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsCalculator')             { $apps += 'Microsoft.WindowsCalculator' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsCamera')                 { $apps += 'Microsoft.WindowsCamera' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::microsoft.windowscommunicationsapps')     { $apps += 'microsoft.windowscommunicationsapps' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsFeedbackHub')            { $apps += 'Microsoft.WindowsFeedbackHub' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsMaps')                   { $apps += 'Microsoft.WindowsMaps' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsPhone')                  { $apps += 'Microsoft.WindowsPhone' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsReadingList')            { $apps += 'Microsoft.WindowsReadingList' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Microsoft.WindowsScan')         { $apps += 'Microsoft.Microsoft.WindowsScan' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsSoundRecorder')          { $apps += 'Microsoft.WindowsSoundRecorder' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WindowsStore')                  { $apps += 'Microsoft.WindowsStore' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxApp')                       { $apps += 'Microsoft.XboxApp' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxGameOverlay')               { $apps += 'Microsoft.XboxGameOverlay' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxGamingOverlay')             { $apps += 'Microsoft.XboxGamingOverlay' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxIdentityProvider')          { $apps += 'Microsoft.XboxIdentityProvider' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxSpeechToTextOverlay')       { $apps += 'Microsoft.XboxSpeechToTextOverlay' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Xbox.TCUI')                     { $apps += 'Microsoft.Xbox.TCUI' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WinJS.1.0')                     { $apps += 'Microsoft.WinJS.1.0' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.WinJS.2.0')                     { $apps += 'Microsoft.WinJS.2.0' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.YourPhone')                     { $apps += 'Microsoft.YourPhone' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.ZuneMusic')                     { $apps += 'Microsoft.ZuneMusic' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.ZuneVideo')                     { $apps += 'Microsoft.ZuneVideo' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.Advertising.Xaml')              { $apps += 'Microsoft.Advertising.Xaml' }

if(Get-OptionBool 'Boxstarter::Basic::Remove::Autodesk')                                { $apps += '*Autodesk*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::BubbleWitch')                             { $apps += '*BubbleWitch*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::CandyCrush')                              { $apps += '*CandyCrush*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Dell')                                    { $apps += '*Dell*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Facebook')                                { $apps += '*Facebook*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Keeper')                                  { $apps += '*Keeper*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::MarchofEmpires')                          { $apps += '*MarchofEmpires*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::McAfee')                                  { $apps += '*McAfee*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Minecraft')                               { $apps += '*Minecraft*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Netflix')                                 { $apps += '*Netflix*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Plex')                                    { $apps += '*Plex*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Solitaire')                               { $apps += '*Solitaire*' }
if(Get-OptionBool 'Boxstarter::Basic::Remove::Twitter')                                 { $apps += '*Twitter*' }

if(Get-OptionBool 'Boxstarter::Basic::Remove-Apps') {

    Write-BoxstarterMessage "Removing Windows apps..."

    # Prevents "Suggested Applications" returning
    Set-Registry -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Cloud Content' -Name 'DisableWindowsConsumerFeatures' -Type 'DWord' -Value 1

    # Remove default apps
    Remove-WindowsApp $apps

    # remove oneDrive
    if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.OneDrive') {
        Remove-OneDrive
    }

    # remove paint 3D
    if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.MSPaint') {
        # How to remove 'Edit with Paint 3D' from context menu
        Remove-Registry 'HKEY_LOCAL_MACHINE\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell'
    }

    # Xbox
    if(Get-OptionBool 'Boxstarter::Basic::Remove::Microsoft.XboxApp') {
		Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\GameBar' -Name 'AutoGameModeEnabled' -Type 'DWord' -Value 0
        Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Type 'DWord' -Value 0
        Set-Registry -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -Name "AllowGameDVR" -Type 'DWord' -Value 0
        Set-Registry -Path 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Type 'DWord' -Value 0
    }

    # remove McAfee Security App
    if(Get-OptionBool 'Boxstarter::Basic::Remove::McAfee') {
        $mcafee = Get-ChildItem 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall' | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "McAfee Security" } | Select-Object UninstallString
        if ($mcafee) {
            $mcafee = $mcafee.UninstallString -Replace 'C:\Program Files\McAfee\MSC\mcuihost.exe',''
            Start-Process "C:\Program Files\McAfee\MSC\mcuihost.exe" -arg "$mcafee" -Wait
        }
    }
}
