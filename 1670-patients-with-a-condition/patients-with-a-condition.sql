/* Write your T-SQL query statement below */
-- SELECT patient_id,patient_name, conditions
-- FROM patients
-- WHERE conditions LIKE '%DIAB1%' OR conditions LIKE '% DIAB1%' OR conditions LIKE '%DIAB1 %' OR conditions LIKE 'DIAB1%' OR conditions LIKE ' DIAB1%'

select patient_id,patient_name,conditions from Patients
where conditions like 'DIAB1%'  or  conditions like '% DIAB1%' ;