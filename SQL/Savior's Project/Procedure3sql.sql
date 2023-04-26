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
CREATE PROCEDURE GETSTUDENTDETAILS 
	-- Add the parameters for the stored procedure here
	(@STUDENTID INT) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		--SELECT * FROM STUDENT_INFO CROSS JOIN STUDENT_DATA_MATHS ;
	SELECT * FROM STUDENT_INFO  
	INNER JOIN STUDENT_DATA_MATHS 
	ON @STUDENTID = STUDENT_DATA_MATHS.STUDENT_ID 
      
	INNER JOIN STUDENT_DATA_SCI 
	ON @STUDENTID =STUDENT_DATA_SCI.STUDENT_ID 
	INNER JOIN STUDENT_DATA_ENG
	ON @STUDENTID =STUDENT_DATA_ENG.STUDENT_ID 
	INNER JOIN STUDENT_DATA_ICT
	ON @STUDENTID =STUDENT_DATA_ICT.STUDENT_ID 
	INNER JOIN STUDENT_DATA_GHAINLANG
	ON @STUDENTID =STUDENT_DATA_GHAINLANG.STUDENT_ID 
	INNER JOIN STUDENT_DATA_FRENCH
	ON @STUDENTID =STUDENT_DATA_FRENCH.STUDENT_ID 
	INNER JOIN STUDENT_DATA_RME
	ON @STUDENTID =STUDENT_DATA_RME.STUDENT_ID 
	INNER JOIN STUDENT_DATA_HISTORY
	ON @STUDENTID =STUDENT_DATA_HISTORY.STUDENT_ID
	INNER JOIN STUDENT_DATA_CREATIVEART
	ON @STUDENTID =STUDENT_DATA_CREATIVEART.STUDENT_ID
	INNER JOIN STUDENT_DATA_OURWORLD
	ON @STUDENTID =STUDENT_DATA_OURWORLD.STUDENT_ID
	INNER JOIN STUDENT_DATA_PROJECTWORK
	ON @STUDENTID =STUDENT_DATA_PROJECTWORK.STUDENT_ID
END
GO
