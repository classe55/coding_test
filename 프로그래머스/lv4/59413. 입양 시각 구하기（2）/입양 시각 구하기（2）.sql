SELECT HOUR, COUNT(O.DATETIME) AS COUNT
FROM
(
    SELECT LEVEL-1 AS HOUR
    FROM DUAL 
    CONNECT BY LEVEL<=24)A LEFT join ANIMAL_OUTS O
ON A.HOUR = to_char(O.DATETIME,'HH24')
GROUP BY HOUR
ORDER BY HOUR;