# Script: get_wifi_password.ps1
Write-Host "------------------"
Write-Host " Get WiFi Password"
Write-Host "------------------"

$network_name = Read-Host "Enter network name"
Write-Host "Getting password for '$network_name'..."

netsh wlan show profile name="$network_name" key=clear | Select-String "Key Content"
