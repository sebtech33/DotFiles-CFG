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
#Import-Module "$ScriptFolder\Get-GitHubRelease.ps1"
Import-Module "$ScriptFolder\IP-Reload.ps1"
Import-Module "$ScriptFolder\Set-FilmPC-Setup.ps1"

###########
# SCRIPTS #
###########



########
# CODE #
########
# This can add a delay on the startup of the terminal.
# Disable this to regain startup time if its to slow.
config pull --quiet


# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete