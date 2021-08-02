USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN TITLE_JOB VARCHAR(20))
BEGIN
	SELECT ROUND(AVG(E.SALARY),2) AS 'Média salarial'
    FROM employees E
    INNER JOIN jobs J
    ON E.JOB_ID = J.JOB_ID
    WHERE J.JOB_TITLE = TITLE_JOB;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
	