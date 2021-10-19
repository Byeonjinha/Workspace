-- ------------------------------------------------
-- ## 사용자 함수 일괄 삭제
-- ------------------------------------------------

DROP FUNCTION IF EXISTS FN_CD_CnvLnNm;
DROP FUNCTION IF EXISTS FN_CD_CnvStnNm;
DROP FUNCTION IF EXISTS FN_CD_CnvRoutNm;
DROP FUNCTION IF EXISTS FN_CD_CnvRunPtnNote;
DROP FUNCTION IF EXISTS FN_CD_CnvCarNm;
DROP FUNCTION IF EXISTS FN_CD_CnvMkNm;

-- ------------------------------------------------
-- ## 사용자 함수 일괄 생성
-- ------------------------------------------------

SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F021. 선코드로 선명을 취득.sql;
SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F022. 역코드로 역명을 취득.sql;
SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F023. 노선코드로 노선명을 취득.sql;
SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F024. 운행패턴코드로 운행패턴명을 취득.sql;
SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F025. 차량코드로 차량명을 취득.sql;
SOURCE C:\1Day SQL(MySQL)\1Day SQL 환경구축\03. 사용자기능\F026. 구성코드로 구성명을 취득.sql;
