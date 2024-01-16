# Only needed if you want to change the default path of starship
# Default path: $HOME\config\starship.toml
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Invoke-Expression (&starship init powershell)