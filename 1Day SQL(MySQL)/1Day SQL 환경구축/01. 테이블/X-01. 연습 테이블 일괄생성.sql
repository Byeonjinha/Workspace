-- --------------------------------------------------------------------------------------------------
-- ���� ���̺� ����
-- --------------------------------------------------------------------------------------------------

-- ------------------------------------------------
-- �� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_CUSTOMER
(
  CUSTOMER_CD      CHAR(7)                 NOT NULL,   -- ���ڵ�
  CUSTOMER_NM      VARCHAR(10)             NOT NULL,   -- ����
  MW_FLG           CHAR(1)                 NOT NULL,   -- ��������
  BIRTH_DAY        CHAR(8)                 NOT NULL,   -- ����
  PHONE_INT        VARCHAR(16),                        -- ��ȭ��ȣ
  EMAIL            VARCHAR(30),                        -- EMAIL
  TOTAL_POINT      INT(10),                            -- ��������Ʈ
  REG_DTTM         CHAR(14)                            -- �����
);
CREATE UNIQUE INDEX PK_TB_CUSTOMER ON TB_CUSTOMER (CUSTOMER_CD);
ALTER TABLE TB_CUSTOMER ADD (CONSTRAINT PK_TB_CUSTOMER PRIMARY KEY (CUSTOMER_CD));

-- ------------------------------------------------
-- �߰� �� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_ADD_CUSTOMER
(
  CUSTOMER_CD      CHAR(7)                 NOT NULL,   -- ���ڵ�
  CUSTOMER_NM      VARCHAR(10)             NOT NULL,   -- ����
  MW_FLG           CHAR(1)                 NOT NULL,   -- ��������
  BIRTH_DAY        CHAR(8)                 NOT NULL,   -- ����
  PHONE_INT        VARCHAR(16)                         -- ��ȭ��ȣ
);
CREATE UNIQUE INDEX PK_TB_ADD_CUSTOMER ON TB_ADD_CUSTOMER (CUSTOMER_CD);
ALTER TABLE TB_ADD_CUSTOMER ADD (CONSTRAINT PK_TB_ADD_CUSTOMER PRIMARY KEY (CUSTOMER_CD));

-- ------------------------------------------------
-- ����Ʈ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_POINT
(
  CUSTOMER_CD      CHAR(7)                   NOT NULL,   -- ���ڵ�
  SEQ_NO           INT(10)                   NOT NULL,   -- �Ϸù�ȣ
  POINT_MEMO       VARCHAR(50),                          -- ����Ʈ ����
  POINT            INT(10),                              -- ����Ʈ
  REG_DTTM         CHAR(14)                              -- �����
);
CREATE UNIQUE INDEX PK_TB_POINT ON TB_POINT (CUSTOMER_CD, SEQ_NO);
ALTER TABLE TB_POINT ADD (CONSTRAINT PK_TB_POINT PRIMARY KEY (CUSTOMER_CD, SEQ_NO));

-- ------------------------------------------------
-- 2017�� ����Ʈ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_POINT_2017
(
  CUSTOMER_CD      CHAR(7)                   NOT NULL,   -- ���ڵ�
  SEQ_NO           INT(10)                   NOT NULL,   -- �Ϸù�ȣ
  POINT_MEMO       VARCHAR(50),                          -- ����Ʈ ����
  POINT            INT(10),                              -- ����Ʈ
  REG_DTTM         CHAR(14)                              -- �����
);
CREATE UNIQUE INDEX PK_TB_POINT_2017 ON TB_POINT_2017 (CUSTOMER_CD, SEQ_NO);
ALTER TABLE TB_POINT_2017 ADD (CONSTRAINT PK_TB_POINT_2017 PRIMARY KEY (CUSTOMER_CD, SEQ_NO));

-- ------------------------------------------------
-- 2018�� ����Ʈ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_POINT_2018
(
  CUSTOMER_CD      CHAR(7)                   NOT NULL,   -- ���ڵ�
  SEQ_NO           INT(10)                   NOT NULL,   -- �Ϸù�ȣ
  POINT_MEMO       VARCHAR(50),                          -- ����Ʈ ����
  POINT            INT(10),                              -- ����Ʈ
  REG_DTTM         CHAR(14)                              -- �����
);
CREATE UNIQUE INDEX PK_TB_POINT_2018 ON TB_POINT_2018 (CUSTOMER_CD, SEQ_NO);
ALTER TABLE TB_POINT_2018 ADD (CONSTRAINT PK_TB_POINT_2018 PRIMARY KEY (CUSTOMER_CD, SEQ_NO));

-- ------------------------------------------------
-- 2019�� ����Ʈ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_POINT_2019
(
  CUSTOMER_CD      CHAR(7)                   NOT NULL,   -- ���ڵ�
  SEQ_NO           INT(10)                   NOT NULL,   -- �Ϸù�ȣ
  POINT_MEMO       VARCHAR(50),                          -- ����Ʈ ����
  POINT            INT(10),                              -- ����Ʈ
  REG_DTTM         CHAR(14)                              -- �����
);
CREATE UNIQUE INDEX PK_TB_POINT_2019 ON TB_POINT_2019 (CUSTOMER_CD, SEQ_NO);
ALTER TABLE TB_POINT_2019 ADD (CONSTRAINT PK_TB_POINT_2019 PRIMARY KEY (CUSTOMER_CD, SEQ_NO));

-- ------------------------------------------------
-- ��Ÿ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_ETC_INFO
(
  CUSTOMER_CD        CHAR(7)                 NOT NULL,   -- ���ڵ�
  CUSTOMER_ENG_NM    VARCHAR(20),                        -- ���� ����
  ITEM_LIST          VARCHAR(40)                         -- ���� ǰ��
);
CREATE UNIQUE INDEX PK_TB_ETC_INFO ON TB_ETC_INFO (CUSTOMER_CD);
ALTER TABLE TB_ETC_INFO ADD (CONSTRAINT PK_TB_ETC_INFO PRIMARY KEY (CUSTOMER_CD));

-- ------------------------------------------------
-- ǰ������ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_ITEM_INFO
(
  ITEM_CD          CHAR(7)                 NOT NULL,   -- ���� ǰ�� �ڵ�
  ITEM_NM          VARCHAR(20)                         -- ���� ǰ���

);
CREATE UNIQUE INDEX PK_TB_ITEM_INFO ON TB_ITEM_INFO (ITEM_CD);
ALTER TABLE TB_ITEM_INFO ADD (CONSTRAINT PK_TB_ITEM_INFO PRIMARY KEY (ITEM_CD));

-- ------------------------------------------------
-- ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_GRADE
(
  CLASS_CD         CHAR(1)                   NOT NULL,   -- ���ڵ�
  STUDENT_NO       INT(2)                    NOT NULL,   -- �л���ȣ
  STUDENT_NM       VARCHAR(10)               NOT NULL,   -- �л���
  KOR              INT(3),                               -- ����
  ENG              INT(3),                               -- ����
  MAT              INT(3),                               -- ����
  TOT              INT(3),                               -- �հ�
  AVG              FLOAT(5,1)                            -- ���
);
CREATE UNIQUE INDEX PK_TB_GRADE ON TB_GRADE (CLASS_CD, STUDENT_NO);
ALTER TABLE TB_GRADE ADD (CONSTRAINT PK_TB_GRADE PRIMARY KEY (CLASS_CD, STUDENT_NO));

-- ------------------------------------------------
-- 7�� ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_GRADE_07
(
  TEST_CD          CHAR(3)                   NOT NULL,   -- �����ڵ�
  KOR              INT(3),                               -- ����
  ENG              INT(3),                               -- ����
  MAT              INT(3)                                -- ����
);
CREATE UNIQUE INDEX PK_TB_GRADE_07 ON TB_GRADE_07 (TEST_CD);
ALTER TABLE TB_GRADE_07 ADD (CONSTRAINT PK_TB_GRADE_07 PRIMARY KEY (TEST_CD));

-- ------------------------------------------------
-- 8�� ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_GRADE_08
(
  TEST_CD          CHAR(3)                   NOT NULL,   -- �����ڵ�
  KOR              INT(3),                               -- ����
  ENG              INT(3),                               -- ����
  MAT              INT(3)                                -- ����
);
CREATE UNIQUE INDEX PK_TB_GRADE_08 ON TB_GRADE_08 (TEST_CD);
ALTER TABLE TB_GRADE_08 ADD (CONSTRAINT PK_TB_GRADE_08 PRIMARY KEY (TEST_CD));

-- ------------------------------------------------
-- 9�� ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_GRADE_09
(
  TEST_CD          CHAR(3)                   NOT NULL,   -- �����ڵ�
  KOR              INT(3),                               -- ����
  ENG              INT(3),                               -- ����
  MAT              INT(3)                                -- ����
);
CREATE UNIQUE INDEX PK_TB_GRADE_09 ON TB_GRADE_09 (TEST_CD);
ALTER TABLE TB_GRADE_09 ADD (CONSTRAINT PK_TB_GRADE_09 PRIMARY KEY (TEST_CD));

-- ------------------------------------------------
-- 2020�� ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_GRADE_2020
(
  TEST_MONTH       CHAR(2)                   NOT NULL,   -- ��
  TEST_CD          CHAR(3)                   NOT NULL,   -- �����ڵ�
  KOR              INT(3),                               -- ����
  ENG              INT(3),                               -- ����
  MAT              INT(3)                                -- ����
);

CREATE UNIQUE INDEX PK_TB_GRADE_2020 ON TB_GRADE_2020 (TEST_MONTH);
ALTER TABLE TB_GRADE_2020 ADD (CONSTRAINT PK_TB_GRADE_2020 PRIMARY KEY (TEST_MONTH));

-- ------------------------------------------------
-- �� ���� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_CLASS_INFO
(
  CLASS_CD         CHAR(1)                 NOT NULL,   -- ���ڵ�
  CLASS_NM         VARCHAR(20)             NOT NULL    -- �ݸ�
);
CREATE UNIQUE INDEX PK_TB_CLASS_INFO ON TB_CLASS_INFO (CLASS_CD, CLASS_NM);
ALTER TABLE TB_CLASS_INFO ADD (CONSTRAINT PK_TB_CLASS_INFO PRIMARY KEY (CLASS_CD, CLASS_NM));

-- ------------------------------------------------
-- �Ǹ� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_SALES
(
  SALES_DT         CHAR(8)                   NOT NULL,   -- �����
  SEQ_NO           INT(5)                    NOT NULL,   -- �Ϸù�ȣ
  PRODUCT_NM       VARCHAR(20),                          -- ��ǰ��
  PRICE            INT(10),                              -- �ܰ�(��)
  SALES_COUNT      INT(3)                                -- �ǸŰ���
);
CREATE UNIQUE INDEX PK_TB_SALES ON TB_SALES (SALES_DT, SEQ_NO);
ALTER TABLE TB_SALES ADD (CONSTRAINT PK_TB_SALES PRIMARY KEY (SALES_DT, SEQ_NO));

-- ------------------------------------------------
-- 9�� �Ǹ� ���̺�
-- ------------------------------------------------

CREATE TABLE TB_SALES_09
(
  SEQ_NO           INT(10)                    NOT NULL,   -- �Ϸù�ȣ
  PRODUCT_NM       VARCHAR(20),                           -- ��ǰ��
  CUSTOMER_CD      CHAR(7),                               -- ���ڵ�
  SALES_COUNT      INT(3)                                 -- �ǸŰ���
);
CREATE UNIQUE INDEX PK_TB_SALES_09 ON TB_SALES_09 (SEQ_NO);
ALTER TABLE TB_SALES_09 ADD (CONSTRAINT PK_TB_SALES_09 PRIMARY KEY (SEQ_NO));

-- ------------------------------------------------
-- �����ð�ǥ ���̺�
-- ------------------------------------------------

CREATE TABLE TB_TRAIN_TM
(
  TRAIN_NO         CHAR(5)                   NOT NULL,   -- ������ȣ
  RUN_ORDR         INT(5)                    NOT NULL,   -- �������
  STATION_NM       VARCHAR(20),                          -- ����
  ARV_TM           CHAR(6),                              -- �����ð�
  DPT_TM           CHAR(6)                               -- ��߽ð�
);
CREATE UNIQUE INDEX PK_TB_TRAIN_TM ON TB_TRAIN_TM (TRAIN_NO, RUN_ORDR);
ALTER TABLE TB_TRAIN_TM ADD (CONSTRAINT PK_TB_TRAIN_TM PRIMARY KEY (TRAIN_NO, RUN_ORDR));


-- ------------------------------------------------
-- ����Ʈ ���� ���̺� (��������, ���ν����� ���/����)
-- * ���� RANK �ʵ带 RANK1 �ʵ�� ����
-- ------------------------------------------------

CREATE TABLE TB_POINT_INFO
(
  YEAR             CHAR(4)                  NOT NULL,   -- ����
  RANK1            INT(10)                  NOT NULL,   -- ����
  CUSTOMER_CD      CHAR(7)                  NOT NULL,   -- ���ڵ�
  POINT            INT(10),                             -- ����Ʈ
  LAST_POINT_DT    CHAR(8)                              -- ���� ����Ʈ ������
);
CREATE UNIQUE INDEX PK_TB_POINT_INFO ON TB_POINT_INFO (YEAR, RANK1);
ALTER TABLE TB_POINT_INFO ADD (CONSTRAINT PK_TB_POINT_INFO PRIMARY KEY (YEAR, RANK1));
