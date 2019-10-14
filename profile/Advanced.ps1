# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#   Advanced profile:
#
#   This is a Windows settings script for advanced users
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
 if(Confirm-Install 'Boxstarter::Advanced::Keyboard')
 {
     Write-BoxstarterMessage "Changing Keyboard settings..."
     SetDefaultKeyboardCH
 }

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Privacy settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::Privacy')
{
    Write-BoxstarterMessage "Updating Privacy settings..."

    DisableTelemetry                # EnableTelemetry
    DisableWiFiSense                # EnableWiFiSense
    # DisableSmartScreen            # EnableSmartScreen
    DisableWebSearch                # EnableWebSearch
    DisableAppSuggestions           # EnableAppSuggestions
    DisableActivityHistory          # EnableActivityHistory
    DisableBackgroundApps           # EnableBackgroundApps
    # DisableSensors                # EnableSensors
    DisableLocation                 # EnableLocation
    DisableMapUpdates               # EnableMapUpdates
    DisableFeedback                 # EnableFeedback
    DisableTailoredExperiences      # EnableTailoredExperiences
    DisableAdvertisingID            # EnableAdvertisingID
    DisableWebLangList              # EnableWebLangList
    DisableCortana                  # EnableCortana
    # DisableBiometrics             # EnableBiometrics
    DisableCamera                   # EnableCamera
    # DisableMicrophone             # EnableMicrophone
    DisableErrorReporting           # EnableErrorReporting
    # SetP2PUpdateLocal             # SetP2PUpdateInternet          # SetP2PUpdateDisable
    DisableDiagTrack                # EnableDiagTrack
    DisableWAPPush                  # EnableWAPPush
    # EnableClearRecentFiles        # DisableClearRecentFiles
    # DisableRecentFiles            # EnableRecentFiles
}

if(Confirm-Install 'Boxstarter::Advanced::PC::Privacy')
{
    Write-BoxstarterMessage "Updating Privacy settings..."

    DisableSensors                  # EnableSensors
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Security  settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::Security')
{
    Write-BoxstarterMessage "Updating Security settings..."

    # SetUACLow                     # SetUACHigh
    # EnableSharingMappedDrives     # DisableSharingMappedDrives
    # DisableAdminShares            # EnableAdminShares
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
if(Confirm-Install 'Boxstarter::Advanced::Network')
{
    Write-BoxstarterMessage "Updating Network settings..."

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
    EnableRemoteDesktop             # DisableRemoteDesktop
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Service settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::Service')
{
    Write-BoxstarterMessage "Updating Service settings..."

    # DisableUpdateMSRT             # EnableUpdateMSRT
    # DisableUpdateDriver           # EnableUpdateDriver
    EnableUpdateMSProducts          # DisableUpdateMSProducts
    # DisableUpdateAutoDownload     # EnableUpdateAutoDownload
    DisableUpdateRestart            # EnableUpdateRestart
    DisableMaintenanceWakeUp        # EnableMaintenanceWakeUp
    DisableSharedExperiences        # EnableSharedExperiences
    # EnableClipboardHistory        # DisableClipboardHistory
    DisableAutoplay                 # EnableAutoplay
    DisableAutorun                  # EnableAutorun
    DisableRestorePoints            # EnableRestorePoints
    EnableStorageSense              # DisableStorageSense
    DisableDefragmentation          # EnableDefragmentation
    # DisableSuperfetch             # EnableSuperfetch
    # DisableIndexing               # EnableIndexing
    # DisableSwapFile               # EnableSwapFile
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
if(Confirm-Install 'Boxstarter::Advanced::UI')
{
    Write-BoxstarterMessage "Updating UI settings..."

    # DisableActionCenter           # EnableActionCenter
    # DisableLockScreen             # EnableLockScreen
    # DisableLockScreenRS1          # EnableLockScreenRS1
    HideNetworkFromLockScreen       # ShowNetworkOnLockScreen
    # HideShutdownFromLockScreen    # ShowShutdownOnLockScreen
    # DisableLockScreenBlur         # EnableLockScreenBlur
    DisableAeroShake                # EnableAeroShake
    DisableAccessibilityKeys        # EnableAccessibilityKeys
    ShowTaskManagerDetails          # HideTaskManagerDetails
    ShowFileOperationsDetails       # HideFileOperationsDetails
    # EnableFileDeleteConfirm       # DisableFileDeleteConfirm
    # HideTaskbarSearch             # ShowTaskbarSearchIcon         # ShowTaskbarSearchBox
    HideTaskView                    # ShowTaskView
    # ShowSmallTaskbarIcons         # ShowLargeTaskbarIcons
    # SetTaskbarCombineWhenFull     # SetTaskbarCombineNever        # SetTaskbarCombineAlways
    HideTaskbarPeopleIcon           # ShowTaskbarPeopleIcon
    # ShowTrayIcons                 # HideTrayIcons
    # ShowSecondsInTaskbar          # HideSecondsFromTaskbar
    DisableSearchAppInStore         # EnableSearchAppInStore
    # DisableNewAppPrompt           # EnableNewAppPrompt
    # HideRecentlyAddedApps         # ShowRecentlyAddedApps
    # HideMostUsedApps              # ShowMostUsedApps
    SetControlPanelSmallIcons       # SetControlPanelLargeIcons     # SetControlPanelCategories
    DisableShortcutInName           # EnableShortcutInName
    # HideShortcutArrow             # ShowShortcutArrow
    # SetVisualFXPerformance        # SetVisualFXAppearance
    # EnableTitleBarColor           # DisableTitleBarColor
    # EnableDarkTheme               # DisableDarkTheme
    # AddENKeyboard                 # RemoveENKeyboard
    # EnableNumlock                 # DisableNumlock
    # DisableEnhPointerPrecision    # EnableEnhPointerPrecision
    SetSoundSchemeNone              # SetSoundSchemeDefault
    # DisableStartupSound           # EnableStartupSound
    # DisableChangingSoundScheme    # EnableChangingSoundScheme
    # EnableVerboseStatus           # DisableVerboseStatus
    DisableF1HelpKey                # EnableF1HelpKey
}

if(Confirm-Install 'Boxstarter::Advanced::PC::UI')
{
    Write-BoxstarterMessage "Updating UI settings..."

    DisableActionCenter             # EnableActionCenter
}

if(Confirm-Install 'Boxstarter::Advanced::Notebook::UI')
{
    Write-BoxstarterMessage "Updating UI settings..."

    DisableLockScreen               # EnableLockScreen
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    UI preferences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::UI-Preferences')
{
    Write-BoxstarterMessage "Updating UI preferences..."

    # ShowExplorerTitleFullPath     # HideExplorerTitleFullPath
    ShowKnownExtensions             # HideKnownExtensions
    # ShowHiddenFiles               # HideHiddenFiles
    # ShowSuperHiddenFiles          # HideSuperHiddenFiles
    # ShowEmptyDrives               # HideEmptyDrives
    # ShowFolderMergeConflicts      # HideFolderMergeConflicts
    # EnableNavPaneExpand           # DisableNavPaneExpand
    # ShowNavPaneAllFolders         # HideNavPaneAllFolders
    # EnableFldrSeparateProcess     # DisableFldrSeparateProcess
    # EnableRestoreFldrWindows      # DisableRestoreFldrWindows
    # ShowEncCompFilesColor         # HideEncCompFilesColor
    DisableSharingWizard            # EnableSharingWizard
    # HideSelectCheckboxes          # ShowSelectCheckboxes
    HideSyncNotifications           # ShowSyncNotifications
    # HideRecentShortcuts           # ShowRecentShortcuts
    SetExplorerThisPC               # SetExplorerQuickAccess
    # HideQuickAccess               # ShowQuickAccess
    # HideRecycleBinFromDesktop     # ShowRecycleBinOnDesktop
    # ShowThisPCOnDesktop           # HideThisPCFromDesktop
    # ShowUserFolderOnDesktop       # HideUserFolderFromDesktop
    # ShowControlPanelOnDesktop     # HideControlPanelFromDesktop
    # ShowNetworkOnDesktop          # HideNetworkFromDesktop
    # ShowBuildNumberOnDesktop      # HideBuildNumberFromDesktop
    # HideDesktopFromThisPC         # ShowDesktopInThisPC
    # HideDesktopFromExplorer       # ShowDesktopInExplorer
    # HideDocumentsFromThisPC       # ShowDocumentsInThisPC
    # HideDocumentsFromExplorer     # ShowDocumentsInExplorer
    # HideDownloadsFromThisPC       # ShowDownloadsInThisPC
    # HideDownloadsFromExplorer     # ShowDownloadsInExplorer
    HideMusicFromThisPC             # ShowMusicInThisPC
    # HideMusicFromExplorer         # ShowMusicInExplorer
    HidePicturesFromThisPC          # ShowPicturesInThisPC
    # HidePicturesFromExplorer      # ShowPicturesInExplorer
    HideVideosFromThisPC            # ShowVideosInThisPC
    # HideVideosFromExplorer        # ShowVideosInExplorer
    Hide3DObjectsFromThisPC         # Show3DObjectsInThisPC
    Hide3DObjectsFromExplorer       # Show3DObjectsInExplorer
    HideIncludeInLibraryMenu        # ShowIncludeInLibraryMenu
    HideGiveAccessToMenu            # ShowGiveAccessToMenu
    HideShareMenu                   # ShowShareMenu
    # DisableThumbnails             # EnableThumbnails
    # DisableThumbnailCache         # EnableThumbnailCache
    # DisableThumbsDBOnNetwork      # EnableThumbsDBOnNetwork
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Application
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::Application')
{
    Write-BoxstarterMessage "Updating Application preferences..."

    # DisableOneDrive               # EnableOneDrive
    # UninstallOneDrive             # InstallOneDrive
    # UninstallMsftBloat            # InstallMsftBloat
    UninstallThirdPartyBloat        # InstallThirdPartyBloat
    # UninstallWindowsStore         # InstallWindowsStore
    # DisableXboxFeatures           # EnableXboxFeatures
    # DisableFullscreenOptims       # EnableFullscreenOptims
    # DisableAdobeFlash             # EnableAdobeFlash
    DisableEdgePreload              # EnableEdgePreload
    DisableEdgeShortcutCreation     # EnableEdgeShortcutCreation
    DisableIEFirstRun               # EnableIEFirstRun
    DisableFirstLogonAnimation      # EnableFirstLogonAnimation
    DisableMediaSharing             # EnableMediaSharing
    UninstallMediaPlayer            # InstallMediaPlayer
    # UninstallInternetExplorer     # InstallInternetExplorer
    UninstallWorkFolders            # InstallWorkFolders
    # UninstallPowerShellV2         # InstallPowerShellV2
    # InstallLinuxSubsystem         # UninstallLinuxSubsystem
    # InstallHyperV                 # UninstallHyperV
    # InstallNET23                  # UninstallNET23
    # SetPhotoViewerAssociation     # UnsetPhotoViewerAssociation
    AddPhotoViewerOpenWith          # RemovePhotoViewerOpenWith
    # UninstallPDFPrinter           # InstallPDFPrinter
    UninstallXPSPrinter             # InstallXPSPrinter
    RemoveFaxPrinter                # AddFaxPrinter
    # UninstallFaxAndScan           # InstallFaxAndScan
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Unpinning
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::Unpinning')
{
    Write-BoxstarterMessage "Unpinning tiles and/or icons..."

    UnpinStartMenuTiles
    # UnpinTaskbarIcons
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Remote desktop
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Advanced::RemoteDesktop') {
    EnableRemoteDesktop
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
Set-DefaultOption 'Boxstarter::Advanced::Remove-Apps'                                      'true'

Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.3DBuilder'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Appconnector'                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingFinance'                    'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingFoodAndDrink'               'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingHealthAndFitness'           'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingMaps'                       'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingNews'                       'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingSports'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingTranslator'                 'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingTravel'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.BingWeather'                    'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.CommsPhone'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.ConnectivityStore'              'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.DesktopAppInstaller'            'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.FreshPaint'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.GetHelp'                        'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Getstarted'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.HelpAndTips'                    'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Media.PlayReadyClient.2'        'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Messaging'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Microsoft3DViewer'              'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftOfficeHub'             'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftPowerBIForWindows'     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftSolitaireCollection'   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftStickyNotes'           'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MinecraftUWP'                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MixedReality.Portal'            'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Microsoft.MoCamera'             'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.MSPaint'                        'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.NetworkSpeedTest'               'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.OfficeLens'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Office.OneNote'                 'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Office.Sway'                    'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.OneConnect'                     'true'
# Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.OneDrive'                     'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.People'                         'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Print3D'                        'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Reader'                         'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.RemoteDesktop'                  'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.ScreenSketch'                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.SkypeApp'                       'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.StorePurchaseApp'               'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Todos'                          'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Wallet'                         'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WebMediaExtensions'             'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Whiteboard'                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Windows.Photos'                 'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Windows.CapturePicker'          'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Windows.CloudExperienceHost'    'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Windows.PeopleExperienceHost'   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsAlarms'                  'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsCalculator'              'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsCamera'                  'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::microsoft.windowscommunicationsapps'      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsFeedbackHub'             'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsMaps'                    'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsPhone'                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsReadingList'             'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Microsoft.WindowsScan'          'false'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsSoundRecorder'           'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WindowsStore'                   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.XboxApp'                        'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.XboxGameOverlay'                'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.XboxGamingOverlay'              'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.XboxIdentityProvider'           'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.XboxSpeechToTextOverlay'        'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Xbox.TCUI'                      'false' # Don't remove
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WinJS.1.0'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.WinJS.2.0'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.YourPhone'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.ZuneMusic'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.ZuneVideo'                      'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Microsoft.Advertising.Xaml'               'true' # Dependency for microsoft.windowscommunicationsapps, Microsoft.BingWeather

Set-DefaultOption 'Boxstarter::Advanced::Remove::Autodesk'                                 'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::BubbleWitch'                              'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::CandyCrush'                               'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Dell'                                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Facebook'                                 'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Keeper'                                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::MarchofEmpires'                           'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::McAfee'                                   'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Minecraft'                                'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Netflix'                                  'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Plex'                                     'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Solitaire'                                'true'
Set-DefaultOption 'Boxstarter::Advanced::Remove::Twitter'                                  'true'

[String[]]$apps = @()
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.3DBuilder')                     { $apps += 'Microsoft.3DBuilder' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Appconnector')                  { $apps += 'Microsoft.Appconnector' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingFinance')                   { $apps += 'Microsoft.BingFinance' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingFoodAndDrink')              { $apps += 'Microsoft.BingFoodAndDrink' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingHealthAndFitness')          { $apps += 'Microsoft.BingHealthAndFitness' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingMaps')                      { $apps += 'Microsoft.BingMaps' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingNews')                      { $apps += 'Microsoft.BingNews' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingSports')                    { $apps += 'Microsoft.BingSports' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingTranslator')                { $apps += 'Microsoft.BingTranslator' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingTravel')                    { $apps += 'Microsoft.BingTravel' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.BingWeather')                   { $apps += 'Microsoft.BingWeather' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.CommsPhone')                    { $apps += 'Microsoft.CommsPhone' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.ConnectivityStore')             { $apps += 'Microsoft.ConnectivityStore' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.DesktopAppInstaller')           { $apps += 'Microsoft.DesktopAppInstaller' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.FreshPaint')                    { $apps += 'Microsoft.FreshPaint' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.GetHelp')                       { $apps += 'Microsoft.GetHelp' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Getstarted')                    { $apps += 'Microsoft.Getstarted' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.HelpAndTips')                   { $apps += 'Microsoft.HelpAndTips' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Media.PlayReadyClient.2')       { $apps += 'Microsoft.Media.PlayReadyClient.2' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Messaging')                     { $apps += 'Microsoft.Messaging' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Microsoft3DViewer')             { $apps += 'Microsoft.Microsoft3DViewer' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftOfficeHub')            { $apps += 'Microsoft.MicrosoftOfficeHub' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftPowerBIForWindows')    { $apps += 'Microsoft.MicrosoftPowerBIForWindows' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftSolitaireCollection')  { $apps += 'Microsoft.MicrosoftSolitaireCollection' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MicrosoftStickyNotes')          { $apps += 'Microsoft.MicrosoftStickyNotes' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MinecraftUWP')                  { $apps += 'Microsoft.MinecraftUWP' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MixedReality.Portal')           { $apps += 'Microsoft.MixedReality.Portal' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Microsoft.MoCamera' )           { $apps += 'Microsoft.Microsoft.MoCamera' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MSPaint')                       { $apps += 'Microsoft.MSPaint' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.NetworkSpeedTest')              { $apps += 'Microsoft.NetworkSpeedTest' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.OfficeLens')                    { $apps += 'Microsoft.OfficeLens' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Office.OneNote')                { $apps += 'Microsoft.Office.OneNote' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Office.Sway')                   { $apps += 'Microsoft.Office.Sway' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.OneConnect')                    { $apps += 'Microsoft.OneConnect' }
# if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.OneDrive')                    { $apps += 'Microsoft.OneDrive' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.People')                        { $apps += 'Microsoft.People' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Print3D')                       { $apps += 'Microsoft.Print3D' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Reader')                        { $apps += 'Microsoft.Reader' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.RemoteDesktop')                 { $apps += 'Microsoft.RemoteDesktop' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.ScreenSketch')                  { $apps += 'Microsoft.ScreenSketch' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.SkypeApp')                      { $apps += 'Microsoft.SkypeApp' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.StorePurchaseApp')              { $apps += 'Microsoft.StorePurchaseApp' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Todos')                         { $apps += 'Microsoft.Todos' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Wallet')                        { $apps += 'Microsoft.Wallet' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WebMediaExtensions')            { $apps += 'Microsoft.WebMediaExtensions' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Whiteboard')                    { $apps += 'Microsoft.Whiteboard' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Windows.Photos')                { $apps += 'Microsoft.Windows.Photos' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Windows.CapturePicker')         { $apps += 'Microsoft.Windows.CapturePicker' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Windows.CloudExperienceHost')   { $apps += 'Microsoft.Windows.CloudExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Windows.PeopleExperienceHost')  { $apps += 'Microsoft.Windows.PeopleExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsAlarms')                 { $apps += 'Microsoft.WindowsAlarms' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsCalculator')             { $apps += 'Microsoft.WindowsCalculator' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsCamera')                 { $apps += 'Microsoft.WindowsCamera' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::microsoft.windowscommunicationsapps')     { $apps += 'microsoft.windowscommunicationsapps' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsFeedbackHub')            { $apps += 'Microsoft.WindowsFeedbackHub' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsMaps')                   { $apps += 'Microsoft.WindowsMaps' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsPhone')                  { $apps += 'Microsoft.WindowsPhone' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsReadingList')            { $apps += 'Microsoft.WindowsReadingList' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Microsoft.WindowsScan')         { $apps += 'Microsoft.Microsoft.WindowsScan' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsSoundRecorder')          { $apps += 'Microsoft.WindowsSoundRecorder' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WindowsStore')                  { $apps += 'Microsoft.WindowsStore' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxApp')                       { $apps += 'Microsoft.XboxApp' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxGameOverlay')               { $apps += 'Microsoft.XboxGameOverlay' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxGamingOverlay')             { $apps += 'Microsoft.XboxGamingOverlay' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxIdentityProvider')          { $apps += 'Microsoft.XboxIdentityProvider' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxSpeechToTextOverlay')       { $apps += 'Microsoft.XboxSpeechToTextOverlay' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Xbox.TCUI')                     { $apps += 'Microsoft.Xbox.TCUI' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WinJS.1.0')                     { $apps += 'Microsoft.WinJS.1.0' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.WinJS.2.0')                     { $apps += 'Microsoft.WinJS.2.0' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.YourPhone')                     { $apps += 'Microsoft.YourPhone' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.ZuneMusic')                     { $apps += 'Microsoft.ZuneMusic' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.ZuneVideo')                     { $apps += 'Microsoft.ZuneVideo' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.Advertising.Xaml')              { $apps += 'Microsoft.Advertising.Xaml' }

if(Get-OptionBool 'Boxstarter::Advanced::Remove::Autodesk')                                { $apps += '*Autodesk*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::BubbleWitch')                             { $apps += '*BubbleWitch*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::CandyCrush')                              { $apps += '*CandyCrush*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Dell')                                    { $apps += '*Dell*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Facebook')                                { $apps += '*Facebook*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Keeper')                                  { $apps += '*Keeper*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::MarchofEmpires')                          { $apps += '*MarchofEmpires*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::McAfee')                                  { $apps += '*McAfee*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Minecraft')                               { $apps += '*Minecraft*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Netflix')                                 { $apps += '*Netflix*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Plex')                                    { $apps += '*Plex*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Solitaire')                               { $apps += '*Solitaire*' }
if(Get-OptionBool 'Boxstarter::Advanced::Remove::Twitter')                                 { $apps += '*Twitter*' }

if(Get-OptionBool 'Boxstarter::Advanced::Remove-Apps') {

    Write-BoxstarterMessage "Removing Windows apps..."

    # Prevents "Suggested Applications" returning
    Set-Registry -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Cloud Content' -Name 'DisableWindowsConsumerFeatures' -Type 'DWord' -Value 1

    # Remove default apps
    Remove-WindowsApp $apps

    # remove oneDrive
    if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.OneDrive') {
        Remove-OneDrive
    }

    # remove paint 3D
    if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.MSPaint') {
        # How to remove 'Edit with Paint 3D' from context menu
        Remove-Registry 'HKEY_LOCAL_MACHINE\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell'
    }

    # Xbox
    if(Get-OptionBool 'Boxstarter::Advanced::Remove::Microsoft.XboxApp') {
		Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\GameBar' -Name 'AutoGameModeEnabled' -Type 'DWord' -Value 0
        Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Type 'DWord' -Value 0
        Set-Registry -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -Name "AllowGameDVR" -Type 'DWord' -Value 0
        Set-Registry -Path 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Type 'DWord' -Value 0
    }

    # remove McAfee Security App
    if(Get-OptionBool 'Boxstarter::Advanced::Remove::McAfee') {
        $mcafee = Get-ChildItem 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall' | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "McAfee Security" } | Select-Object UninstallString
        if ($mcafee) {
            $mcafee = $mcafee.UninstallString -Replace 'C:\Program Files\McAfee\MSC\mcuihost.exe',''
            Start-Process "C:\Program Files\McAfee\MSC\mcuihost.exe" -arg "$mcafee" -Wait
        }
    }
}
