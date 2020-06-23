#Remove everything exept de-CH

function SetDefaultKeyboardCH {
    
    try {
        $LangList = Get-WinUserLanguageList
        $LangList.RemoveAll( { $args[0].LanguageTag -notlike 'de-CH' } )
        Set-WinUserLanguageList $LangList -Force

        $path = "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\Keyboard Layout\Preload"
        $path2 = "Microsoft.PowerShell.Core\Registry::HKEY_USERS\.DEFAULT\Keyboard Layout\Preload"
        $items = (Get-Item $path).Property
        $items2 = (Get-Item $path2).Property
        Remove-ItemProperty -Path $path -Name $items -Force
        Remove-ItemProperty -Path $path2 -Name $items2 -Force

        New-ItemProperty -Path $path -Name 1 -Value "00000807" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $path2 -Name 1 -Value "00000807" -PropertyType String -Force | Out-Null
    }
    catch {
        Write-Host "Could not remove other keyboard layouts"
    }
    
}
