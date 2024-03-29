function Show-GitHubReleases() {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0, mandatory = $true)]
        [string] $repo
    )

    $GithubJson = Invoke-WebRequest https://api.github.com/repos/$repo/releases/latest | ConvertFrom-Json
    Write-Host (Get-Content $GithubJson | ConvertFrom-Json).PSObject.Properties
    
    #ForEach-Object { $GithubJson[$_.name] = $_.Value }

    #$GithubJson.assets




    #$json = {curl -s https://api.github.com/repos/$repo/releases/latest | ConvertFrom-Json -Depth 3
}

function Get-GitHubRelease() {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0, mandatory = $true)]
        [string] $repo,
        [Parameter(Position = 1)]
        [string] $fileName
    )
    if (!$fileName){
        Show-GitHubReleases
    }
    
    
    curl -LO https://github.com/$repo/releases/latest/download/$fileName

}

Show-GitHubReleases