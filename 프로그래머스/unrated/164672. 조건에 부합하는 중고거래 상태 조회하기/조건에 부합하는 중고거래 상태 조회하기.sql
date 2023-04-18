SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
            (case 
            when STATUS = 'SALE' then '판매중'
            when STATUS = 'RESERVED' then '예약중'
            when STATUS = 'DONE' then '거래완료'
            end) as status
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
order by 1 desc