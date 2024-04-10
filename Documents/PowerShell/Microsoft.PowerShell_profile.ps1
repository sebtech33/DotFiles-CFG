$ModuleFolder = "$HOME\Documents\PowerShell\MyModules"
$ScriptFolder = "$HOME\Documents\PowerShell\MyScripts"

###########
# MODULES #
###########

# Starship
Import-Module "$ModuleFolder\starship.psm1"

# DotFiles-CFG
Import-Module "$ModuleFolder\DotFiles-CFG.psm1"

###########
# SCRIPTS #
###########

# Get-GitHubRelease
Import-Module "$ScriptFolder\Get-GitHubRelease.ps1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

Import-Module "C:\Users\SebTech33\AppData\Local\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756
