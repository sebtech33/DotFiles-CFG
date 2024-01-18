function Show-GitHubReleases() {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0, mandatory = $true)]
        [string] $repo
    )
    $json = curl -s https://api.github.com/repos/$repo/releases/latest
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
