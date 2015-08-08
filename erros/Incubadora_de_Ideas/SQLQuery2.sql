select dbo.EstadoIdeia ,COUNT( id) AS count
FROM dbo.EstadoIdeia ;

SELECT COUNT(e.Id) AS contar FROM dbo.EstadoIdeia e;
SELECT COUNT(e.Estado) AS contar, COUNT(e.Id) AS idcontar   FROM dbo.EstadoIdeia e;
SELECT  e.Id , e.Estado  FROM dbo.EstadoIdeia e;
