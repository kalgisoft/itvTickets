CREATE PROCEDURE [dbo].[spTicket_GetOne]
-- Needs one parameter for primary key
@Id int
AS 
BEGIN
-- SQL Select for one table row
SELECT TOP(1) TicketId, CreatedDate, Reason, DeviceId, Code, NumLinea, TicketStatusId, TicketStatus, ClientId, ClientName, TeamId, TeamName, OpenDate, TeamMemo, CloseDate, CloserId, CloserName, OfficeFlag FROM TICKETSVIEW WHERE TicketId = @Id
END