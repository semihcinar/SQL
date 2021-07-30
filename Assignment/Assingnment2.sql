CREATE TABLE Users
	(User_id int,
    Action varchar(MAX),
    Date date,
	);
	insert into users( "User_id","Action","Date")
	values (1,'Start','1-1-20');
	insert into users( "User_id","Action","Date")
	values (1,'Cancel','1-2-20');
	insert into users( "User_id","Action","Date")
	values (2,'Start','1-3-20');
	insert into users( "User_id","Action","Date")
	values (2,'Publish','1-4-20');
	insert into users( "User_id","Action","Date")
	values (3,'Start','1-5-20');
	insert into users( "User_id","Action","Date")
	values (3,'Cancel','1-6-20');
	insert into users( "User_id","Action","Date")
	values (1,'Start','1-7-20');
	insert into users( "User_id","Action","Date")
	values (1,'Publish','1-8-20');


SELECT user_id, 
sum(CASE WHEN Action = 'Start' THEN 1 ELSE 0 END) AS starts, 
sum(CASE WHEN Action = 'Cancel' THEN 1 ELSE 0 END) AS cancels, 
sum(CASE WHEN Action = 'Publish' THEN 1 ELSE 0 END) AS publishes
into T1
FROM Users
GROUP BY user_id 


SELECT user_id, 1.0*publishes/starts AS publish_rate, 1.0*cancels/starts AS cancel_rate
FROM T1