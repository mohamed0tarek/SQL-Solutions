follow the steps in order (1,2,3)
-----------------------------------
set @rowindex := -1;  /* 1) creates an index*/ 
/* 3) the outer query will select the average of the 2(for odd no. of values)/1(for even) values we found in the middle of the sorted array */
select round(avg(lat_n),4)
from
/* 2) the index will increment for each new value of lat_n it finds, and sort them by lat_n
*/
(select @rowindex:=@rowindex+1 as rowindex, lat_n 
from station
order by lat_n) as l 
where l.rowindex in (floor(@rowindex/2), ceil(@rowindex/2));
