function Set-GitConfig {
    & git --git-dir=$HOME/.cfg --work-tree=$HOME $args
}

Set-Alias -Name config -Value Set-GitConfig

# Pull latest config at startup
config pull --quiet