###### MySQL
# User: root
# Password: bbdev
docker run --name bb-pg -p 5432:5432 -e POSTGRES_PASSWORD=bbdev --restart=always -d postgres

###### Postgres
# User: postgres
# Password: bbdev
docker run --name bb-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=bbdev --restart=always -d mysql


###### Oracle
# SID: XE
# User: system
# Password: oracle
docker run -d -p 1521:1521 --restart=always -d truevoly/oracle-12c

###### SQLServer
# User: SA
# Password: Bytebase123!
docker run --name bb-mssql -p 1433:1433 -e ACCEPT_EULA=Y -e MSSQL_SA_PASSWORD=Bytebase123! --restart=always -d mcr.microsoft.com/mssql/server:2022-latest