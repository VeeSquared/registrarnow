USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spGetFinalsScheduleInfo]    Script Date: 8/27/2015 9:44:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetFinalsScheduleInfo]
as
begin

	select
		*
	from
		finals_schedule
	order by
		schedule_id
	
	return @@ROWCOUNT
end

