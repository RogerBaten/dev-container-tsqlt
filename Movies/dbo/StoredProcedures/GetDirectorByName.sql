CREATE PROCEDURE [dbo].[GetDirectorByName]
    @Name VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id
    ,	Name
    ,	DateAdded
    ,	DateModified
    FROM
        dbo.Director
    WHERE
        Name = @Name;
END
