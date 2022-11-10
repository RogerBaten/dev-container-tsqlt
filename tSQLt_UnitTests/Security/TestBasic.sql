-- Write your own SQL object definition here, and it'll be included in your package.
CREATE SCHEMA [TestBasic] Authorization [dbo];
GO
EXECUTE sp_addextendedproperty @name='tSQLt.TestClass',@value=1,@level0type='SCHEMA',@level0name='TestBasic';
GO