-- 코드를 입력하세요
-- SELECT b.animal_id, b.animal_type, b.name
-- FROM animal_ins a, animal_outs b
-- where b.animal_id = a.animal_id(+)
-- and b.sex_upon_outcome != a.sex_upon_intake
-- order by b.animal_id;

select b.animal_id, b.animal_type, b.name
FROM animal_ins a left outer join animal_outs b
on a.animal_id = b.animal_id
where b.sex_upon_outcome != a.sex_upon_intake
order by b.animal_id;