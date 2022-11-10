CREATE PROCEDURE [TestBasic].[test If database has correct collation]
AS
BEGIN
SET NOCOUNT ON;

    ----- ASSEMBLE -----------------------------------------------

    DECLARE @expected VARCHAR(255),
        @actual VARCHAR(255)

    SELECT @expected = 'SQL_Latin1_General_CP1_CI_AS'

    ----- ACT ----------------------------------------------------

    SELECT @actual = CAST(DATABASEPROPERTYEX(DB_NAME(), 'Collation') AS VARCHAR(255));

    ----- ASSERT -------------------------------------------------
    EXEC tSQLt.AssertEquals @expected, @actual;
END;