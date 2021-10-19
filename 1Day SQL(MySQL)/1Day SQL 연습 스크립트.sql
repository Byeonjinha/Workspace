----------------------------------------------------------------------------------------------------
** �Ϸ� 10�� SQL �ǽ� ��ũ��Ʈ
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
** 1��. �̷а� �ǽ� ȯ�� �����
** 7��. �ǽ��� ������
----------------------------------------------------------------------------------------------------

--[�� ���̺�]

SELECT *
FROM   TB_CUSTOMER;

--[�߰��� ���̺�]

SELECT *
FROM   TB_ADD_CUSTOMER;

--[����Ʈ ���̺�]

SELECT *
FROM   TB_POINT;

--[2017�� ����Ʈ ���̺�]

SELECT *
FROM   TB_POINT_2017;

--[2018�� ����Ʈ ���̺�]

SELECT *
FROM   TB_POINT_2018;

--[2019�� ����Ʈ ���̺�]

SELECT *
FROM   TB_POINT_2019;

--[��Ÿ���� ���̺�]

SELECT *
FROM   TB_ETC_INFO;

--[ǰ������ ���̺�]

SELECT *
FROM   TB_ITEM_INFO;

--[�Ǹ� ���̺�]

SELECT *
FROM   TB_SALES;

--[9�� �Ǹ� ���̺�]

SELECT *
FROM   TB_SALES_09;

--[����Ʈ���� ���̺�]

SELECT *
FROM   TB_POINT_INFO;

--[���� ���̺�]

SELECT *
FROM   TB_GRADE;

--[7�� ���� ���̺�]

SELECT *
FROM   TB_GRADE_07;

--[8�� ���� ���̺�]

SELECT *
FROM   TB_GRADE_08;

--[9�� ���� ���̺�]

SELECT *
FROM   TB_GRADE_09;

--[2019�� ���� ���̺�]

SELECT *
FROM   TB_GRADE_2019;

--[2020�� ���� ���̺�]

SELECT *
FROM   TB_GRADE_2020;

--[������ ���̺�]

SELECT *
FROM   TB_CLASS_INFO;

--[�����ð�ǥ ���̺�]

SELECT *
FROM   TB_TRAIN_TM;

----------------------------------------------------------------------------------------------------
** 2��. SQL ��ɾ�� �Լ�
** 8��. �⺻��ɾ�
** 8.1. SELECT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER;

[����#2]

SELECT CUSTOMER_CD,
       CUSTOMER_NM,
       PHONE_NUMBER,
       EMAIL
FROM   TB_CUSTOMER;

[����#3]

SELECT CUSTOMER_CD AS ���ڵ�,
       CUSTOMER_NM AS ����,
       PHONE_NUMBER AS ��ȭ��ȣ,
       EMAIL AS �̸���
FROM   TB_CUSTOMER;

[����#4] - ���̺� ������ ����� �ʵ� �˻� (�߰� �ǽ������� ���� �ܿ����� �����ϹǷ� �� �ܿ������� �������)

SELECT A.CUSTOMER_CD,
       A.CUSTOMER_NM,
       A.PHONE_NUMBER,
       A.EMAIL
FROM   TB_CUSTOMER A;

[����#5] - ���������� ����� �ʵ� �˻� (�߰� �ǽ������� ���� �ܿ����� �����ϹǷ� �� �ܿ������� �������)

SELECT S1.CUST_NM,
       S1.CUST_CD,
       S1.PH_NUM,
       S1.EMAIL
FROM   (
        SELECT A.CUSTOMER_CD AS CUST_NM,
               A.CUSTOMER_NM AS CUST_CD,
               A.PHONE_NUMBER AS PH_NUM,
               A.EMAIL
        FROM   TB_CUSTOMER A
       )S1;

[����#1]

[SQL1]

SELECT A.CUSTOMER_CD,
       A.CUSTOMER_NM,
       A.MW_FLG,
       B.POINT
FROM   TB_CUSTOMER A,
       TB_POINT B
WHERE  A.CUSTOMER_CD = '2017042'
AND    A.CUSTOMER_CD = B.CUSTOMER_CD
AND    B.POINT > 10000;

[SQL2]

SELECT CU.CUSTOMER_CD,
       CU.CUSTOMER_NM,
       CU.MW_FLG,
       CP.POINT
FROM   TB_CUSTOMER CU,
       TB_POINT CP
WHERE  CU.CUSTOMER_CD = '2017042'
AND    CU.CUSTOMER_CD = CP.CUSTOMER_CD
AND    CP.POINT > 10000;

----------------------------------------------------------------------------------------------------
** 8.2. WHERE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  MW_FLG = 'M';

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_NM = '���ѱ�';

----------------------------------------------------------------------------------------------------
** 8.3. AND
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD > '2019000'
AND    MW_FLG = 'W';

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  BIRTH_DAY < '19900101'
AND    MW_FLG = 'M';

----------------------------------------------------------------------------------------------------
** 8.4. OR
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  BIRTH_DAY >= '19900101'
OR     TOTAL_POINT >= 20000;

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  MW_FLG = 'M'
AND    (BIRTH_DAY < '19700101'
OR      TOTAL_POINT >= 20000);

----------------------------------------------------------------------------------------------------
** 8.5. BETWEEN .. AND
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  MW_FLG = 'W'
AND    TOTAL_POINT BETWEEN 10000 AND 20000;

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  BIRTH_DAY BETWEEN '19800101' AND '19891231';

[����#3]

SELECT *
FROM   TB_CUSTOMER
WHERE  TOTAL_POINT NOT BETWEEN 10000 AND 30000;

----------------------------------------------------------------------------------------------------
** 8.6. �񱳿�����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  TOTAL_POINT < 10000
OR     TOTAL_POINT >= 30000;

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  MW_FLG <> 'W'
AND    TOTAL_POINT <= 10000;

[����#3] - BEWEEN .. AND ..�� ����� [����#1]�� ���� ����� ��Ÿ���� SQL�� ���� �ܿ����� ����

SELECT *
FROM   TB_CUSTOMER
WHERE  TOTAL_POINT NOT BETWEEN 10000 AND 30000;

----------------------------------------------------------------------------------------------------
** 8.7. LIKE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD LIKE '2018%';

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  (CUSTOMER_CD LIKE '2017%'
OR      CUSTOMER_CD LIKE '2019%')
AND    MW_FLG = 'W';

[����#3]

SELECT *
FROM   TB_CUSTOMER
WHERE  PHONE_NUMBER NOT LIKE '___-____-____';

----------------------------------------------------------------------------------------------------
** 8.8. IN
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_NM IN ('�����','������','����ö','���ѱ�','������','�̾Ƹ�');

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD IN ('2017108','2018254','2019167')
AND    MW_FLG = 'M';

----------------------------------------------------------------------------------------------------
** 8.9. ORDER BY
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
ORDER  BY MW_FLG DESC,
          CUSTOMER_NM;

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  MW_FLG = 'M'
ORDER  BY TOTAL_POINT DESC;

----------------------------------------------------------------------------------------------------
** 8.10. GROUP BY
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD
FROM   TB_GRADE
GROUP  BY CLASS_CD;

[����#2]

SELECT CLASS_CD,
       SUM(KOR) AS TOT_KOR,
       AVG(KOR) AS AVG_KOR,
       MIN(KOR) AS MIN_KOR,
       MAX(KOR) AS MAX_KOR,
       COUNT(*) AS COUNT
FROM   TB_GRADE
GROUP  BY CLASS_CD;

[����#3]

SELECT CLASS_CD,
       SUM(KOR) AS TOT_KOR,
       SUM(ENG) AS TOT_ENG,
       SUM(MAT) AS TOT_MAT,
       ROUND(AVG(KOR),1) AS AVG_KOR,
       ROUND(AVG(ENG),1) AS AVG_ENG,
       ROUND(AVG(MAT),1) AS AVG_MAT
FROM   TB_GRADE
GROUP  BY CLASS_CD;

[����#4]

SELECT CLASS_CD,
       SUM(KOR) AS TOT_KOR,
       SUM(ENG) AS TOT_ENG,
       SUM(MAT) AS TOT_MAT,
       ROUND(AVG(KOR),1) AS AVG_KOR,
       ROUND(AVG(ENG),1) AS AVG_ENG,
       ROUND(AVG(MAT),1) AS AVG_MAT
FROM   TB_GRADE
GROUP  BY CLASS_CD
HAVING AVG(KOR) >= 80;

----------------------------------------------------------------------------------------------------
** 8.11. DISTINCT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT DISTINCT SALES_DT,
       PRODUCT_NM
FROM   TB_SALES
ORDER  BY SALES_DT,
          PRODUCT_NM;

[����#2]

SELECT DISTINCT PRODUCT_NM
FROM   TB_SALES
ORDER  BY PRODUCT_NM;

----------------------------------------------------------------------------------------------------
** 8.12. JOIN
----------------------------------------------------------------------------------------------------

[����#1]

SELECT B.CLASS_NM,
       A.STUDENT_NO,
       A.STUDENT_NM,
       A.KOR,
       A.ENG,
       A.MAT,
       A.TOT,
       A.AVG
FROM   TB_GRADE A,
       TB_CLASS_INFO B
WHERE  A.CLASS_CD = B.CLASS_CD;

[����#2]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A
JOIN   TB_GRADE_09 B
ON     A.TEST_CD = B.TEST_CD;

[����#3]

[SQL1]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A
LEFT   JOIN TB_GRADE_09 B
ON     A.TEST_CD = B.TEST_CD;

[SQL2]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A,
       TB_GRADE_09 B
WHERE  A.TEST_CD = B.TEST_CD(+);

[����#4]

[SQL1]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A
RIGHT  JOIN TB_GRADE_09 B
ON     A.TEST_CD = B.TEST_CD;

[SQL2]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A,
       TB_GRADE_09 B
WHERE  A.TEST_CD(+) = B.TEST_CD;

[����#5]

SELECT A.TEST_CD AS "08_TEST_CD",
       A.KOR AS "08_KOR",
       A.ENG AS "08_ENG",
       A.MAT AS "08_MAT",
       B.TEST_CD AS "09_TEST_CD",
       B.KOR AS "09_KOR",
       B.ENG AS "09_ENG",
       B.MAT AS "09_MAT"
FROM   TB_GRADE_08 A
FULL   OUTER JOIN TB_GRADE_09 B
ON     A.TEST_CD = B.TEST_CD;

----------------------------------------------------------------------------------------------------
** 8.13. CASE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       STUDENT_NO,
       STUDENT_NM,
       CASE  WHEN KOR >= 90 AND KOR <= 100 THEN '��'
             WHEN KOR >= 80 AND KOR <= 89 THEN '��'
             WHEN KOR >= 70 AND KOR <= 79 THEN '��'
             WHEN KOR >= 60 AND KOR <= 69 THEN '��'
             WHEN KOR < 60 THEN '��'
       END AS KOR,
       CASE  WHEN ENG BETWEEN 90 AND 100 THEN '��'
             WHEN ENG BETWEEN 80 AND 89 THEN '��'
             WHEN ENG BETWEEN 70 AND 79 THEN '��'
             WHEN ENG BETWEEN 60 AND 69 THEN '��'
             ELSE '��'
        END AS ENG,
        CASE WHEN MAT IN (90,91,92,93,94,95,96,97,98,99,100)
                  THEN '��'
             WHEN MAT IN (80,81,82,83,84,85,86,87,88,89) THEN '��'
             WHEN MAT IN (70,71,72,73,74,75,76,77,78,79) THEN '��'
             WHEN MAT IN (60,61,62,63,64,65,66,67,68,69) THEN '��'
             ELSE '��'
        END AS MAT,
        TOT,
        AVG
FROM   TB_GRADE;

[����#2]

SELECT CASE CLASS_CD WHEN 'A' THEN '�����Խù�'
                     WHEN 'B' THEN '�ܰ���'
                     WHEN 'C' THEN '�������Թ�'
                     WHEN 'D' THEN '�Ϲ��ι�'
       END AS CLASS_NM,
       STUDENT_NO,
       STUDENT_NM
FROM   TB_GRADE;

----------------------------------------------------------------------------------------------------
** 8.14. ROWNUM
----------------------------------------------------------------------------------------------------

[����#1]

SELECT ROWNUM,
       CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       BIRTH_DAY,
       PHONE_NUMBER
FROM   TB_CUSTOMER;

[����#2]

SELECT ROWNUM,
       CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       BIRTH_DAY,
       PHONE_NUMBER
FROM   TB_CUSTOMER
WHERE  MW_FLG = 'M'
ORDER  BY CUSTOMER_NM;

----------------------------------------------------------------------------------------------------
** 8.15. NULL
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  PHONE_NUMBER IS NULL
OR     EMAIL IS NULL;

[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  (MW_FLG = 'M'
AND     EMAIL IS NULL)
OR     (MW_FLG = 'W'
AND     EMAIL IS NOT NULL)
ORDER  BY MW_FLG DESC;

[����#3]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_NM IN ('������','�ڽ´�','������','���üҸ�','������')
AND    PHONE_NUMBER IS NOT NULL;

----------------------------------------------------------------------------------------------------
** 8.16. DUAL
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   DUAL;

[����#2]

SELECT 123 * 45,
       SYSDATE + 30,
       '1Day SQL' || ' �ǽ�',
       SUBSTR('20190820',1,4)
FROM   DUAL;

[����#3]

SELECT '2019-' || ROWNUM
FROM   DUAL
CONNECT BY LEVEL <= 5;

----------------------------------------------------------------------------------------------------
** 8.17. UPDATE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE;

[����#2]

UPDATE TB_GRADE
SET    TOT = KOR + ENG + MAT,
       AVG = ROUND((KOR + ENG + MAT) / 3,1)
WHERE  CLASS_CD IN ('A','B');

[����#3]

SELECT *
FROM   TB_GRADE;

[����#4]

UPDATE TB_GRADE
SET    TOT = KOR + ENG + MAT,
       AVG = ROUND((KOR + ENG + MAT) / 3,1);

[����#5]

SELECT *
FROM   TB_GRADE;

[����#6]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.18. INSERT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE;

[����#2]

INSERT INTO TB_GRADE (CLASS_CD, STUDENT_NO, STUDENT_NM, KOR, ENG, MAT)
       VALUES ('A',3,'�������',97,88,95);

[����#3]

INSERT INTO TB_GRADE VALUES ('B',4,'�̵���',86,92,90,0,0);

[����#4]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#5]

COMMIT;

[����#6]

SELECT * FROM TB_POINT_2017;
SELECT * FROM TB_POINT_2018;
SELECT * FROM TB_POINT_2019;

[����#7]

INSERT ALL
       WHEN SUBSTR(REG_DTTM,1,4) = '2017' THEN INTO TB_POINT_2017
       WHEN SUBSTR(REG_DTTM,1,4) = '2018' THEN INTO TB_POINT_2018
       WHEN SUBSTR(REG_DTTM,1,4) = '2019' THEN INTO TB_POINT_2019
       ELSE INTO TB_POINT_2019
SELECT CUSTOMER_CD,
       SEQ_NO,
       POINT_MEMO,
       POINT,
       REG_DTTM
FROM   TB_POINT
WHERE  REG_DTTM >= '20170101000000';

[����#8]

SELECT * FROM TB_POINT_2017;
SELECT * FROM TB_POINT_2018;
SELECT * FROM TB_POINT_2019;

[����#9]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.19. MERGE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER;

[����#2]

SELECT *
FROM   TB_ADD_CUSTOMER;

[����#3]

MERGE INTO TB_CUSTOMER CU
      USING TB_ADD_CUSTOMER NC
      ON   (CU.CUSTOMER_CD = NC.CUSTOMER_CD)
      WHEN MATCHED THEN
           UPDATE SET CU.CUSTOMER_NM = NC.CUSTOMER_NM,
                      CU.MW_FLG = NC.MW_FLG,
                      CU.BIRTH_DAY = NC.BIRTH_DAY,
                      CU.PHONE_NUMBER = NC.PHONE_NUMBER
      WHEN NOT MATCHED THEN
           INSERT (CU.CUSTOMER_CD, CU.CUSTOMER_NM, CU.MW_FLG, CU.BIRTH_DAY,
                   CU.PHONE_NUMBER, CU.EMAIL, CU.TOTAL_POINT, CU.REG_DTTM)
              VALUES (NC.CUSTOMER_CD, NC.CUSTOMER_NM, NC.MW_FLG, NC.BIRTH_DAY,
                   NC.PHONE_NUMBER, '', 0, '20191015082030');

[����#4]

SELECT *
FROM   TB_CUSTOMER;

[����#5]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.20. DELETE
-------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#2]

DELETE
FROM   TB_GRADE
WHERE  STUDENT_NM IN ('�����','�ڽ´�','�̾Ƹ�');

[����#3]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#4]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.21. COMMIT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#2]

UPDATE TB_GRADE
SET    TOT = KOR + ENG + MAT,
       AVG = ROUND((KOR + ENG + MAT) / 3,1)
WHERE  STUDENT_NM IN ('�������','�̵���');

[����#3]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#4]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.22. ROLLBACK
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#2]

DELETE
FROM   TB_GRADE
WHERE  CLASS_CD IN ('B','D');

[����#3]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#4]

ROLLBACK;

[����#5]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 8.23. Ʈ������� ����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[����#2]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042';

[����#3]

INSERT INTO TB_POINT VALUES ('2017042',5,'����̱� ���� ����Ʈ ����',3200,'20190801234530');

[����#4]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042';

[����#5]

UPDATE TB_CUSTOMER CU
SET    CU.TOTAL_POINT = (SELECT SUM(CP.POINT)
                         FROM   TB_POINT CP
                         WHERE  CP.CUSTOMER_CD = CU.CUSTOMER_CD
                         GROUP  BY CP.CUSTOMER_CD
                        )
WHERE   CP.CUSTOMER_CD = '2017042';

[����#6]

ROLLBACK;

-- [����#1]���� [����#4] ���� ����

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[����#2]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042';

[����#3]

INSERT INTO TB_POINT VALUES ('2017042',5,'����̱� ���� ����Ʈ ����',3200,'20190801234530');

[����#4]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042';

-- [����#1]���� [����#4] ���� ��

[����#7]

UPDATE TB_CUSTOMER CU
SET    CU.TOTAL_POINT = (SELECT SUM(CP.POINT)
                         FROM   TB_POINT CP
                         WHERE  CP.CUSTOMER_CD = CU.CUSTOMER_CD
                         GROUP  BY CP.CUSTOMER_CD
                        )
WHERE   CU.CUSTOMER_CD = '2017042';

[����#8]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[����#9]

COMMIT;

----------------------------------------------------------------------------------------------------
** 8.24. ��������(SUB QUERY)�� ����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT  S2.CUSTOMER_CD,
        (SELECT CT.CUSTOMER_NM
         FROM   TB_CUSTOMER CT
         WHERE  CT.CUSTOMER_CD = S2.CUSTOMER_CD
        ) AS CUSTOMER_NM,
        S2.TOT_POINT
FROM   (
        SELECT  S1.CUSTOMER_CD,
                S1.TOT_POINT
        FROM   (
                SELECT CUSTOMER_CD,
                       SUM(POINT) AS TOT_POINT
                FROM   TB_POINT
                WHERE  CUSTOMER_CD >= '2019000'
                GROUP  BY CUSTOMER_CD
               ) S1
        WHERE  S1.TOT_POINT > 10000
       ) S2
WHERE  S2.CUSTOMER_CD IN (
                      SELECT CUSTOMER_CD
                      FROM   TB_CUSTOMER
                      WHERE  MW_FLG = 'W'
                     );

----------------------------------------------------------------------------------------------------
** 8.25. EXISTS
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_POINT CP
WHERE  EXISTS (SELECT 'A'
               FROM   TB_CUSTOMER CU
               WHERE  CU.CUSTOMER_CD = CP.CUSTOMER_CD
               AND    CU.MW_FLG = 'M');

----------------------------------------------------------------------------------------------------
** 8.26. �˻� ������ �Է��ؼ� SQL�� ����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE
WHERE  CLASS_CD = :V1
ORDER  BY CLASS_CD,
          STUDENT_NO;
          
[����#2]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_NM LIKE '%' || :���� || '%'
AND    MW_FLG = :����;


----------------------------------------------------------------------------------------------------
** 8.27. �ּ� ó��
----------------------------------------------------------------------------------------------------

[����#1]

REM ****************************************
REM :: CUSTOMER_CD�� '2018' �̻��� �˻�
REM ****************************************
SELECT CUSTOMER_CD,      -- ���ڵ�
       CUSTOMER_NM,      -- ����
       MW_FLG,           -- ��������
       BIRTH_DAY,        -- ����
       /*
       PHONE_NUMBER,     ��ȭ��ȣ
       EMAIL,            �̸���
       */
       TOTAL_POINT,      -- ����Ʈ
       REG_DTTM          -- �����
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD >= '2018000';

----------------------------------------------------------------------------------------------------
** 9��. ���ո�ɾ�
----------------------------------------------------------------------------------------------------

[����#1]

[SQL1]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  KOR >= 90
ORDER  BY CLASS_CD,
          STUDENT_NO;

[SQL2]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  ENG >= 90
ORDER  BY CLASS_CD,
          STUDENT_NO;

[SQL2]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  MAT >= 90
ORDER  BY CLASS_CD,
          STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 9.1. UNION
----------------------------------------------------------------------------------------------------

[����#2]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  KOR >= 90
UNION
SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  ENG >= 90;

----------------------------------------------------------------------------------------------------
** 9.2. UNION ALL
----------------------------------------------------------------------------------------------------

[����#1]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  KOR >= 90
UNION  ALL
SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  ENG >= 90;

----------------------------------------------------------------------------------------------------
** 9.3. INTERSECT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  MAT >= 90
INTERSECT
SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  KOR >= 90;

----------------------------------------------------------------------------------------------------
** 9.4. MINUS
----------------------------------------------------------------------------------------------------

[����#1]

SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  MAT >= 90
MINUS
SELECT STUDENT_NM
FROM   TB_GRADE
WHERE  KOR >= 90;

----------------------------------------------------------------------------------------------------
** 10��. ��¥�����Լ�
** 10.1. SYSDATE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT SYSDATE,
       CURRENT_DATE
FROM   DUAL;

[����#2]

SELECT SYSDATE - 30,
       SYSDATE + 60
FROM   DUAL;

[����#3]

SELECT SYSDATE,
       SYSDATE + ((1/(86400/60/60)) * 3) AS CHG_DTTM
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 10.2. SYSDATE - TO_CHAR( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_CHAR(SYSDATE,'YYYYMMDD') AS TODAY
FROM   DUAL;

[����#2]

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS') AS TODAY_TM
FROM   DUAL;

[����#3]

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TODAY_TM
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 10.3. SYSDATE - TO_DATE( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_DATE('20190820') AS DT
FROM   DUAL;

[����#2]

SELECT TO_DATE('20190820140245') AS DTTM
FROM   DUAL;

[����#3]

SELECT TO_CHAR(TO_DATE('20190820') + 5,'YYYY-MM-DD') AS CHG_DT
FROM   DUAL;

[����#4]

SELECT CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       BIRTH_DAY,
       ROUND((SYSDATE - TO_DATE(BIRTH_DAY)) / 365,1) AS YEAR_TERM
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD IN ('2017042','2017053');

----------------------------------------------------------------------------------------------------
** 10.4. NEXT_DAY( )
----------------------------------------------------------------------------------------------------

[����#1]

[SQL1]

SELECT TO_CHAR(NEXT_DAY('20190820','�ݿ���'),'YYYY-MM-DD') AS NEXT_DAY
FROM   DUAL;

[SQL2]

SELECT TO_CHAR(NEXT_DAY('20190820',6),'YYYY-MM-DD') AS NEXT_DAY
FROM   DUAL;

[����#2]

[SQL1]

SELECT TO_CHAR(NEXT_DAY('20190820','������'),'YYYY-MM-DD') AS NEXT_DAY
FROM   DUAL;

[SQL2]

SELECT TO_CHAR(NEXT_DAY('20190820',2),'YYYY-MM-DD') AS NEXT_DAY
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 10.5. LAST_DAY( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT SYSDATE AS CUR_DATE,
       LAST_DAY('20190520') AS "5_MONTH_LAST_DAY",
       LAST_DAY('20190903') AS "9_MONTH_LAST_DAY",
       LAST_DAY(SYSDATE) AS CUR_LAST_DAY
FROM   DUAL;

[����#2]

SELECT SUBSTR(S1.DATE2019,1,6) AS MONTH2019,
       TO_CHAR(LAST_DAY(TO_DATE(S1.DATE2019)),'DD') AS LAST_DAY
FROM   (
        SELECT '20190101' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190201' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190301' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190401' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190501' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190601' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190701' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190801' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20190901' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20191001' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20191101' AS DATE2019 FROM DUAL UNION ALL
        SELECT '20191201' AS DATE2019 FROM DUAL
       ) S1;

----------------------------------------------------------------------------------------------------
** 10.6. ADD_MONTHS( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT ADD_MONTHS(TO_DATE('20190820'), -3) AS "3_BF_MON_DAY",
       ADD_MONTHS(TO_DATE('20190820'), -1) AS "1_BF_MON_DAY",
       ADD_MONTHS(TO_DATE('20190820'), 1) AS "1_AFT_MON_DAY",
       ADD_MONTHS(TO_DATE('20190820'), 3) AS "3_AFT_MON_DAY"
FROM   DUAL;

[����#2]

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD') AS CUR_DATE,
       TO_CHAR(ADD_MONTHS(SYSDATE, -2),'YYYY-MM-DD') AS "2_BF_MON_DAY",
       TO_CHAR(ADD_MONTHS(SYSDATE, 2),'YYYY-MM-DD') AS "2_AFT_MON_DAY"
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 10.7. MONTHS_BETWEEN( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') AS CUR_DTTM,
       ROUND(MONTHS_BETWEEN(TO_DATE('20191005','YYYYMMDD'),
         TO_DATE('20190820','YYYYMMDD')),2) AS MONTH_TERM_1,
       ROUND(MONTHS_BETWEEN(TO_DATE('20190703','YYYYMMDD'),
         TO_DATE('20191208','YYYYMMDD')),2) AS MONTH_TERM_2,
       ROUND(MONTHS_BETWEEN(SYSDATE,
         TO_DATE('20190701','YYYYMMDD')),2) AS MONTH_TERM_3
FROM   DUAL;

[����#2]

SELECT CUSTOMER_CD,
       SEQ_NO,
       POINT_MEMO,
       POINT,
       REG_DTTM,
       TO_CHAR(SYSDATE,'YYYY-MM-DD') AS ��������,
       ROUND(MONTHS_BETWEEN(SYSDATE, TO_DATE(REG_DTTM)),1) AS ������
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2019001';

----------------------------------------------------------------------------------------------------
** 11��. ��ġ�����Լ�
** 11.1. ABS( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT ABS(34),
       ABS(12.34),
       ABS(0),
       ABS(-42)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.2. MOD( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT MOD(4,2),
       MOD(9,5),
       MOD(12,0),
       MOD(-13,4),
       MOD(-11,-3)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.3. SQRT( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT SQRT(2),
       SQRT(9),
       SQRT(14),
       SQRT(16)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.4. CEIL( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CEIL(5.1),
       CEIL(12.8),
       CEIL(-5.1),
       CEIL(-12.8)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.5. FLOOR( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT FLOOR(5.1),
       FLOOR(12.8),
       FLOOR(-5.1),
       FLOOR(-12.8)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.6. ROUND( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT ROUND(5.1345, 2),
       ROUND(12.8763, 2),
       ROUND(-5.1345, 2),
       ROUND(-12.8763, 2)
FROM   DUAL;

[����#2]

SELECT ROUND(1234.5678, -1),
       ROUND(1234.5678, -2)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.7. TRUNC( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TRUNC(5.1345, 2),
       TRUNC(12.8763, 2),
       TRUNC(-5.1345, 2),
       TRUNC(-12.8763, 2)
FROM   DUAL;

[����#2]

SELECT TRUNC(1234.5678, -1),
       TRUNC(1234.5678, -2)
FROM   DUAL;

[����#3]

SELECT TRUNC(SYSDATE, 'YYYY') AS DATE1,
       TRUNC(SYSDATE, 'MM'  ) AS DATE2,
       TRUNC(SYSDATE, 'DD'  ) AS DATE3
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 11.8. POWER( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT POWER(4, 2),
       POWER(5, 3),
       POWER(-6, 3),
       POWER(-6, 4),
       POWER(2, -3),
       POWER(2, -4)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12��. ���ڿ� �����Լ�
** 12.1. UPPER( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT UPPER('1Day SQL Example : 123 : ����Ŭ')
FROM   DUAL;

[����#2]

SELECT CUSTOMER_CD,
       CUSTOMER_ENG_NM,
       UPPER(CUSTOMER_ENG_NM) AS UPPER_CUSTOMER_ENG_NM,
       ITEM_LIST
FROM   TB_ETC_INFO;

----------------------------------------------------------------------------------------------------
** 12.2. LOWER( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LOWER('1Day SQL Example : 123 : ����Ŭ')
FROM   DUAL;

[����#2]

SELECT CUSTOMER_CD,
       CUSTOMER_ENG_NM,
       LOWER(CUSTOMER_ENG_NM) AS LOWER_CUSTOMER_ENG_NM,
       ITEM_LIST
FROM   TB_ETC_INFO;

----------------------------------------------------------------------------------------------------
** 12.3. SUBSTR( ), SUBSTRB( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT SUBSTR('1Day SQL Example : 123 : ����Ŭ',1,8)
FROM   DUAL;

[����#2]

SELECT SUBSTR('1Day SQL Example : 123 : ����Ŭ',20,3)
FROM   DUAL;

[����#3]

SELECT SUBSTR('1Day SQL Example : 123 : ����Ŭ',26,3),
       SUBSTR('1Day SQL Example : 123 : ����Ŭ',26)
FROM DUAL;

[����#4]

SELECT SUBSTRB('1Day SQL Example : 123 : ����Ŭ',26,6) AS TEXT1,
       SUBSTRB('1Day SQL Example : 123 : ����Ŭ',26,3) AS TEXT2,
       SUBSTRB('1Day SQL Example : 123 : ����Ŭ',26) AS TEXT3
FROM DUAL;

[����#5]

SELECT SUBSTR(s1.dt,1,4) || '-' ||
       SUBSTR(s1.dt,5,2) || '-' ||
       SUBSTR(s1.dt,7,2) AS DT_FMT
FROM   (
        SELECT '20190820' AS DT
        FROM   DUAL
       ) S1;

[����#6]

SELECT *
FROM   TB_CUSTOMER
WHERE  SUBSTR(PHONE_NUMBER,4,1) <> '-';

----------------------------------------------------------------------------------------------------
** 12.4. LENGTH( ), LENGTHB( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LENGTH('1Day SQL'),
       LENGTH('  SQL  '),
       LENGTH('����Ŭ'),
       LENGTH('����Ŭ SQL')
FROM   DUAL;

[����#2]

SELECT LENGTHB('1Day SQL'),
       LENGTHB('  SQL  '),
       LENGTHB('����Ŭ'),
       LENGTHB('����Ŭ SQL')
FROM   DUAL;

[����#3]

SELECT LENGTH('1Day SQL Example : 123 : ����Ŭ'),
       LENGTHB('1Day SQL Example : 123 : ����Ŭ')
FROM   DUAL;

[����#4]

SELECT CUSTOMER_CD,
       CUSTOMER_ENG_NM,
       LENGTH(CUSTOMER_ENG_NM) AS ����,
       ITEM_LIST
FROM   TB_ETC_INFO;

----------------------------------------------------------------------------------------------------
** 12.5. RPAD( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT RPAD('1Day SQL', 14, '*')
FROM   DUAL;

[����#2]

SELECT CUSTOMER_CD,
       RPAD(CUSTOMER_ENG_NM,15,'_') AS CUSTOMER_ENG_NM,
       ITEM_LIST
FROM   TB_ETC_INFO;

[����#3]

SELECT RPAD('1Day SQL', 4, '*')
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.6. LPAD( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LPAD('1Day SQL', 14, '*')
FROM   DUAL;

[����#2]

SELECT CUSTOMER_CD,
       LPAD(CUSTOMER_ENG_NM,15,' ') AS CUSTOMER_ENG_NM,
       ITEM_LIST
FROM   TB_ETC_INFO;

[����#3]

SELECT LPAD('1Day SQL', 4, '*')
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.7. RTRIM( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LENGTH('   1Day SQL     '),
       RTRIM('   1Day SQL     '),
       LENGTH(RTRIM('   1Day SQL     ')) AS ����
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.8. LTRIM( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LENGTH('   1Day SQL     '),
       LTRIM('   1Day SQL     '),
       LENGTH(LTRIM('   1Day SQL     ')) AS ����
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.9. TRIM( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LENGTH('   1Day SQL     '),
       TRIM('   1Day SQL     '),
       LENGTH(TRIM('   1Day SQL     ')) AS ����
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.10. INITCAP( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT INITCAP('oracle sql')
FROM   DUAL;

[����#2]

SELECT INITCAP('1day sql example : 123 : ����Ŭ')
FROM   DUAL;

[����#3]

SELECT CUSTOMER_CD,
       CUSTOMER_ENG_NM,
       INITCAP(CUSTOMER_ENG_NM),
       ITEM_LIST
FROM   TB_ETC_INFO;

----------------------------------------------------------------------------------------------------
** 12.11. CONCAT( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CONCAT('1Day SQL',' �ǽ�')
FROM   DUAL;

[����#2]

SELECT CONCAT('1Day SQL',' Example'),
       '1Day SQL' || ' Example',
       '1Day SQL' || ' Example ' || 123
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.12. INSTR( ), INSTRB( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT INSTR('1Day ����Ŭ SQL','����Ŭ') AS LOC1,
       INSTR('1Day ����Ŭ SQL','SQL') AS LOC2
FROM   DUAL;

[����#2]

SELECT INSTRB('1Day ����Ŭ SQL','����Ŭ') AS LOC1,
       INSTRB('1Day ����Ŭ SQL','SQL') AS LOC2
FROM   DUAL;

[����#3]

SELECT INSTR('1Day SQL Example : 123 : ����Ŭ',':',
       INSTR('1Day SQL Example : 123 : ����Ŭ',':')+1) AS LOC
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 12.13. REPLACE( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT '1Day SQL Example' as before_text,
       REPLACE('1Day SQL Example','Example','�ǽ�') AS AFTER_TEXT
FROM   DUAL;

[����#2]

SELECT REPLACE('2019-08-20','-','') AS CHG_DT
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 13��. ���Լ�
** 13.1. DECODE( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       DECODE(MW_FLG,'M','��','W','��','*') AS ����,
       TOTAL_POINT
FROM   TB_CUSTOMER;

[����#2]

SELECT CUSTOMER_CD,
       CUSTOMER_ENG_NM,
       ITEM_LIST,
       SUBSTR(DECODE(INSTR(ITEM_LIST,'S01'),0,'',',�Ƿ�/��ȭ') ||
              DECODE(INSTR(ITEM_LIST,'S02'),0,'',',��Ƽ') ||
              DECODE(INSTR(ITEM_LIST,'S03'),0,'',',����/�ڵ���') ||
              DECODE(INSTR(ITEM_LIST,'S04'),0,'',',��ǰ') ||
              DECODE(INSTR(ITEM_LIST,'S05'),0,'',',��Ȱ/�ǰ�') ||
              DECODE(INSTR(ITEM_LIST,'S06'),0,'',',����/���׸���') ||
              DECODE(INSTR(ITEM_LIST,'S07'),0,'',',����') ||
              DECODE(INSTR(ITEM_LIST,'S08'),0,'',',����/���') ||
              DECODE(INSTR(ITEM_LIST,'S09'),0,'',',��ǻ��') ||
              DECODE(INSTR(ITEM_LIST,'S10'),0,'',',�귣��'),2)
                AS ����ǰ���
FROM   TB_ETC_INFO;

----------------------------------------------------------------------------------------------------
** 13.2. NVL( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       BIRTH_DAY,
       NVL(PHONE_NUMBER,'XXX-XXXX-XXXX') AS PHONE_NUMBER,
       EMAIL
FROM   TB_CUSTOMER;

----------------------------------------------------------------------------------------------------
** 13.3. LEAST( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT LEAST(12, -10, -3, 335, 200, 45) AS LEAST_NUM
FROM   DUAL;

[����#2]

SELECT SYSDATE,
       LEAST(SYSDATE, SYSDATE+3, SYSDATE-1) AS LEAST_DT
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 13.4. GREATEST( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT GREATEST(12, -10, -3, 335, 200, 45) AS GREAT_NUM
FROM   DUAL;

[����#2]

SELECT SYSDATE,
       GREATEST(SYSDATE, SYSDATE+3, SYSDATE-1) AS GREAT_DATE
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 13.5. WIDTH_BUCKET( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT WIDTH_BUCKET(38, 1, 50, 10)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 14��. �� ��ȯ �Լ�
** 14.1. TO_CHAR( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_CHAR(TO_DATE('20190820'),'YYYY-MM-DD'),
       TO_CHAR(1234)
FROM   DUAL;

[����#2]

SELECT 12.34 || '%',
       TO_CHAR(12.34) || '%',
       CONCAT(12.34,'%')
FROM   DUAL;

[����#3]

SELECT TO_CHAR(123456.789,'999,999.99') AS CHAR1,
       TO_CHAR(12.34,'$999,999.99') AS CHAR2,
       TO_CHAR(12.34,'L99.99') AS CHAR3,
       TO_CHAR(12.34,'S99.99') AS CHAR4,
       TO_CHAR(-12.34,'S99.99') AS CHAR5
FROM   DUAL;

[����#4]

SELECT TO_CHAR(123456.789,'999,999.99') AS CHAR1,
       TO_CHAR(12.342,'$999,999.99') AS CHAR2,
       TO_CHAR(12.344,'L99.99') AS CHAR3,
       TO_CHAR(12.345,'S99.99') AS CHAR4,
       TO_CHAR(-12.3467,'S99.99') AS CHAR5
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 14.2. TO_DATE( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_CHAR(TO_DATE('20190820') - 30,'YYYYMMDD') AS "30_bf_day",
       '20190820' as base_day,
       TO_CHAR(TO_DATE('20190820') + 60,'YYYYMMDD') AS "60_aft_day"
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 14.3. TO_NUMBER( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TO_NUMBER('123'),
       TO_NUMBER('12.45'),
       TO_NUMBER('-58.6')
FROM   DUAL;

[����#2]

SELECT '12.45' + 20,
       TO_NUMBER('12.45') + 20,
       TO_CHAR(12.45) || '20'
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 14.4. CHR( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CHR(65),
       CHR(66),
       CHR(97),
       CHR(98)
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 14.5. ASCII( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT ASCII('A') AS A1,
       ASCII('B') AS A2,
       ASCII('Z') AS A3,
       ASCII('a') AS B1,
       ASCII('b') AS B2,
       ASCII('z') AS B3
FROM   DUAL;

----------------------------------------------------------------------------------------------------
** 15��. �׷��Լ�
** 15.1. MAX( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       MAX(KOR) AS KOR_�ִ밪,
       MAX(ENG) AS ENG_�ִ밪,
       MAX(MAT) AS MAT_�ִ밪
FROM   TB_GRADE
GROUP  BY CLASS_CD
ORDER  BY CLASS_CD;

[����#2]

SELECT CLASS_CD,
       STUDENT_NO,
       STUDENT_NM,
       KOR,
       MAX(KOR) OVER (PARTITION BY CLASS_CD) AS �ִ밪,
       MAX(KOR) OVER (PARTITION BY CLASS_CD) - KOR AS ����
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 15.2. MIN( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       MIN(KOR) AS KOR_�ּҰ�,
       MIN(ENG) AS ENG_�ּҰ�,
       MIN(MAT) AS MAT_�ּҰ�
FROM   TB_GRADE
GROUP  BY CLASS_CD
ORDER  BY CLASS_CD;

[����#2]

SELECT CLASS_CD,
       STUDENT_NO,
       STUDENT_NM,
       KOR,
       MIN(KOR) OVER (PARTITION BY CLASS_CD) AS �ּҰ�,
       KOR - MIN(KOR) OVER (PARTITION BY CLASS_CD) AS ����
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 15.3. SUM( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       SUM(KOR) AS KOR_�հ谪,
       SUM(ENG) AS ENG_�հ谪,
       SUM(MAT) AS MAT_�հ谪
FROM   TB_GRADE
GROUP  BY CLASS_CD
ORDER  BY CLASS_CD;

----------------------------------------------------------------------------------------------------
** 15.4. AVG( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       ROUND(AVG(KOR),2) AS KOR_��հ�,
       ROUND(AVG(ENG),2) AS ENG_��հ�,
       ROUND(AVG(MAT),2) AS MAT_��հ�
FROM   TB_GRADE
GROUP  BY CLASS_CD
ORDER  BY CLASS_CD;

----------------------------------------------------------------------------------------------------
** 15.5. COUNT( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CUSTOMER_CD,
       COUNT(SEQ_NO) AS ������
FROM   TB_POINT
GROUP  BY CUSTOMER_CD
ORDER  BY CUSTOMER_CD;

----------------------------------------------------------------------------------------------------
** 15.6. ROLLUP( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT NVL(CUSTOMER_CD,'����') AS CUSTOMER_CD,
       SUM(POINT) AS ����Ʈ��
FROM   TB_POINT
GROUP  BY ROLLUP(CUSTOMER_CD)
ORDER  BY CUSTOMER_CD;

[����#2]

SELECT NVL(SALES_DT,'����') AS SALES_DT,
       CASE WHEN SALES_DT IS NOT NULL AND PRODUCT_NM IS NULL THEN
                 '<�Ұ�>'
            ELSE PRODUCT_NM
       END AS PRODUCT_NM,
       SUM(PRICE * SALES_COUNT) AS ����ݾ�
FROM   TB_SALES
GROUP  BY ROLLUP(SALES_DT, PRODUCT_NM)
ORDER  BY SALES_DT;

[����#3] ROLLUP()�Լ��� CUBE() �Լ� ��

[SQL1]

SELECT SALES_DT,
       PRODUCT_NM,
       SUM(PRICE * SALES_COUNT) AS ����ݾ�
FROM   TB_SALES
GROUP  BY ROLLUP(SALES_DT, PRODUCT_NM)
ORDER  BY SALES_DT,
          PRODUCT_NM;

[SQL2]

SELECT SALES_DT,
       PRODUCT_NM,
       SUM(PRICE * SALES_COUNT) AS ����ݾ�
FROM   TB_SALES
GROUP  BY CUBE(SALES_DT,PRODUCT_NM)
ORDER  BY SALES_DT,
          PRODUCT_NM;

----------------------------------------------------------------------------------------------------
** 15.7. ROW_NUMBER( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TEST_CD,
       KOR,
       ROW_NUMBER() OVER (ORDER BY KOR DESC) AS ����
FROM   TB_GRADE_07
ORDER  BY KOR DESC;

----------------------------------------------------------------------------------------------------
** 15.8. RANK( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TEST_CD,
       KOR,
       RANK() OVER (ORDER BY KOR DESC) AS ����
FROM   TB_GRADE_07
ORDER  BY KOR DESC;

----------------------------------------------------------------------------------------------------
** 15.9. DENSE_RANK( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TEST_CD,
       KOR,
       DENSE_RANK() OVER (ORDER BY KOR DESC) AS ����
FROM   TB_GRADE_07
ORDER  BY KOR DESC;

----------------------------------------------------------------------------------------------------
** 15.10. RANK( ) WITHIN
----------------------------------------------------------------------------------------------------

[����#1]

SELECT RANK(96) WITHIN GROUP(ORDER BY KOR DESC) AS "96_��ġ",
       RANK(90) WITHIN GROUP(ORDER BY KOR DESC) AS "90_��ġ"
FROM   TB_GRADE_07;

[����:����#1]

SELECT DENSE_RANK(96) WITHIN GROUP(ORDER BY KOR DESC) AS "96_��ġ",
       DENSE_RANK(90) WITHIN GROUP(ORDER BY KOR DESC) AS "90_��ġ"
FROM   TB_GRADE_07;

----------------------------------------------------------------------------------------------------
** 15.11. FIRST_VALUE( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CLASS_CD,
       STUDENT_NO,
       STUDENT_NM,
       KOR,
       FIRST_VALUE(KOR) OVER (PARTITION BY CLASS_CD ORDER BY KOR DESC) AS "�ݺ� �ִ�����"
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          KOR DESC;
          
[����:����#1]

SELECT CLASS_CD,
       STUDENT_NO,
       STUDENT_NM,
       KOR,
       LAST_VALUE(KOR) OVER (PARTITION BY CLASS_CD) AS "�ݺ� �ּ�����"
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          KOR DESC;

----------------------------------------------------------------------------------------------------
** 16��. ������ ���� �Լ�
** 16.1. LEAD( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TRAIN_NO,
       RUN_ORDR,
       STATION_NM,
       LEAD(STATION_NM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR) AS "���� ����"
FROM   TB_TRAIN_TM;

----------------------------------------------------------------------------------------------------
** 16.2. LAG( )
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TRAIN_NO,
       RUN_ORDR,
       STATION_NM,
       LAG(STATION_NM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR) AS "���� ����"
FROM   TB_TRAIN_TM;

----------------------------------------------------------------------------------------------------
** 16.3. XMLAGG, XMLELEMENT
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TRAIN_NO,
       SUBSTR(XMLAGG(XMLELEMENT(X, ',', STATION_NM) ORDER BY RUN_ORDR).EXTRACT('//text()'),2) AS �����
FROM   TB_TRAIN_TM
GROUP  BY TRAIN_NO;

[����#2]

SELECT TRAIN_NO,
       SUBSTR(XMLAGG(XMLELEMENT(X, ',', STATION_NM || '(' || ARV_TM || ')')
         ORDER BY RUN_ORDR).EXTRACT('//text()'),2) AS ���������
FROM   TB_TRAIN_TM
GROUP  BY TRAIN_NO;

----------------------------------------------------------------------------------------------------
** 17��. ���̺� ���� ��ɾ�
** 17.1. CREATE TABLE
----------------------------------------------------------------------------------------------------

[����#1]

CREATE TABLE TB_GRADE_2019
(
  TEST_MONTH       CHAR(2 BYTE)                 NOT NULL,   -- ��
  TEST_CD          CHAR(3 BYTE)                 NOT NULL,   -- �����ڵ�
  KOR              NUMBER(3),                               -- ����
  ENG              NUMBER(3),                               -- ����
  MAT              NUMBER(3)                                -- ����
);

CREATE UNIQUE INDEX PK_TB_GRADE_2019 ON TB_GRADE_2019 (TEST_MONTH, TEST_CD);

ALTER TABLE TB_GRADE_2019 ADD (CONSTRAINT PK_TB_GRADE_2019 PRIMARY KEY (TEST_MONTH, TEST_CD));

[����#2]

INSERT INTO TB_GRADE_2019 VALUES ('01','T01',92,98,84);
INSERT INTO TB_GRADE_2019 VALUES ('01','T02',84,94,90);
COMMIT;

SELECT *
FROM   TB_GRADE_2019;

----------------------------------------------------------------------------------------------------
** 17.2. DESC�� DESCRIBE
----------------------------------------------------------------------------------------------------

[����#1]

[SQL1]

DESC TB_GRADE_2019;

[SQL2]

DESCRIBE TB_GRADE_2019;

----------------------------------------------------------------------------------------------------
** 17.3. RENAME
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE_2019;

RENAME TB_GRADE_2019 TO TB_2019_GRADE;

SELECT *
FROM   TB_GRADE_2019;

[����#2]

SELECT *
FROM   TB_2019_GRADE;

RENAME TB_2019_GRADE TO TB_GRADE_2019;

SELECT *
FROM   TB_GRADE_2019;

----------------------------------------------------------------------------------------------------
** 17.4. ALTER TABLE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE_2019;

DESC TB_GRADE_2019;

[����#2]

ALTER TABLE TB_GRADE_2019 ADD (TOT NUMBER(5) NULL);
ALTER TABLE TB_GRADE_2019 ADD (AVG NUMBER(5,1) NULL);

DESC TB_GRADE_2019;

[����#3]

ALTER TABLE TB_GRADE_2019 MODIFY (TOT NUMBER(6));
ALTER TABLE TB_GRADE_2019 RENAME COLUMN TOT TO M_TOT;

ALTER TABLE TB_GRADE_2019 MODIFY (AVG NUMBER(6,2));
ALTER TABLE TB_GRADE_2019 RENAME COLUMN AVG TO M_AVG;

DESC TB_GRADE_2019;

[����#4]

ALTER TABLE TB_GRADE_2019 DROP COLUMN M_TOT;
ALTER TABLE TB_GRADE_2019 DROP COLUMN M_AVG;

DESC TB_GRADE_2019;

[����#5]

[SQL1]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[SQL2]

DELETE
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[SQL3]

ROLLBACK;

[SQL4]

ALTER TABLE TB_POINT ADD (CONSTRAINT FK_TB_POINT FOREIGN KEY (CUSTOMER_CD) 
                          REFERENCES TB_CUSTOMER (CUSTOMER_CD));

[SQL5]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[SQL6]

DELETE
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[SQL7]

ALTER TABLE TB_POINT DROP CONSTRAINT FK_TB_POINT;

----------------------------------------------------------------------------------------------------
** 17.5. INDEX
----------------------------------------------------------------------------------------------------

[����#1]

SELECT INDEX_NAME,
       COLUMN_NAME,
       COLUMN_POSITION,
       CHAR_LENGTH,
       DESCEND
FROM   USER_IND_COLUMNS
WHERE  TABLE_NAME = 'TB_GRADE_2019';

CREATE INDEX IDX_KOR_SCORE ON TB_GRADE_2019 (TEST_MONTH, TEST_CD, KOR);
CREATE INDEX IDX_ENG_SCORE ON TB_GRADE_2019 (TEST_MONTH, TEST_CD, ENG);
CREATE INDEX IDX_MAT_SCORE ON TB_GRADE_2019 (TEST_MONTH, TEST_CD, MAT);

SELECT INDEX_NAME,
       COLUMN_NAME,
       COLUMN_POSITION,
       CHAR_LENGTH,
       DESCEND
FROM   USER_IND_COLUMNS
WHERE  TABLE_NAME = 'TB_GRADE_2019';

[����#2]

ALTER INDEX IDX_KOR_SCORE RENAME TO IDX_KOR_GRADE;
ALTER INDEX IDX_ENG_SCORE RENAME TO IDX_ENG_GRADE;
ALTER INDEX IDX_MAT_SCORE RENAME TO IDX_MAT_GRADE;

SELECT INDEX_NAME,
       COLUMN_NAME,
       COLUMN_POSITION,
       CHAR_LENGTH,
       DESCEND
FROM   USER_IND_COLUMNS
WHERE  TABLE_NAME = 'TB_GRADE_2019';

[����#3]

DROP INDEX IDX_KOR_GRADE;
DROP INDEX IDX_ENG_GRADE;
DROP INDEX IDX_MAT_GRADE;

SELECT INDEX_NAME,
       COLUMN_NAME,
       COLUMN_POSITION,
       CHAR_LENGTH,
       DESCEND
FROM   USER_IND_COLUMNS
WHERE  TABLE_NAME = 'TB_GRADE_2019';

----------------------------------------------------------------------------------------------------
** 17.6. PRIMARY KEY
----------------------------------------------------------------------------------------------------

[����#1]

SELECT A.CONSTRAINT_NAME,
       A.CONSTRAINT_TYPE,
       A.TABLE_NAME,
       B.POSITION,
       B.COLUMN_NAME
FROM   SYS.USER_CONSTRAINTS A,
       SYS.USER_CONS_COLUMNS B
WHERE  A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
AND    A.TABLE_NAME = 'TB_GRADE_2020'
AND    A.CONSTRAINT_TYPE = 'P';

ALTER TABLE TB_GRADE_2020 DROP CONSTRAINT PK_TB_GRADE_2020;

SELECT A.CONSTRAINT_NAME,
       A.CONSTRAINT_TYPE,
       A.TABLE_NAME,
       B.POSITION,
       B.COLUMN_NAME
FROM   SYS.USER_CONSTRAINTS A,
       SYS.USER_CONS_COLUMNS B
WHERE  A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
AND    A.TABLE_NAME = 'TB_GRADE_2020'
AND    A.CONSTRAINT_TYPE = 'P';

[����#2]

ALTER TABLE TB_GRADE_2020 ADD (CONSTRAINT PK_TB_GRADE_2020_P1 PRIMARY KEY (TEST_MONTH, TEST_CD));

SELECT A.CONSTRAINT_NAME,
       A.CONSTRAINT_TYPE,
       A.TABLE_NAME,
       B.POSITION,
       B.COLUMN_NAME
FROM   SYS.USER_CONSTRAINTS A,
       SYS.USER_CONS_COLUMNS B
WHERE  A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
AND    A.TABLE_NAME = 'TB_GRADE_2020'
AND    A.CONSTRAINT_TYPE = 'P';

----------------------------------------------------------------------------------------------------
** 17.7. TRUNCATE TABLE
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_GRADE_2019;

TRUNCATE TABLE TB_GRADE_2019;

SELECT *
FROM   TB_GRADE_2019;

----------------------------------------------------------------------------------------------------
** 17.8. DROP TABLE
----------------------------------------------------------------------------------------------------

[����#1]

DROP TABLE TB_GRADE_2019;

DESC TB_GRADE_2019;

[����#2]

FLASHBACK TABLE TB_GRADE_2019 TO BEFORE DROP;

DESC TB_GRADE_2019;

[����#3]

DROP TABLE TB_GRADE_2019;

PURGE RECYCLEBIN;

[����#4]

FLASHBACK TABLE TB_GRADE_2019 TO BEFORE DROP;

DESC TB_GRADE_2019;

----------------------------------------------------------------------------------------------------
** 18��. ����� ���
** 18.1. �Լ� (FUNCTION)
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE FUNCTION FN_DT_TMTOSEC(p_day NUMBER, p_tm CHAR)
RETURN NUMBER IS ret_sec NUMBER(10);

BEGIN
       SELECT (p_day * 86400) + TO_NUMBER(TO_CHAR(TO_DATE(p_tm, 'HH24:MI:SS'),'SSSSS')) INTO ret_sec
       FROM DUAL;

       RETURN (ret_sec);

END FN_DT_TMTOSEC;
/

[����#2]

SELECT FN_DT_TMTOSEC(0, '070800'),
       FN_DT_TMTOSEC(1, '002030'),
       TO_CHAR(SYSDATE, 'HH24:MI:SS') AS CUR_TM,
       FN_DT_TMTOSEC(0, TO_CHAR(SYSDATE, 'HH24MISS')) AS CUR_SEC
FROM   DUAL;

[����#3]

CREATE OR REPLACE FUNCTION FN_DT_SECTOTM(p_sec NUMBER)
RETURN CHAR IS ret_tm CHAR(6);

BEGIN

    SELECT (
            LPAD(FLOOR(MOD(p_sec,86400)/3600),2,'0') ||
            LPAD(FLOOR(MOD(MOD(p_sec,86400),3600)/60),2,'0') ||
            LPAD(FLOOR(MOD(MOD(MOD(p_sec,86400),3600),60)),2,'0')
           ) INTO ret_tm
    FROM   DUAL;

    RETURN (ret_tm);

END FN_DT_SECTOTM;
/

[����#4]

SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') AS CUR_TM,
       FN_DT_SECTOTM(FN_DT_TMTOSEC(0, TO_CHAR(SYSDATE, 'HH24MISS'))-300) AS MINUS_SEC,
       FN_DT_SECTOTM(FN_DT_TMTOSEC(0, TO_CHAR(SYSDATE, 'HH24MISS'))+300) AS PLUS_SEC
FROM   DUAL;

[����#5]

CREATE OR REPLACE FUNCTION FN_DT_OFFSETTM(p_day NUMBER,
                                          p_tm CHAR,
                                          p_offset_sec NUMBER
                                         )
RETURN CHAR IS ret_offset_tm CHAR(6);

BEGIN

    SELECT (
            LPAD(FLOOR(MOD(S1.SEC,86400)/3600),2,'0') ||
            LPAD(FLOOR(MOD(MOD(S1.SEC,86400),3600)/60),2,'0') ||
            LPAD(FLOOR(MOD(MOD(MOD(S1.SEC,86400),3600),60)),2,'0')
           ) INTO ret_offset_tm
    FROM   (
            SELECT (p_day * 86400) + TO_NUMBER(TO_CHAR(TO_DATE(p_tm,
                   'HH24:MI:SS'),'SSSSS')) + (p_offset_sec) AS SEC
            FROM   DUAL
           )S1;

    RETURN (ret_offset_tm);

END FN_DT_OFFSETTM;
/

[����#6]

SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') AS CUR_TM,
       FN_DT_OFFSETTM(0, TO_CHAR(SYSDATE, 'HH24MISS'), -300) AS MINUS_SEC,
       FN_DT_OFFSETTM(0, TO_CHAR(SYSDATE, 'HH24MISS'), 300) AS PLUS_SEC
FROM   DUAL;

[����#7]

CREATE OR REPLACE FUNCTION FN_DT_OFFSETTMDNO(p_day NUMBER,
                                             p_tm CHAR,
                                             p_offset_sec NUMBER
                                            )
RETURN NUMBER IS ret_offset_dno NUMBER(3);

BEGIN

    SELECT FLOOR(s1.sec/86400) INTO ret_offset_dno
    FROM   (
            SELECT (p_day * 86400) + TO_NUMBER(TO_CHAR(TO_DATE(p_tm, 'HH24:MI:SS'),'SSSSS')) + (p_offset_sec) as sec
            FROM   DUAL
           )s1;

    RETURN (ret_offset_dno);

END FN_DT_OFFSETTMDNO;
/

[����#8]

SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') AS CUR_TM,
       FN_DT_OFFSETTMDNO(0, TO_CHAR(SYSDATE, 'HH24MISS'), -43200) AS MINUS_DNO,
       FN_DT_OFFSETTMDNO(0, TO_CHAR(SYSDATE, 'HH24MISS'), 43200) AS PLUS_DNO
FROM   DUAL;

[����#9]

CREATE OR REPLACE FUNCTION FN_DT_CNVDTFMT(p_dt CHAR)
RETURN CHAR IS ret_fmt_dt CHAR(10);

BEGIN

    SELECT SUBSTR(p_dt,1,4) || '-' || SUBSTR(p_dt,5,2) || '-' || SUBSTR(p_dt,7,2) INTO ret_fmt_dt
    FROM   DUAL;

    RETURN (ret_fmt_dt);

END FN_DT_CNVDTFMT;
/

[����#10]

SELECT FN_DT_CNVDTFMT('20190820')
FROM   DUAL;

[����#11]

CREATE OR REPLACE FUNCTION FN_DT_CnvTmFmt(p_tm CHAR)
RETURN CHAR IS ret_fmt_tm CHAR(8);

BEGIN

    SELECT DECODE(p_tm,NULL,NULL,SUBSTR(p_tm,1,2) || ':' || SUBSTR(p_tm,3,2) || ':' || SUBSTR(p_tm,5,2)) INTO ret_fmt_tm
    FROM   DUAL;

    RETURN (ret_fmt_tm);

END FN_DT_CNVTMFMT;
/

[����#12]

[SQL1]

SELECT FN_DT_CNVTMFMT('164530')
FROM   DUAL;

[SQL2]

SELECT FN_DT_CNVTMFMT(FN_DT_OFFSETTM(0, '234500', 3600))
FROM   DUAL;

[����#13]

CREATE OR REPLACE FUNCTION FN_DT_CNVDTTMFMT(p_dttm CHAR)
RETURN CHAR IS ret_fmt_dttm CHAR(23);

BEGIN

    SELECT SUBSTR(p_dttm,1,4) || '-' || SUBSTR(p_dttm,5,2) || '-' || SUBSTR(p_dttm,7,2) || ' ' ||
           SUBSTR(p_dttm,9,2) || ':' || SUBSTR(p_dttm,11,2) || ':' || SUBSTR(p_dttm,13,2) INTO ret_fmt_dttm
    FROM   DUAL;

    RETURN (ret_fmt_dttm);

END FN_DT_CNVDTTMFMT;
/

[����#14]

SELECT FN_DT_CNVDTTMFMT('20190820070800')
FROM   DUAL;

[����#15]

CREATE OR REPLACE FUNCTION FN_GET_STR_COUNT(p_Str CHAR,
                                            p_Find_Str CHAR)
RETURN NUMBER                                 -- ��ȭ���� Ÿ�Լ���
IS                                            -- ���� ����
    ret_sales_count NUMBER(3);                -- ��ȯ���� ����
    loc NUMBER(3);                            -- ��ġ���� ����
BEGIN                                         -- ���� ����

    ret_sales_count := 0;                     -- ��ȯ���� �ʱ�ȭ
    loc := 1;                                 -- ��ġ���� �ʱ�ȭ

    WHILE (1=1)                               -- ��� �ݺ�
    LOOP                                      -- �ݺ�����
        loc := INSTR(p_Str, p_Find_Str, loc); -- p_Find_Str ��ġ���
        EXIT WHEN loc = 0;                    -- loc�� 0�̸� �۾�����

        loc := loc + LENGTH(p_Find_Str);  -- p_Find_Str ���̸�ŭ �̵�
        ret_sales_count := ret_sales_count + 1; -- ��ȯ������ 1 ����
    END LOOP;                                   -- �ݺ���

    RETURN (ret_sales_count);                 -- ret_sales_count ��ȯ
END FN_GET_STR_COUNT;                         -- �Լ� ��
/

[����#16]

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'FUNCTION';

[����#17]

SELECT FN_GET_STR_COUNT('1Day SQL Example : 123 : ����Ŭ',':')
FROM   DUAL;

[����#18]

DROP FUNCTION FN_GET_STR_COUNT;

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'FUNCTION';

----------------------------------------------------------------------------------------------------
** 18.2. ���ν��� (PROCEDURE)
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE PROCEDURE PR_INS_PNT_INFO(p_year CHAR)

IS
    tot_sales_count NUMBER;

BEGIN

    /* ����Ʈ ���� ���� ���� */

    DELETE
    FROM   TB_POINT_INFO
    WHERE  year = p_year;

    /* ����Ʈ ���� �Է� */

    INSERT INTO TB_POINT_INFO
    SELECT p_year AS YEAR,
           RANK() OVER (ORDER BY SUM(POINT) DESC) AS RANK,
           CUSTOMER_CD,
           SUM(POINT) AS POINT,
           SUBSTR(MAX(REG_DTTM),1,8) AS LAST_PNT_DT
    FROM   TB_POINT
    WHERE  SUBSTR(REG_DTTM,1,8) BETWEEN '20180101' AND '20181231'
    GROUP  BY CUSTOMER_CD;

    /* �����ͺ��̽��� ���� */

    COMMIT;

    /* ��� �޽��� */

    SELECT COUNT(year) INTO tot_sales_count
    FROM   TB_POINT_INFO
    WHERE  year = p_year;

    DBMS_OUTPUT.put_line('��� : ' || p_year ||
      ' : ' || tot_sales_count || ' �� ����Ʈ ���� �Է� �Ϸ�');

    /* ���� ó�� */

    EXCEPTION WHEN OTHERS THEN

    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('��� : ' || p_year || ' ����Ʈ �Է� ����!!!');

END PR_INS_PNT_INFO;
/

[����#2]

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'PROCEDURE';

[����#3]

SET SERVEROUT ON;
EXEC PR_INS_PNT_INFO('2018')
SET SERVEROUT OFF;

[����#4]

CREATE OR REPLACE PROCEDURE PR_DSP_PNT_INFO(p_year CHAR)

IS
    /* Ŀ�� ���� */
    CURSOR CUR_PNT_INFO(c_year IN VARCHAR2)
    IS
    SELECT YEAR,
           RANK,
           CUSTOMER_CD,
           POINT,
           LAST_POINT_DT
    FROM   TB_POINT_INFO
    WHERE  year = c_year;

    /* ���ν��� ���� */
    n_tot_sales_count NUMBER;

BEGIN

    n_tot_sales_count := 0;

    DBMS_OUTPUT.PUT_LINE('----------------------------------------');
    DBMS_OUTPUT.PUT_LINE('����Ʈ ��� ���');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------');

    FOR ROW_INFO IN CUR_PNT_INFO(P_YEAR)
    LOOP
        DBMS_OUTPUT.PUT_LINE(ROW_INFO.YEAR || ',' ||
           ROW_INFO.RANK || ',' || ROW_INFO.CUSTOMER_CD || ',' ||
           TO_CHAR(ROW_INFO.POINT,'999,999,9999') || ',' ||
           FN_DT_CNVDTFMT(ROW_INFO.LAST_POINT_DT));
        n_tot_sales_count := n_tot_sales_count + 1;
    END LOOP;

    IF (n_tot_sales_count > 0) THEN
        DBMS_OUTPUT.PUT_LINE('----------------------------------------');
        DBMS_OUTPUT.PUT_LINE('��� �� : ' ||  n_tot_sales_count);
    ELSE
        DBMS_OUTPUT.PUT_LINE('�˻��� �����Ͱ� �����ϴ�.');
    END IF;

END PR_DSP_PNT_INFO;
/

[����#5]

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'PROCEDURE';

[����#6]

SET SERVEROUT ON;
EXEC PR_DSP_PNT_INFO('2018')
SET SERVEROUT OFF;

[����#7]

DROP PROCEDURE PR_INS_PNT_INFO;
DROP PROCEDURE PR_DSP_PNT_INFO;

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'PROCEDURE';

----------------------------------------------------------------------------------------------------
** 18.3. Ʈ���� (TRIGGER)
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE TRIGGER TG_DEL_CUST_INFO

BEFORE DELETE ON TB_CUSTOMER

FOR EACH ROW

BEGIN

DELETE TB_POINT
WHERE  customer_cd = :OLD.customer_cd;

END TG_DEL_CUST_INFO;
/

[����#2]

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'TRIGGER'
AND    OBJECT_NAME = 'TG_DEL_CUST_INFO';

[����#3]

SELECT * FROM TB_CUSTOMER WHERE CUSTOMER_CD = '2018087';
SELECT * FROM TB_POINT WHERE CUSTOMER_CD = '2018087';

[����#4]

DELETE
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2018087';

SELECT * FROM TB_CUSTOMER WHERE CUSTOMER_CD = '2018087';
SELECT * FROM TB_POINT WHERE CUSTOMER_CD = '2018087';

[����#5]

DROP TRIGGER TG_DEL_CUST_INFO;

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'TRIGGER'
AND    OBJECT_NAME = 'TG_DEL_CUST_INFO';

[����#6]

COMMIT;

----------------------------------------------------------------------------------------------------
** 18.4. �� (VIEW)
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE FORCE VIEW VW_PNT_STAT_INFO

AS

SELECT CU.CUSTOMER_CD,
       CU.CUSTOMER_NM,
       DECODE(CU.MW_FLG,'M','��','��') AS MW_FLG,
       CU.BIRTH_DAY,
       REPLACE(CU.PHONE_NUMBER,'-','') AS PHONE_NUMBER,
       CP.SEQ_NO,
       CP.POINT_MEMO,
       CP.POINT
FROM   TB_CUSTOMER CU,
       TB_POINT CP
WHERE  CU.CUSTOMER_CD = CP.CUSTOMER_CD
ORDER  BY CU.CUSTOMER_CD,
          CP.SEQ_NO;

WITH READ ONLY;
/

[����#2]

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'VIEW'
AND    OBJECT_NAME = 'VW_PNT_STAT_INFO';

[����#3]

SELECT *
FROM   VW_PNT_STAT_INFO;

[����#4]

SELECT *
FROM   VW_PNT_STAT_INFO
WHERE  CUSTOMER_NM IN ('������','������','�����');

[����#5]

[SQL1]

UPDATE TB_CUSTOMER
SET    PHONE_NUMBER = '003-1287-9734'
WHERE  CUSTOMER_CD = '2018254';

[SQL2]

UPDATE TB_CUSTOMER
SET    PHONE_NUMBER = '002-1202-5563'
WHERE  CUSTOMER_CD = '2019167';

[SQL3]

DELETE
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017053'
AND    SEQ_NO = 2;

[����#6]

COMMIT;

[����#7]

SELECT *
FROM   VW_PNT_STAT_INFO
WHERE  CUSTOMER_NM IN ('������','������','�����');

[����#8]

DROP VIEW VW_PNT_STAT_INFO;

SELECT OBJECT_NAME,
       OBJECT_TYPE,
       CREATED,
       STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_TYPE = 'VIEW'
AND    OBJECT_NAME = 'VW_PNT_STAT_INFO';

----------------------------------------------------------------------------------------------------
** 18.5. ������ (SEQUENCE)
----------------------------------------------------------------------------------------------------

[����#1]

CREATE SEQUENCE SEQ_PAN_SEQ_NO
       START WITH 1
       INCREMENT BY 1
       MAXVALUE 9999999999
       NOMINVALUE
       NOCYCLE
       NOCACHE;

[����#2]

SELECT SEQ_PAN_SEQ_NO.CURRVAL
FROM   DUAL;

SELECT SEQ_PAN_SEQ_NO.NEXTVAL
FROM   DUAL;

[����#3]

SELECT SEQ_PAN_SEQ_NO.CURRVAL
FROM   DUAL;

INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'�����','2018254',4);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��Ź��','2019001',10);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��Ź��','2019167',2);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��Ź��','2019069',6);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'�����','2018254',3);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��ǳ��','2019167',4);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'�����','2019001',2);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'�����','2019069',1);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��ǳ��','2018254',3);
INSERT INTO TB_SALES_09 VALUES (SEQ_PAN_SEQ_NO.NEXTVAL,'��ǳ��','2019001',5);

[����#5]

SELECT *
FROM   TB_SALES_09;

[����#6]

COMMIT;

[����#7]

DROP SEQUENCE SEQ_PAN_SEQ_NO;

----------------------------------------------------------------------------------------------------
** 3��. SQL ����
** 19��. ������ ��� ������ ���� SQL
** 19.1. ���� ���� ����� ����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT *
FROM   TB_CUSTOMER
WHERE  LENGTH(TRIM(SUBSTR(BIRTH_DAY,1,4))) <> 4
OR     LENGTH(TRIM(SUBSTR(BIRTH_DAY,5,2))) <> 2
OR     LENGTH(TRIM(SUBSTR(BIRTH_DAY,7,2))) <> 2
OR     TO_NUMBER(SUBSTR(BIRTH_DAY,5,2)) NOT BETWEEN 1 AND 12
OR     TO_NUMBER(SUBSTR(BIRTH_DAY,7,2)) NOT BETWEEN 1 AND 31
OR     PHONE_NUMBER NOT LIKE '___-____-____'
OR     INSTR(EMAIL,'@') = 0
OR     INSTR(EMAIL,'.') = 0
OR     BIRTH_DAY IS NULL
OR     PHONE_NUMBER IS NULL
OR     EMAIL IS NULL;

[����#2]

UPDATE TB_CUSTOMER SET EMAIL = 'KSNA@BORAM.CO.KR' WHERE CUSTOMER_CD = '2017053';
UPDATE TB_CUSTOMER SET BIRTH_DAY = '19711230' WHERE CUSTOMER_CD = '2017108';
UPDATE TB_CUSTOMER SET BIRTH_DAY = '19830912', PHONE_NUMBER = '003-1287-9734' WHERE CUSTOMER_CD = '2018254';
UPDATE TB_CUSTOMER SET EMAIL = 'JSKIM@DREAMI.ORG' WHERE CUSTOMER_CD = '2019001';
UPDATE TB_CUSTOMER SET BIRTH_DAY = '19920315', PHONE_NUMBER = '003-0089-2000' WHERE CUSTOMER_CD = '2019069';
UPDATE TB_CUSTOMER SET EMAIL = 'SMMAKK@GANWON.COM' WHERE CUSTOMER_CD = '2019095';
UPDATE TB_CUSTOMER SET EMAIL = 'MRJUN@CHESO.ORG' WHERE CUSTOMER_CD = '2019302';

[����#3]

SELECT *
FROM   TB_CUSTOMER
WHERE  LENGTH(TRIM(SUBSTR(BIRTH_DAY,1,4))) <> 4
OR     LENGTH(TRIM(SUBSTR(BIRTH_DAY,5,2))) <> 2
OR     LENGTH(TRIM(SUBSTR(BIRTH_DAY,7,2))) <> 2
OR     TO_NUMBER(SUBSTR(BIRTH_DAY,5,2)) NOT BETWEEN 1 AND 12
OR     TO_NUMBER(SUBSTR(BIRTH_DAY,7,2)) NOT BETWEEN 1 AND 31
OR     PHONE_NUMBER NOT LIKE '___-____-____'
OR     INSTR(EMAIL,'@') = 0
OR     INSTR(EMAIL,'.') = 0
OR     BIRTH_DAY IS NULL
OR     PHONE_NUMBER IS NULL
OR     EMAIL IS NULL;

[����#4]

COMMIT;

----------------------------------------------------------------------------------------------------
** 19.2. ��¥, �ð�, ��ġ�� ����ȭ
----------------------------------------------------------------------------------------------------

[����#1]

SELECT CUSTOMER_CD,
       CUSTOMER_NM,
       MW_FLG,
       FN_DT_CNVDTFMT(BIRTH_DAY) AS BIRTH_DAY,
       PHONE_NUMBER,
       EMAIL,
       TO_CHAR(TOTAL_POINT,'999,999,999') AS TOTAL_POINT,
       FN_DT_CNVDTTMFMT(REG_DTTM) AS REG_DTTM
FROM   TB_CUSTOMER;

----------------------------------------------------------------------------------------------------
** 19.3. �׷��� ó��/������ ������ ���ϱ�
----------------------------------------------------------------------------------------------------

[����#1]

SELECT TRAIN_NO,
       COUNT(STATION_NM) AS ������,
       SUBSTR(MIN(LPAD(RUN_ORDR,3,'0') || STATION_NM),4) AS ù��,
       SUBSTR(MAX(LPAD(RUN_ORDR,3,'0') || STATION_NM),4) AS ��������
FROM   TB_TRAIN_TM
GROUP  BY TRAIN_NO;

[����#2]

SELECT S1.TRAIN_NO,
       TRIM(SUBSTRB(MIN(S1.STN_INFO),4,20)) AS ù��,
       FN_DT_CNVTMFMT(SUBSTRB(MIN(S1.STN_INFO),24)) AS ��߽ð�,
       TRIM(SUBSTRB(MAX(S1.STN_INFO),4,20)) AS ��������,
       FN_DT_CNVTMFMT(SUBSTRB(MAX(S1.STN_INFO),24)) AS �����ð�
FROM   (
        SELECT TRAIN_NO,
               LPAD(RUN_ORDR,3,'0') || RPAD(STATION_NM,20,' ') || DPT_TM AS STN_INFO
        FROM   TB_TRAIN_TM
       ) S1
GROUP  BY S1.TRAIN_NO;

----------------------------------------------------------------------------------------------------
** 19.4. ���� ���� �����ͷ� �����
----------------------------------------------------------------------------------------------------

[����#1]

SELECT S1.CLASS_CD,
       MAX(DECODE(S1.SEQ_NO,1,S1.STUDENT_NM,'')) AS �л�1,
       MAX(DECODE(S1.SEQ_NO,2,S1.STUDENT_NM,'')) AS �л�2,
       MAX(DECODE(S1.SEQ_NO,3,S1.STUDENT_NM,'')) AS �л�3
FROM   (
        SELECT CLASS_CD,
               RANK() OVER (PARTITION BY CLASS_CD ORDER BY STUDENT_NO) AS SEQ_NO,
               STUDENT_NM || '(' || RANK() OVER (PARTITION BY CLASS_CD ORDER BY TOT DESC) || ')' AS STUDENT_NM
        FROM   TB_GRADE
        ORDER  BY CLASS_CD,
                  STUDENT_NO
       ) S1
GROUP  BY S1.CLASS_CD;

[����#2]

SELECT S1.CLASS_CD,
       SUBSTR(XMLAGG(XMLELEMENT(X, ',', S1.STUDENT_NM)
         ORDER BY S1.STUDENT_NO).EXTRACT('//text()'),2) AS �л�����
FROM   (
        SELECT CLASS_CD,
               STUDENT_NO,
               STUDENT_NM || '(' || RANK() OVER (PARTITION BY CLASS_CD ORDER BY TOT DESC) || ')' AS STUDENT_NM
        FROM   TB_GRADE
       ) S1
GROUP  BY CLASS_CD;

----------------------------------------------------------------------------------------------------
** 19.5. ���� ��� ���� ���� ������ ���ϱ�
----------------------------------------------------------------------------------------------------

[����#1]

SELECT S1.TRAIN_NO,
       S1.RUN_ORDR,
       S1.STATION_NM || '~' || S1.NEXT_STATION_NM AS ���౸��,
       S1.DPT_TM AS "���翪 ��߽ð�",
       S1.NEXT_ARV_TM AS "������ �����ð�"
FROM   (
        SELECT TRAIN_NO,
               RUN_ORDR,
               STATION_NM,
               LEAD(STATION_NM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR) AS NEXT_STATION_NM,
               FN_DT_CNVTMFMT(DPT_TM) AS DPT_TM,
               FN_DT_CNVTMFMT(LEAD(ARV_TM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR)) AS NEXT_ARV_TM
        FROM   TB_TRAIN_TM
       )S1
WHERE S1.NEXT_STATION_NM IS NOT NULL;

----------------------------------------------------------------------------------------------------
** 19.6. �հ�� ��� ��� ���ν��� �۾�
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE PROCEDURE PR_CHG_GRADE_INFO(p_ClassCd CHAR, p_StudentNo INTEGER)

IS

BEGIN

    /* �հ� �� ��� ��� */

    UPDATE TB_GRADE
    SET    TOT = KOR + ENG + MAT,
           AVG = ROUND((KOR + ENG + MAT) / 3,1)
    WHERE  CLASS_CD = p_ClassCd
    AND    STUDENT_NO = p_StudentNo;

    /* �����ͺ��̽��� ���� */

    COMMIT;

    /* ���� ó�� */

    EXCEPTION WHEN OTHERS THEN

    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('��� : ' || p_ClassCd || ',' || p_StudentNo || ' �հ� �� ��� ��� ����!!!');

END PR_Chg_Grade_Info;
/

[����#2]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

[����#3]

UPDATE TB_GRADE SET ENG = 92 WHERE CLASS_CD = 'B' AND STUDENT_NO = 3;
UPDATE TB_GRADE SET MAT = 93 WHERE CLASS_CD = 'C' AND STUDENT_NO = 1;
UPDATE TB_GRADE SET KOR = 72 WHERE CLASS_CD = 'D' AND STUDENT_NO = 1;
EXEC PR_CHG_GRADE_INFO('B',3)
EXEC PR_CHG_GRADE_INFO('C',1)
EXEC PR_CHG_GRADE_INFO('D',1)

[����#4]

SELECT *
FROM   TB_GRADE
ORDER  BY CLASS_CD,
          STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 19.7. ���� ������ �ٲٴ� Ʈ����
----------------------------------------------------------------------------------------------------

[����#1]

CREATE OR REPLACE TRIGGER TG_CHG_CUSTOMER_POINT
FOR INSERT ON TB_POINT
COMPOUND TRIGGER

str_customer_cd CHAR(7);

AFTER EACH ROW IS
BEGIN
    IF INSERTING THEN
        str_customer_cd := :NEW.CUSTOMER_CD;
    END IF;
END AFTER EACH ROW;

AFTER STATEMENT IS
BEGIN
    IF INSERTING THEN
        UPDATE TB_CUSTOMER
        SET    TOTAL_POINT = (SELECT SUM(POINT)
                              FROM   TB_POINT
                              WHERE  CUSTOMER_CD = str_customer_cd
                              GROUP  BY CUSTOMER_CD
                             )
        WHERE  CUSTOMER_CD = str_customer_cd;
    END IF;
END AFTER STATEMENT;

END TG_CHG_CUSTOMER_POINT;
/

[����#2]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042'
ORDER  BY SEQ_NO;

[����#3]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[����#4]

INSERT INTO TB_POINT VALUES ('2017042',6,'�鵵�� ���� ����Ʈ ����',4500,'20190819022005');

[����#5]

SELECT *
FROM   TB_POINT
WHERE  CUSTOMER_CD = '2017042'
ORDER  BY SEQ_NO;

[����#6]

SELECT *
FROM   TB_CUSTOMER
WHERE  CUSTOMER_CD = '2017042';

[����#7]

COMMIT;

----------------------------------------------------------------------------------------------------
** 20��. ���� ����Ʈ SQL
** 20.1. �� ��� ��Ȳ
----------------------------------------------------------------------------------------------------

SELECT CUSTOMER_CD AS ���ڵ�,
       CUSTOMER_NM AS ����,
       DECODE(MW_FLG,'M','��','��') AS ����,
       FN_DT_CNVDTFMT(BIRTH_DAY) AS �������,
       PHONE_NUMBER AS ��ȭ��ȣ,
       EMAIL AS �̸���,
       LPAD(TRIM(TO_CHAR(TOTAL_POINT,'999,999,999')),11,' ')
         AS ����Ʈ,
       FN_DT_CNVDTFMT(SUBSTR(REG_DTTM,1,8)) AS �����
FROM   TB_CUSTOMER
WHERE  SUBSTR(REG_DTTM,1,4) = :��Ͽ���
AND    MW_FLG = DECODE(UPPER(:����),'M','M','W','W','A',MW_FLG,'X')
ORDER  BY CUSTOMER_NM;

----------------------------------------------------------------------------------------------------
** 20.2. �� ����Ʈ ����
----------------------------------------------------------------------------------------------------

SELECT DECODE(FIRST_VALUE(CP.REG_DTTM) OVER (PARTITION BY 
         CP.CUSTOMER_CD ORDER BY CP.REG_DTTM),CP.REG_DTTM,
         CU.CUSTOMER_CD,'') AS ���ڵ�,
       DECODE(FIRST_VALUE(CP.REG_DTTM) OVER (PARTITION BY 
         CP.CUSTOMER_CD ORDER BY CP.REG_DTTM),CP.REG_DTTM,
         CU.CUSTOMER_NM,'') AS ����,
       DECODE(FIRST_VALUE(CP.REG_DTTM) OVER (PARTITION BY 
         CP.CUSTOMER_CD ORDER BY CP.REG_DTTM),CP.REG_DTTM,
         DECODE(MW_FLG,'M','��','��'),'') AS ����,
       DECODE(FIRST_VALUE(CP.REG_DTTM) OVER (PARTITION BY 
         CP.CUSTOMER_CD ORDER BY CP.REG_DTTM),CP.REG_DTTM,
         (SELECT LPAD(TRIM(TO_CHAR(C1.TOTAL_POINT,'999,999,999'
         )),11,' ')
          FROM   TB_CUSTOMER C1
          WHERE  C1.CUSTOMER_CD = CP.CUSTOMER_CD),'') 
         AS ��������Ʈ,
       CP.POINT_MEMO AS "����Ʈ ����",
       LPAD(TRIM(TO_CHAR(CP.POINT,'999,999,999')),11,' ')
         AS ����Ʈ,
       FN_DT_CNVDTTMFMT(CP.REG_DTTM) AS "����Ʈ �����"
FROM   TB_CUSTOMER CU,
       TB_POINT CP
WHERE  INSTR(CU.CUSTOMER_NM, :����) > 0
AND    CU.CUSTOMER_CD = CP.CUSTOMER_CD
ORDER  BY CU.CUSTOMER_NM,
          CP.REG_DTTM;

----------------------------------------------------------------------------------------------------
** 20.3. ���� ���
----------------------------------------------------------------------------------------------------

SELECT (SELECT CN.CLASS_NM
        FROM   TB_CLASS_INFO CN
        WHERE  CN.CLASS_CD = SJ.CLASS_CD) AS ���̸�,
       SJ.STUDENT_NO AS ��ȣ,
       SJ.STUDENT_NM AS �л���,
       SJ.KOR AS ����,
       SJ.ENG AS ����,
       SJ.MAT AS ����,
       SJ.TOT AS �հ�,
       SJ.AVG AS ���,
       RANK() OVER (PARTITION BY SJ.CLASS_CD ORDER BY SJ.TOT DESC, SJ.KOR DESC) AS �ݼ���,
       RANK() OVER (ORDER BY SJ.TOT DESC, SJ.KOR DESC) AS ��ü����
FROM   TB_GRADE SJ
ORDER  BY SJ.CLASS_CD,
          SJ.STUDENT_NO;

----------------------------------------------------------------------------------------------------
** 20.4. ���� ���� ��Ȳ
----------------------------------------------------------------------------------------------------

SELECT S2.TRAIN_NO AS ������ȣ,
       S2.RUN_ORDR AS �������,
       S2.RUN_SEG AS ���౸��,
       S2.DPT_TM AS ��߽ð�,
       S2.ARV_TM AS �����ð�,
       S2.RUN_HM AS ����ú�,
       CASE WHEN TO_NUMBER(SUBSTR(S2.RUN_HM,1,2)) > 0 THEN '��'
            ELSE ''
       END AS "1�ð� �̻� ����"
FROM   (
        SELECT S1.TRAIN_NO,
               RANK() OVER (PARTITION BY S1.TRAIN_NO ORDER BY S1.RUN_ORDR) AS RUN_ORDR,
               S1.PREV_STATION_NM || ' ~ ' || S1.STATION_NM AS RUN_SEG,
               FN_DT_CNVTMFMT(S1.PREV_DPT_TM) AS DPT_TM,
               FN_DT_CNVTMFMT(S1.ARV_TM) AS ARV_TM,
               SUBSTR(FN_DT_CNVTMFMT(FN_DT_SECTOTM(FN_DT_TMTOSEC(0,S1.ARV_TM) -  FN_DT_TMTOSEC(0,S1.PREV_DPT_TM))),1,5) AS RUN_HM
        FROM   (
                SELECT TRAIN_NO,
                       RUN_ORDR,
                       LAG(STATION_NM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR) AS PREV_STATION_NM,
                       STATION_NM,
                       LAG(DPT_TM) OVER (PARTITION BY TRAIN_NO ORDER BY RUN_ORDR) AS PREV_DPT_TM,
                       ARV_TM,
                       DPT_TM
                FROM   TB_TRAIN_TM
               ) S1
        WHERE  S1.PREV_STATION_NM IS NOT NULL
       ) S2
ORDER  BY S2.TRAIN_NO,
          S2.RUN_ORDR;

----------------------------------------------------------------------------------------------------
** 21��. �ǹ� SQL �Ұ�
** 21.1. ���� ù��/���� ������Ȳ
----------------------------------------------------------------------------------------------------

SELECT STN1.STN_NM AS ����,
       DECODE(S3.ST_END_FLG,1,'ù��','����') AS ���౸��,
       S3.TRN_NO AS ������ȣ,
       FN_DT_CNVTMFMT(S3.DPT_TM) AS ����߽ð�,
       CC.COM_CD_NM AS ��������,
       STN2.STN_NM AS �ù߿�,
       FN_DT_CNVTMFMT(S3.ST_TM) AS �ù߽ð�,
       STN3.STN_NM AS ������,
       FN_DT_CNVTMFMT(S3.CLS_TM) AS �����ð�
FROM   (
        SELECT S2.STN_CD,
               S2.ST_END_FLG,
               S2.TRN_NO,
               S2.DPT_TM,
               S2.STOP_DV_CD,
               TRB.ST_STN_CD,
               TRB.ST_TM,
               TRB.CLS_STN_CD,
               TRB.CLS_TM,
               TRB.RUN_ST_DT
        FROM   TBTR_TRN_BS TRB,
               (
                SELECT S1.PLN_NO,
                       S1.TRN_NO,
                       S1.DAY_CD,
                       S1.STN_CD,
                       S1.DPT_DAY_CNT,
                       S1.DPT_TM,
                       S1.STOP_DV_CD,
                       CASE WHEN S1.TM_SQNO = MIN(S1.TM_SQNO)
                                 OVER (PARTITION BY S1.STN_CD) THEN 1
                            WHEN S1.TM_SQNO = MAX(S1.TM_SQNO)
                                 OVER (PARTITION BY S1.STN_CD) THEN 2
                            ELSE 0
                       END AS ST_END_FLG
                FROM   (SELECT TRS.PLN_NO,
                               TRS.DAY_CD,
                               TRS.STN_CD,
                               TRS.DPT_DAY_CNT,
                               TRS.STOP_DV_CD,
                               TRS.DPT_TM,
                               TRS.TRN_NO,
                               RANK() OVER (PARTITION BY TRS.PLN_NO,
                                                         TRS.DAY_CD,
                                                         TRS.STN_CD
                                            ORDER BY TRS.DPT_DAY_CNT,
                                                     TRS.DPT_TM
                                           ) AS TM_SQNO
                        FROM   TBTR_TRN_STN TRS,
                               TBTR_TRN_BS TRB
                        WHERE  TRS.PLN_NO = '2019-001'
                        AND    TRS.PLN_NO = TRB.PLN_NO
                        AND    TRS.DAY_CD = '0'
                        AND    TRS.DAY_CD = TRB.DAY_CD
                        AND    TRS.TRN_NO = TRB.TRN_NO
                        AND    TRB.UND_DV_CD = 'D'
                        AND    TRS.LN_CD = 'S01'
                        AND    TRS.STOP_DV_CD IN ('01','21')
                        AND    '20190820' BETWEEN TRB.RUN_ST_DT
                               AND TRB.RUN_CLS_DT
                       ) S1
               ) S2
        WHERE  S2.ST_END_FLG <> 0
        AND    S2.PLN_NO = TRB.PLN_NO
        AND    S2.DAY_CD = TRB.DAY_CD
        AND    S2.TRN_NO = TRB.TRN_NO
       ) S3
LEFT   JOIN TBSI_STN STN1
ON     STN1.STN_CD = S3.STN_CD
AND    S3.RUN_ST_DT BETWEEN STN1.APL_ST_DT AND STN1.APL_CLS_DT
LEFT   JOIN TBSI_STN STN2
ON     STN2.STN_CD = S3.ST_STN_CD
AND    S3.RUN_ST_DT BETWEEN STN2.APL_ST_DT AND STN2.APL_CLS_DT
LEFT   JOIN TBSI_STN STN3
ON     STN3.STN_CD = S3.CLS_STN_CD
AND    S3.RUN_ST_DT BETWEEN STN3.APL_ST_DT AND STN3.APL_CLS_DT
LEFT   JOIN TBCM_COM_CD CC
ON     CC.COM_GRP_CD = 'STOP_DV_CD'
AND    CC.COM_CD = S3.STOP_DV_CD
ORDER  BY S3.STN_CD,
          S3.ST_END_FLG;

----------------------------------------------------------------------------------------------------
** 21.2. ������ ��� ����
----------------------------------------------------------------------------------------------------

SELECT S2.TRN_NO AS ������ȣ,
       CC1.COM_CD_NM AS ��������,
       CC2.COM_CD_NM AS ����,
       CC3.COM_CD_NM AS ����,
       STN1.STN_NM AS �ù߿�,
       FN_DT_CNVTMFMT(S2.ST_TM) AS �ù߽ð�,
       STN2.STN_NM AS ������,
       FN_DT_CNVTMFMT(S2.CLS_TM) AS �����ð�,
       S2.SCAR_INFO AS ȣ��,
       S2.ACM_KM AS ����Ű��,
       S2.DBL_FLG AS �߷ÿ���,
       S2.CPX_INFO AS ��������
FROM   (
        SELECT S1.TRN_NO,
               S1.TRN_KND_CD,
               S1.UND_DV_CD,
               S1.DAY_CD,
               S1.ST_STN_CD,
               S1.ST_TM,
               S1.CLS_STN_CD,
               S1.CLS_TM,
               S1.RUN_ST_DT,
               J1.SCAR_INFO,
               (SELECT MAX(TRS.ACM_KM)
                FROM   TBTR_TRN_STN TRS
                WHERE  TRS.PLN_NO = S1.PLN_NO
                AND    TRS.TRN_NO = S1.TRN_NO
                AND    TRS.DAY_CD = S1.DAY_CD
                GROUP  BY TRS.PLN_NO,
                          TRS.TRN_NO,
                          TRS.DAY_CD
               ) AS ACM_KM,
               (SELECT DECODE(MK_DBL_FLG,'Y','�߷�','')
                FROM   TBSI_MK MK
                WHERE  MK.MK_CD = S1.TRN_MK_CD
               ) AS DBL_FLG,
               J2.CPX_INFO
        FROM   (
                SELECT PLN_NO,
                       TRN_NO,
                       DAY_CD,
                       TRN_KND_CD,
                       UND_DV_CD,
                       ST_STN_CD,
                       ST_TM,
                       CLS_STN_CD,
                       CLS_TM,
                       TRN_MK_CD,
                       RUN_ST_DT
                FROM   TBTR_TRN_BS
                WHERE  PLN_NO = '2019-001'
                AND    '20190820' BETWEEN RUN_ST_DT AND RUN_CLS_DT
               ) S1
        LEFT   JOIN
               (
                SELECT TRN_NO,
                       DAY_CD,
                       MAX(DECODE(S1.SEG_NO,1,MIN_SCAR_NO)) || '~' ||
                         MAX(DECODE(S1.SEG_NO,1,MAX_SCAR_NO)) ||
                         MAX(DECODE(S1.SEG_NO,2,',' ||
                         DECODE(S1.SEG_NO,2,MIN_SCAR_NO) || '~' ||
                         DECODE(S1.SEG_NO,2,MAX_SCAR_NO),''))
                       AS SCAR_INFO
                FROM   (
                        SELECT TRN_NO,
                               DAY_CD,
                               SEG_NO,
                               MIN(SCAR_NO) AS MIN_SCAR_NO,
                               MAX(SCAR_NO) AS MAX_SCAR_NO
                        FROM   TBTR_TRN_SCAR
                        WHERE  PLN_NO = '2019-001'
                        AND    SCAR_NO <> 0
                        GROUP  BY TRN_NO,
                                  DAY_CD,
                                  SEG_NO
                       ) S1
                GROUP  BY S1.TRN_NO,
                          S1.DAY_CD
               ) J1
        ON     J1.TRN_NO = S1.TRN_NO
        AND    J1.DAY_CD = S1.DAY_CD
        LEFT   JOIN
               (
                SELECT TC.TRN_NO,
                       TC.DAY_CD,
                       TC.TGT_TRN_NO || ',' ||
                         DECODE(TC.PRE_FLG,'Y','����','N', '����','')
                         || ',' || STN.STN_NM AS CPX_INFO
                FROM   TBTR_TRN_CPX TC,
                       TBTR_TRN_BS TRB,
                       TBSI_STN STN
                WHERE  TC.PLN_NO = '2019-001'
                AND    TC.PLN_NO = TRB.PLN_NO
                AND    TC.DAY_CD = TRB.DAY_CD
                AND    TC.TRN_NO = TRB.TRN_NO
                AND    STN.STN_CD = TC.TGT_STN_CD(+)
                AND    TRB.RUN_ST_DT(+) BETWEEN STN.APL_ST_DT
                       AND STN.APL_CLS_DT
                AND    '20190820' BETWEEN TRB.RUN_ST_DT
                       AND TRB.RUN_CLS_DT
               ) J2
        ON     J2.TRN_NO = S1.TRN_NO
        AND    J2.DAY_CD = S1.DAY_CD
       ) S2
LEFT   JOIN TBCM_COM_CD CC1
ON     CC1.COM_GRP_CD = 'TRN_KND_CD'
AND    CC1.COM_CD = S2.TRN_KND_CD
LEFT   JOIN TBCM_COM_CD CC2
ON     CC2.COM_GRP_CD = 'UND_DV_CD'
AND    CC2.COM_CD = S2.UND_DV_CD
LEFT   JOIN TBCM_COM_CD CC3
ON     CC3.COM_GRP_CD = 'DAY_CD'
AND    CC3.COM_CD = S2.DAY_CD
LEFT   JOIN TBSI_STN STN1
ON     STN1.STN_CD = S2.ST_STN_CD
AND    S2.RUN_ST_DT BETWEEN STN1.APL_ST_DT AND STN1.APL_CLS_DT
LEFT   JOIN TBSI_STN STN2
ON     STN2.STN_CD = S2.CLS_STN_CD
AND    S2.RUN_ST_DT BETWEEN STN2.APL_ST_DT AND STN2.APL_CLS_DT
ORDER  BY S2.TRN_NO,
          S2.DAY_CD;

----------------------------------------------------------------------------------------------------
** THE END.. �����ϼ̽��ϴ�.
----------------------------------------------------------------------------------------------------
