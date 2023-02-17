FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["EfApi.Api/EfApi.Api.csproj", "EfApi.Api/"]
RUN dotnet restore "EfApi.Api/EfApi.Api.csproj"
COPY . .
WORKDIR "/src/EfApi.Api"
RUN dotnet build "EfApi.Api.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "EfApi.Api.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "EfApi.Api.dll"]