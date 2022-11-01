SELECT E.company_code, founder, COUNT(DISTINCT lead_manager_code), COUNT(DISTINCT senior_manager_code), COUNT(DISTINCT manager_code), COUNT(DISTINCT employee_code)
FROM Employee E JOIN Company C ON E.company_code = C.company_code
GROUP BY company_code, founder
ORDER BY E.company_code
