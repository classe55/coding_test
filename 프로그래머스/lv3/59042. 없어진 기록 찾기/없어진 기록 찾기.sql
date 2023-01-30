select OUTS.ANIMAL_ID, OUTS.NAME
from ANIMAL_OUTS OUTS LEFT OUTER JOIN ANIMAL_INS INS 
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE INS.ANIMAL_ID IS NULL
order by OUTS.animal_id;