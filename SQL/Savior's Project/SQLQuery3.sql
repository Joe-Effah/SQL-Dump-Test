-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GETSTUDPOSITION
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT STUDENT_ID,STUDENT_FULLNAME,STUDENT_SUBJECT,
	STUDENT_30PERCENT,STUDENT_70PERCENT,STUDENT_TOTAL_MARKS,STUDENT_REMARKS,
	STUDENT_GRADE, RANK () OVER (ORDER BY STUDENT_TOTAL_MARKS DESC ) AS STUDENTS_POSITION  
FROM STUDENT_DATA ;

END

GO
