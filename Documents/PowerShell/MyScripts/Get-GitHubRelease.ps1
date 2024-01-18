function Get-GitHubRelease() {
    param ($repo, $fileName)
    curl -LO https://github.com/$repo/releases/latest/download/$fileName
}
