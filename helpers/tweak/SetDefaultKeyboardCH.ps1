#Remove everything exept de-CH

function SetDefaultKeyboardCH {
    $LangList = Get-WinUserLanguageList
    $MarkedLang = $LangList | where LanguageTag -notlike "de-CH"
    $LangList.Remove($MarkedLang)
    Set-WinUserLanguageList $LangList -Force
}
