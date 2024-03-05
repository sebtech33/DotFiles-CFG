#requires -version 2

<#
.SYNOPSIS
  Script to automate some ipconfig commands

.DESCRIPTION
  This script will run ipconfig /release,/flushdns,/renew and then /all if the user presses Y or Enter. If the user presses anything else it will close without showing IP-adresses.

.NOTES
  Version:        0.2
  Author:         Sebastian Eliassen
  Creation Date:  01.02.2024
  Purpose/Change: Better Network Readout
  
.EXAMPLE
  IP-Reload
#>

function IP-Reload() {
    Write-host "IP Releasing..." -NoNewLine
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c 'ipconfig /release'" -Wait -WindowStyle Minimized
    Write-Host "✓"

    Write-host "IP Flushing DNS..." -NoNewLine
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c 'ipconfig /flushdns'" -Wait -WindowStyle Minimized
    Write-Host "✓"

    Write-host "IP Renewing..." -NoNewLine
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c 'ipconfig /renew'" -Wait -WindowStyle Minimized
    Write-Host "✓"

    $input = Read-Host "Do you want to list IP configuration? (Y/N)"

    if ( $input -eq "y" -or [string]::IsNullOrWhitespace($input) ) {
        #Start-Process -FilePath "cmd.exe" -ArgumentList "/c ipconfig /all" -NoNewWindow -Wait
        $ipconfig = Get-NetIPConfiguration | Select-Object @{n='Adapter'; e='InterfaceAlias'},
			   		 		   @{n='IP-Address'; e={$_.ipv4address[0]}},
			   		 		   @{n='MAC-Address'; e={$_.netadapter.macaddress}}
        $ipconfig | Format-Table
    }
    else {
        Continue
    }
}