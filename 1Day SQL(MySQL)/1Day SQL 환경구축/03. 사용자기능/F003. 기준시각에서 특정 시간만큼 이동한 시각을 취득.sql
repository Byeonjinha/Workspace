DELIMITER $$
CREATE FUNCTION FN_DT_OffsetTm(p_day INT, p_tm CHAR(6), p_offset_sec INT)
RETURNS CHAR(6)

BEGIN
    DECLARE ret_offset_tm CHAR(6);
    
    SELECT CONCAT(LPAD(FLOOR(MOD(s1.sec,86400)/3600),2,'0'),
             LPAD(FLOOR(MOD(MOD(s1.sec,86400),3600)/60),2,'0'),
             LPAD(FLOOR(MOD(MOD(MOD(s1.sec,86400),3600),60)),2,'0')) INTO ret_offset_tm
    FROM   (
            SELECT (p_day * 86400) + TIME_TO_SEC(p_tm) + (p_offset_sec) sec
            FROM   DUAL
           )s1;

    RETURN ret_offset_tm;

END $$
DELIMITER ;