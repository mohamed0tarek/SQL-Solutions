delete from Person where id not in( 
    select temp.id from (
        select min(id) as id from Person group by email
    ) temp
)
