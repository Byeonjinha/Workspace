DELIMITER $$
CREATE FUNCTION FN_DT_CnvDtFmt(p_dt CHAR(8))
RETURNS CHAR(10)

BEGIN
    DECLARE ret_fmt_dt CHAR(10);

    SELECT CONCAT(SUBSTRING(p_dt,1,4), '-', SUBSTRING(p_dt,5,2), '-', SUBSTRING(p_dt,7,2)) INTO ret_fmt_dt
    FROM   DUAL;

    RETURN ret_fmt_dt;

END $$
DELIMITER ;