CREATE TABLE transactions
	(sender int,
    receiver int,
    amount int,
	transaction_date date,
	);
	
	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (5,2,10,'2020-2-12');

	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (1,3,15,'2020-2-13');

	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (2,1,20,'2020-2-13');

	insert into transactions( "sender","receiver","amount","transaction_date")
	values (2,3,25,'2020-2-14')

	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (3,1,20,'2020-2-15');

	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (3,2,15,'2020-2-15');

	insert into transactions ( "sender","receiver","amount","transaction_date")
	values (1,4,5,'2020-2-16');



	select *
	from transactions


select sender, sum(amount) as debited 
into "debits" 
from transactions 
group by sender

select *
from debits


select receiver, sum(amount) as credited 
into "credits" 
from transactions 
group by receiver

select *
from credits



select coalesce(sender,receiver) as "user" , coalesce(credited, 0) - coalesce(debited, 0) AS net_change
from debits A
full join credits B
on A.sender = B.receiver
order by 2 desc


