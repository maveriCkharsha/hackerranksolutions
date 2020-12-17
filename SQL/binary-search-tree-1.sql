--https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT 
    CASE 
        WHEN p IS NULL THEN n || ' Root'
        WHEN n IN (SELECT DISTINCT p FROM bst) THEN n || ' Inner'
        ELSE n || ' Leaf'
    END
FROM bst
ORDER BY n;
