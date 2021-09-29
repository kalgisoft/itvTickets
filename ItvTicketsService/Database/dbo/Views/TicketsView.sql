CREATE VIEW [dbo].[TicketsView]
	AS select TicketId,
CreatedDate,
Reason,
DeviceId,
D.Code,
D.NumLinea,
'PlantName' = P.Name,
Tickets.TicketStatusId,
TSM.TicketStatus,
ClientId,
'ClientName' = AU1.UserName,
TeamId,
'TeamName' = AU2.UserName,
OpenDate,
TeamMemo,
CloseDate,
CloserId,
'CloserName' = AU3.UserName,
OfficeFlag from Tickets
left join Devices D
on D.Id = Tickets.DeviceId
left join Plant P
on D.PlantId = P.Id
left join TicketStatusMaster TSM
on Tickets.TicketStatusId = TSM.TicketStatusId
left join ApplicationUser AU1
on Tickets.ClientId = AU1.Id
left join ApplicationUser AU2
on Tickets.TeamId = AU2.Id
left join ApplicationUser AU3
on Tickets.CloserId = AU3.Id

