DELIMITER $$
CREATE FUNCTION FN_DT_TmToSec(p_day INT, p_tm CHAR(6))
RETURNS INT

BEGIN
       DECLARE ret_sec INT(10);
        
       SSELECT (p_day * 86400) + TIME_TO_SEC(p_tm) INTO ret_sec FROM DUAL;
       RETURN ret_sec;

END $$
DELIMITER ;