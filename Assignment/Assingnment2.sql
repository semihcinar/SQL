CREATE TABLE users
	(User_id int,
    Action varchar(MAX),
    Date date,
	);
	insert into users( "User_id","Action","Date")
	values (1,'Start','1-1-20');
	insert into users( "User_id","Action","Date")
	values (1,'Cansel','1-2-20');
	insert into users( "User_id","Action","Date")
	values (2,'Start','1-3-20');
	insert into users( "User_id","Action","Date")
	values (2,'Publish','1-4-20');
	insert into users( "User_id","Action","Date")
	values (3,'Start','1-5-20');
	insert into users( "User_id","Action","Date")
	values (3,'Cansel','1-6-20');
	insert into users( "User_id","Action","Date")
	values (1,'Start','1-7-20');
	insert into users( "User_id","Action","Date")
	values (1,'Publish','1-8-20');



CREATE TABLE Desired_output
	(User_id int,
    Publish_rate varchar(50),
    Cancel_rate varchar(50),
	);
	
	insert into Desired_output ( "User_id","Publish_rate","Cancel_rate")
	values (1,0.5,0.5);
	insert into Desired_output ( "User_id","Publish_rate","Cancel_rate")
	values (2,1.0,0.0);
	insert into Desired_output ( "User_id","Publish_rate","Cancel_rate")
	values (3,0.0,1.0);





	select User_id, count (Action) as StartSay
	from users
	where Action ='Start'
	GROUP BY User_id
	


SELECT        User_id, Action, COUNT(Action) AS Say
FROM            users
WHERE        (Action = 'Cancel')
GROUP BY User_id, Action
ORDER BY User_id



	

	select * from users 


	select *
	from users


	select ()*1 as a
	from users, Desired_output


