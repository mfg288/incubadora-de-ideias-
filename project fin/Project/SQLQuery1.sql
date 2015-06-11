SELECT *
 FROM dbo.Tag e, (SELECT *FROM dbo.Tag e) a
 where e.IdTag = a.IdTag;

SELECT e.IdTag, e.Nome, count(*) as num
 FROM dbo.Tag e,DBO.TagIdeia i
 where e.IdTag =i.IdTag
 group by e.IdTag, e.Nome
 order by num;


 select * from dbo.TagIdeia
 insert into TagIdeia values (1,1);