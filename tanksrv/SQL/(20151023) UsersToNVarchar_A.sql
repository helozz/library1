alter table users alter column Name nvarchar(200);
alter table users alter column Surname nvarchar(200);
UPDATE Users SET Flags = Flags & 254;