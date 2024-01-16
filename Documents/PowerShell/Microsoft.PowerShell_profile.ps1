############
# Starship #
############
$ENV:STARSHIP_CONFIG = "$HOME\.dotfiles\starship.toml"
Invoke-Expression (&starship init powershell)

###########
# Aliases #
###########

# Git
function Set-GitConfig { & git --git-dir=$HOME/.cfg --work-tree=$HOME $args }
Set-Alias -Name config -Value Set-GitConfig
