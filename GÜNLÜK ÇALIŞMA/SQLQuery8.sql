select  min(Milliseconds) 
from tracks

select   top(1) Name, max(Milliseconds)
from tracks
group by Name