USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spInsertGradeDistributionInfo]    Script Date: 8/27/2015 9:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spInsertGradeDistributionInfo]
	@schedule_id int,
	@grade_distribution varchar(50),
	@title varchar(50)

as
begin

	if not exists(select * from grade_distribution where schedule_id = @schedule_id)
	begin
		insert grade_distribution
		(
			schedule_id, 
		    grade_distribution,
			title
		)
		select
			@schedule_id, 
		    @grade_distribution,
			@title
	end

	return @@ROWCOUNT
	
end
