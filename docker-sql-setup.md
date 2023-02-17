# SQL Server Docker Setup

* [Pull and Run Docker Image](https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker)

```bash
sudo docker pull mcr.microsoft.com/mssql/server:2022-latest

sudo docker run \
    -e "ACCEPT_EULA=Y" \
    -e "MSSQL_SA_PASSWORD=<YourStrong@Passw0rd>" \
    -p 1433:1433 \
    --name dev-sql \
    --hostname dev-sql \
    mcr.microsoft.com/mssql/server:2022-latest
```