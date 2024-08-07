USE [PropertyManagerDB]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetSaldoPrevisto_Inquilino]    Script Date: 23/01/2024 10:48:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetSaldoPrevisto_Inquilino]
(@in_TenantId AS int)

RETURNS decimal
 
AS

BEGIN
	DECLARE @TotalExpected decimal
	SET	@TotalExpected = (SELECT SUM(ValorPrevisto)
FROM Recebimentos
WHERE ID_Inquilino = @in_TenantId)

	RETURN @TotalExpected
END
GO
