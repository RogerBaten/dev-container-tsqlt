-- This file contains SQL statements that will be executed after the build script.

;WITH Source(Name, DateAdded)
AS
(
	SELECT Name, DateAdded
	FROM
	(
		VALUES
			('Quentin Tarantino', GETDATE())
		,	('Robert Rodriguez', GETDATE())
	) AS Source(Name, DateAdded)
)
MERGE [dbo].[Director] AS T
USING (SELECT Name, DateAdded FROM Source) AS S
	ON	T.Name = S.Name
WHEN NOT MATCHED BY TARGET THEN
	INSERT (Name, DateAdded) VALUES (S.Name, S.DateAdded);