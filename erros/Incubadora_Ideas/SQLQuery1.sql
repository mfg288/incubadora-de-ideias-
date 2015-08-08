select * from tblStudents


alter  procedure spGetMatchingStudenName 
@StudentName nvarchar(50)
as
Begin
	select Name from tblStudents
	where Name like @StudentName + '%'
end


exec spGetMatchingStudenName @StudentName ='s'