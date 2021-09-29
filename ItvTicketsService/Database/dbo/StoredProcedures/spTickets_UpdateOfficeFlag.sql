CREATE PROCEDURE [dbo].[spTickets_UpdateOfficeFlag]
@TicketId int,
@OfficeFlag int
AS
BEGIN
-- SQL for Update stored procedure
UPDATE Tickets SET OfficeFlag = @OfficeFlag WHERE TicketId = @TicketId
END
