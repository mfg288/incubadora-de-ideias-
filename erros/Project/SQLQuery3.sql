create  procedure spGetMatchingStudenName 
@StudentName nvarchar(50)
as
Begin
	select Name from tblStudents
	where Name like @StudentName + '%'
end

exec spGetMatchingStudenName @StudentName ='ana'

select * from tblStudents