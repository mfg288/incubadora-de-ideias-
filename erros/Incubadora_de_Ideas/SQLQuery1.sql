select * from tblStudents

Create proc spGetStudentNames 'm'
@StudentName nvarchar(50)
as
Begin 
	select Name from  tblStudents
	where Name like @StudentName + '%'
End