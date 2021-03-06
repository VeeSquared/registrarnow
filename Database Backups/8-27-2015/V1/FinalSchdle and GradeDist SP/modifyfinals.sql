USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateFinalsScheduleInfo]    Script Date: 8/27/2015 9:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spUpdateFinalsScheduleInfo]
	@schedule_id int,
	@grade_distribution varchar(50),
	@title varchar(50)

as
begin

	update 
		grade_distribution
	set
        grade_distribution = @grade_distribution,
		title = @title
	where
		schedule_id = @schedule_id
	
	return @@ROWCOUNT
end
