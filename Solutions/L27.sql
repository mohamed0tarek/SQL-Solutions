select employee_id, IF(mod(employee_id,2) = 0 or name REGEXP '\\bM',0,salary) as bonus
from Employees
order by employee_id
