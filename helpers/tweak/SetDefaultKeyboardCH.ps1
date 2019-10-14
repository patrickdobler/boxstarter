#Remove everything exept de-CH

function SetDefaultKeyboardCH {
    
    try {
        $LangList = Get-WinUserLanguageList
        $MarkedLang = $LangList | where LanguageTag -notlike "de-CH"
        $LangList.Remove($MarkedLang)
        Set-WinUserLanguageList $LangList -Force
    }
    catch {
        Write-Host "Could not remove other keyboard layouts"
    }
    
}
