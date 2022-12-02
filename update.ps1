param(
    [Parameter()]
    [string] $sln = '.\EfApi'
)

if (Test-Path $sln) {
    . .\functions.ps1

    Update-Solution $sln
}