
CREATE TABLE TBSI_RUN_PTN_DET
(
  ROUT_CD             CHAR(5)                NOT NULL,
  RUN_PTN_NO          INT(5)                 NOT NULL,
  RUN_ORDR            INT(3)                 NOT NULL,
  LN_CD               CHAR(3)                NOT NULL,
  STN_CD              CHAR(8)                NOT NULL,
  STN_RUN_TM          CHAR(6)                NOT NULL,
  STN_STOP_TM         CHAR(6)                NOT NULL,
  STN_STOP_DV_CD      CHAR(2)                NOT NULL,
  ACM_KM              FLOAT(5,1)             NOT NULL
);

CREATE UNIQUE INDEX PK_TBSI_RUN_PTN_DET ON TBSI_RUN_PTN_DET (ROUT_CD, RUN_PTN_NO, RUN_ORDR);

ALTER TABLE TBSI_RUN_PTN_DET ADD (CONSTRAINT PK_TBSI_RUN_PTN_DET PRIMARY KEY (ROUT_CD, RUN_PTN_NO, RUN_ORDR));

ALTER TABLE TBSI_RUN_PTN_DET ADD (CONSTRAINT FK_TBSI_RUN_PTN_DET FOREIGN KEY (ROUT_CD, RUN_PTN_NO)
                                   REFERENCES TBSI_RUN_PTN (ROUT_CD, RUN_PTN_NO));
