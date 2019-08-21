-- Once per server
sp_configure 'clr enabled', 1;
GO
RECONFIGURE;
GO
-- Example setup on AdventureWorks2016 from https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-2016
ALTER DATABASE AdventureWorks2016 SET Trustworthy ON;
GO
ALTER AUTHORIZATION ON database::AdventureWorks2016 TO [WIN-A5MB0D0JFUU\Administrator]
GO
