-- 코드를 입력하세요
SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK LEFT OUTER JOIN BOOK_SALES ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
WHERE SALES_DATE LIKE '2022-01%'
GROUP BY 1
ORDER BY 1 ASC