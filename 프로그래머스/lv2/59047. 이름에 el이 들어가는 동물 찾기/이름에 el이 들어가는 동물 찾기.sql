-- 코드를 입력하세요
SELECT animal_id, name
FROM animal_ins
where animal_type='Dog'
and (name like '%el%' or name like '%El%')
order by name;