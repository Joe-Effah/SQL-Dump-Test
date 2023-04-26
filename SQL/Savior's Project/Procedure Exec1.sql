USE [SCHOOL_ASSEMENT]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[STORE_STUDENT_MARKS]
		@STUDENT_SUBJECT = N'MATHEMATICS',
		@STUDENT_ID = 232323,
		@STUDENT_70PERCENT = 67.4,
		@STUDENT_REMARKS = N'Very Good',
		@STUDENT_GRADE = N'A'

SELECT	'Return Value' = @return_value

GO
