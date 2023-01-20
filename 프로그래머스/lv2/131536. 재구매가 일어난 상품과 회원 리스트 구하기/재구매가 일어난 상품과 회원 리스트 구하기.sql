-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
group by 1,2
having count(*) >=2
order by 1,2 desc