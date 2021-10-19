DELIMITER $$
CREATE FUNCTION FN_DT_CnvTmFmt(p_tm CHAR(6))
RETURNS CHAR(8)

BEGIN
    DECLARE ret_fmt_tm CHAR(8);
     
    SELECT IF(p_tm = '','',CONCAT(SUBSTRING(p_tm,1,2), ':', SUBSTRING(p_tm,3,2), ':', SUBSTRING(p_tm,5,2))) INTO ret_fmt_tm
    FROM   DUAL;

    RETURN ret_fmt_tm;

END $$
DELIMITER ;