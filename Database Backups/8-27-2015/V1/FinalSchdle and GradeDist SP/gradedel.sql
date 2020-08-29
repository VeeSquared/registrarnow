USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteGradeDistributionInfo]    Script Date: 8/27/2015 9:37:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spDeleteGradeDistributionInfo]
	@schedule_id int
as
begin

	delete from 
		grade_distribution
	where
		schedule_id = @schedule_id

	return @@ROWCOUNT
end



