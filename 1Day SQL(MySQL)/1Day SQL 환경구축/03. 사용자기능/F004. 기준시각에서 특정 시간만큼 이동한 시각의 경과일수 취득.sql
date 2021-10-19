DELIMITER $$
CREATE FUNCTION FN_DT_OffsetTmDno(p_day INT, p_tm CHAR(6), p_offset_sec INT)
RETURNS INT

BEGIN
    DECLARE ret_offset_dno INT(3);
    
    SELECT FLOOR(s1.sec/86400) INTO ret_offset_dno
    FROM   (
            SELECT (p_day * 86400) + TIME_TO_SEC(p_tm) + (p_offset_sec) sec
            FROM   DUAL
           )s1;

    RETURN ret_offset_dno;

END $$
DELIMITER ;