
INSERT INTO Mailboxes ([userId], [type] ,[timeCreated] ,[timeDeleted] ,[details] ,[message] ,[rewards] ,[isRead] ,[topic] ,[sender])  
SELECT us.id, 1 as 'type', 1462531049733 as 'timeCreated', 1462617449733 as 'timeDeleted', 0 as 'details', N'Уважаемые игроки, ночью 6 мая производились тех. работы на сервере, приносим свои извинения за доставленные неудобства. Dear players, Today was maintenance, we are appoligize and give you some compensation. ' as 'message', N'[{"id":0,"lvl":0,"num":3500,"type":0,"item":0,"special":false},{"id":0,"lvl":0,"num":500,"type":5,"item":0,"special":false},{"id":0,"lvl":0,"num":150,"type":1,"item":0,"special":false}]' as 'rewards', 0 as 'isRead', N'Maintenance' as 'topic', 0 as 'sender' FROM Users AS us
WHERE us.lastLogin > 1462485600000
