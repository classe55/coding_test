-- 코드를 입력하세요
select (
    case
        when price < 10000 then 0
        else truncate(price,-4)
    end ) as price_group,
    count(product_id) as products
from PRODUCT
group by price_group
order by price_group