function Update-Solution([string] $sln) {
    & dotnet clean $sln
    
    Get-Projects $sln | ForEach-Object { Update-Project $_.FullName }

    & dotnet build $sln
}

function Get-Projects ([string] $sln) {
    return Get-ChildItem -Path $sln -Filter *.csproj -Recurse
}

function Update-Project ([string] $project) {
    $data = (Get-Content $project) -as [Xml]
    Select-Xml -Xml $data -XPath "//PackageReference" | ForEach-Object { Update-Package $project $_.Node.Include }
}

function Update-Package ([string] $project, [string] $package) {
    & dotnet add $project package $package
}