
CREATE TABLE TBSI_RT_TRN_NO
(
  ROUT_CD         CHAR(5)                  NOT NULL,
  APL_ST_DT       CHAR(8)                  NOT NULL,
  ST_TRN_NO       CHAR(5)                  NOT NULL,
  CLS_TRN_NO      CHAR(5)                  NOT NULL
);

CREATE UNIQUE INDEX PK_TBSI_RT_TRN_NO ON TBSI_RT_TRN_NO (ROUT_CD, APL_ST_DT);

ALTER TABLE TBSI_RT_TRN_NO ADD (CONSTRAINT PK_TBSI_RT_TRN_NO PRIMARY KEY (ROUT_CD, APL_ST_DT));

ALTER TABLE TBSI_RT_TRN_NO ADD (CONSTRAINT FK_TBSI_RT_TRN_NO FOREIGN KEY (ROUT_CD, APL_ST_DT)
                                REFERENCES TBSI_RT (ROUT_CD, APL_ST_DT));

