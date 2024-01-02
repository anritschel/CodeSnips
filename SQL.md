Create user in Azure SQL DB with Entra ID:

Create user account at top level:
CREATE LOGIN [user@domain.com] FROM EXTERNAL PROVIDER

Create user on each database and set permissions:
CREATE USER [user@domain.com] FROM LOGIN [user@domain.com];
EXEC sp_addrolemember 'db_datareader', 'UserName';
