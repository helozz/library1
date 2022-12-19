	use [tankwars]
	go
	
	UPDATE [dbo].[Users]
	set Flags = Flags-power(2,(15-1))
	where Flags>=power(2,(15-1))
	go
	
	UPDATE [dbo].[Users]
	set Flags = Flags-power(2,(14-1))
	where Flags>=power(2,(14-1))
	go
	
	UPDATE [dbo].[Users]
	set Photo = '1', Flags = Flags-power(2,(13-1))
	where Flags>=power(2,(13-1))
	go

	UPDATE [dbo].[Users]
	set Flags = Flags-power(2,(12-1))
	where Flags>=power(2,(12-1))
	go
	
	UPDATE [dbo].[Users]
	set Flags = Flags+power(2,(13-1)), Photo = ''
	where Photo = '1'
	go
	
	UPDATE [dbo].[Users]
	set Flags = Flags+power(2,(12-1))+power(2,(14-1))+power(2,(15-1))
	go