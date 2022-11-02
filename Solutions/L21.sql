select u.name, sum(t.amount) as balance
from Transactions t join Users u on t.account = u.account
group by u.name
having sum(t.amount) > 10000
