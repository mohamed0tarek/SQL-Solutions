SELECT S.NAME
FROM STUDENTS S JOIN PACKAGES P1 USING(ID) 
        JOIN FRIENDS F USING(ID)
        JOIN PACKAGES P2 ON F.FRIEND_ID = P2.ID
WHERE P1.SALARY < P2.SALARY
ORDER BY P2.SALARY;
