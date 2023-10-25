Create user in Azure SQL DB with Entra ID:

Create user account at top level:
USE MASTERCREATE USER [user@domain.com] FROM EXTERNAL PROVIDER

Create user on each database and set read permissions:
CREATE USER [user@domain.com] FROM LOGIN [user@domain.com];
EXEC sp_addrolemember 'db_datareader', 'UserName';
