##############################################
########## Movies database project ##
##############################################
/usr/bin/dotnet build "/workspace/Movies/Movies.sqlproj" /p:NetCoreBuild=true /p:NETCoreTargetsPath="/home/vscode/.vscode-server/extensions/ms-mssql.sql-database-projects-vscode-0.19.0/BuildDirectory"
/opt/sqlpackage/sqlpackage /Action:Publish /SourceFile:/workspace/Movies/bin/Debug/Movies.dacpac /TargetServerName:localhost /TargetDatabaseName:Movies /TargetUser:sa /TargetPassword:P@ssw0rd /TargetEncryptConnection:False /p:CreateNewDatabase=True

##############################################
########## tSQLt_Framework database project ##
##############################################
/usr/bin/dotnet build "/workspace/tSQLt_Framework/tSQLt_Framework.sqlproj" /p:NetCoreBuild=true /p:NETCoreTargetsPath="/home/vscode/.vscode-server/extensions/ms-mssql.sql-database-projects-vscode-0.19.0/BuildDirectory"
/opt/sqlpackage/sqlpackage /Action:Publish /SourceFile:/workspace/tSQLt_Framework/bin/Debug/tSQLt_Framework.dacpac /TargetServerName:localhost /TargetDatabaseName:Movies /TargetUser:sa /TargetPassword:P@ssw0rd /TargetEncryptConnection:False /p:DropObjectsNotInSource=False

##############################################
########## tSQLt_UnitTests database project ##
##############################################
/usr/bin/dotnet build "/workspace/tSQLt_UnitTests/tSQLt_UnitTests.sqlproj" /p:NetCoreBuild=true /p:NETCoreTargetsPath="/home/vscode/.vscode-server/extensions/ms-mssql.sql-database-projects-vscode-0.19.0/BuildDirectory"
/opt/sqlpackage/sqlpackage /Action:Publish /SourceFile:/workspace/tSQLt_UnitTests/bin/Debug/tSQLt_UnitTests.dacpac /TargetServerName:localhost /TargetDatabaseName:Movies /TargetUser:sa /TargetPassword:P@ssw0rd /TargetEncryptConnection:False /p:DropObjectsNotInSource=False

sqlcmd -Slocalhost -Q "EXEC Movies.tSQLt.RunAll;" -U sa -P P@ssw0rd