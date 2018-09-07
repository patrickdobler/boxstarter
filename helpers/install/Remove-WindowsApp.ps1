function Remove-WindowsApp
{
    param(
        [Parameter(Mandatory=$True)]
        [string[]]$apps
    )

    # Try to remove  apps
    foreach ($app in $apps) {
        Write-BoxstarterMessage "Removing ${app}..."
        Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage
        Get-AppXProvisionedPackage -Online | Where-Object DisplayName -eq $app | Remove-AppxProvisionedPackage -Online
    }
}