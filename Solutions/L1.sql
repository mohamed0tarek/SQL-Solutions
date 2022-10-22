select T.name as Employee
from Employee as T, Employee as S
where T.managerId = S.id and T.salary > S.salary
