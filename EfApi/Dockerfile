FROM mcr.microsoft.com/dotnet/sdk:7.0 AS base
WORKDIR /app

COPY . .
WORKDIR /app/EfApi.Api/
RUN dotnet restore
RUN dotnet publish -c Release -o /app/out

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=base /app/out .
EXPOSE 80
ENTRYPOINT ["dotnet", "EfApi.Api.dll"]