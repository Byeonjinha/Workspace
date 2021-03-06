
CREATE TABLE TBSI_MK
(
  MK_CD             CHAR(5)                NOT NULL,
  MK_NM             VARCHAR(40),
  TRN_KND_CD        CHAR(3),
  MK_DBL_FLG        CHAR(1),
  BF_MK_CD          CHAR(5),
  AFT_MK_CD         CHAR(5),
  FX_MK_FLG         CHAR(1)
);

CREATE UNIQUE INDEX PK_TBSI_MAKE ON TBSI_MK (MK_CD);

CREATE INDEX IDX_TBSI_MAKE ON TBSI_MK (BF_MK_CD);

ALTER TABLE TBSI_MK ADD (CONSTRAINT PK_TBSI_MAKE PRIMARY KEY (MK_CD));
