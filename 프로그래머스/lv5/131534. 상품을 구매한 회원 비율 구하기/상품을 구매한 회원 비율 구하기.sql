-- 코드를 입력하세요
# SELECT
# FROM USER_INFO A JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID

SELECT  YEAR(B.SALES_DATE) YEAR, 
        MONTH(B.SALES_DATE) MONTH,
        COUNT(DISTINCT B.USER_ID) PUCHASED_USERS,
        ROUND(COUNT(DISTINCT B.USER_ID)  -- 2021 상품 구매 회원 수
            / (SELECT COUNT(USER_ID)
                FROM USER_INFO
                WHERE YEAR(JOINED) = '2021'),1) PUCHASED_RATIO -- 2021 전체 회원 수
FROM USER_INFO A JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID
WHERE YEAR(JOINED) = '2021'
GROUP BY YEAR,MONTH 
ORDER BY YEAR,MONTH