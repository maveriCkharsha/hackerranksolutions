-- https://www.hackerrank.com/challenges/the-company/problem

SELECT 
  c.company_code,
  founder,
  COUNT(DISTINCT lm.lead_manager_code) as lead_manager_count,
  COUNT(DISTINCT sm.senior_manager_code) as senior_manager_count,
  COUNT(DISTINCT m.manager_code) as manager_count,
  COUNT(DISTINCT e.employee_code) as employee_count
FROM company c
    INNER JOIN lead_manager lm ON c.company_code = lm.company_code 
    INNER JOIN senior_manager sm ON lm.lead_manager_code = sm.lead_manager_code
    INNER JOIN manager m ON sm.senior_manager_code = m.senior_manager_code
    INNER JOIN employee e ON e.manager_code = m.manager_code
-- WHERE c.company_code = 'C1'
GROUP BY c.company_code, founder
ORDER BY c.company_code;