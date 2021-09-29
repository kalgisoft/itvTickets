CREATE PROCEDURE [dbo].[spDevice_Update]
@Id INT,
@Code NVARCHAR(10),
@Type NVARCHAR(50),
@Info NVARCHAR(50),
@PlantId INT,
@NumLinea INT,
@IdContractor INT
AS
BEGIN
UPDATE Devices SET Code = @Code, Type = @Type, Info = @Info, PlantId = @PlantId, NumLinea = @NumLinea, IdContractor = @IdContractor WHERE Id = @Id
END
