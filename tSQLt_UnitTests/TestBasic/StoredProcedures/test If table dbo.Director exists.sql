CREATE PROCEDURE [TestBasic].[test If table dbo.Director exists]
AS
BEGIN
    SET NOCOUNT ON;

    ----- ASSERT -------------------------------------------------
    EXEC tSQLt.AssertObjectExists @ObjectName = N'dbo.Director';
END;