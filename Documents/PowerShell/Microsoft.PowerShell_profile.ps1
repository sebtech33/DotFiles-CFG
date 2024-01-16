$ModuleFolder ="$HOME\Documents\PowerShell\MyModules"

############
# Starship #
############
Import-Module "$ModuleFolder\starship.psm1"

###########
# Aliases #
###########

# Config
function Set-GitConfig { & git --git-dir=$HOME/.cfg --work-tree=$HOME $args }
Set-Alias -Name config -Value Set-GitConfig
