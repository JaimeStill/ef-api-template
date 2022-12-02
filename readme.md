# ASP.NET Core EF Starter Web API

```PowerShell
# install dotnet new template
dotnet new --install .\EfApi\

# usage
dotnet new efapi -n {name} -o {output-directory} --database {database}

# example
dotnet new efapi -n Test -o test-api --database test-app
```

To uninstall:

```PowerShell
dotnet new --uninstall .\EfAPi\
```

To update NuGet dependencies:

```PowerShell
.\update.ps1
```