DELETE FROM tbcm_com_cd WHERE COM_GRP_CD > '';
INSERT INTO tbcm_com_cd VALUES ('CAR_CHG_CD','A','증차',1);
INSERT INTO tbcm_com_cd VALUES ('CAR_CHG_CD','C','대체',3);
INSERT INTO tbcm_com_cd VALUES ('CAR_CHG_CD','D','감차',2);
INSERT INTO tbcm_com_cd VALUES ('CAR_CHG_CD','M','이동',4);
INSERT INTO tbcm_com_cd VALUES ('CAR_DV_CD','E','발전차',3);
INSERT INTO tbcm_com_cd VALUES ('CAR_DV_CD','M','운용차',1);
INSERT INTO tbcm_com_cd VALUES ('CAR_DV_CD','P','객차',2);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','01','신규운행',1);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','02','운행재개',2);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','09','운행중지',3);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','11','열차종류변경',4);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','12','구성변경',5);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','21','시발시각변경',6);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','22','운행시각변경',7);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','23','종착시각변경',8);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','31','정차역추가',9);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','32','정차역삭제',10);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','33','정차사유변경',11);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','34','시발역변경',12);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','35','종착역변경',13);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','36','운행구간변경',14);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','91','증차',15);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','92','감차',16);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','93','대체',17);
INSERT INTO tbcm_com_cd VALUES ('CHG_DV_CD','94','이동',18);
INSERT INTO tbcm_com_cd VALUES ('CONT_DV_CD','A','선후행연결',3);
INSERT INTO tbcm_com_cd VALUES ('CONT_DV_CD','B','후행연결',2);
INSERT INTO tbcm_com_cd VALUES ('CONT_DV_CD','F','선행연결',1);
INSERT INTO tbcm_com_cd VALUES ('CPX_DV_CD','C','순환',3);
INSERT INTO tbcm_com_cd VALUES ('CPX_DV_CD','D','분할',1);
INSERT INTO tbcm_com_cd VALUES ('CPX_DV_CD','M','합병',2);
INSERT INTO tbcm_com_cd VALUES ('DAY_CD','0','매일',1);
INSERT INTO tbcm_com_cd VALUES ('DAY_CD','1','일요일',2);
INSERT INTO tbcm_com_cd VALUES ('DAY_CD','2','평일',3);
INSERT INTO tbcm_com_cd VALUES ('DAY_CD','7','토요일',4);
INSERT INTO tbcm_com_cd VALUES ('DAY_CD','X','무관',5);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','00','준비',1);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','01','작업중',2);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','08','가승인',3);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','09','승인',4);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','X1','임시작업',5);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','X2','작업보류',6);
INSERT INTO tbcm_com_cd VALUES ('PLN_STT_CD','X3','삭제예정',7);
INSERT INTO tbcm_com_cd VALUES ('PRC_LVL_CD','10','고속',1);
INSERT INTO tbcm_com_cd VALUES ('PRC_LVL_CD','20','준고속',2);
INSERT INTO tbcm_com_cd VALUES ('PRC_LVL_CD','30','일반',3);
INSERT INTO tbcm_com_cd VALUES ('PRC_LVL_CD','40','저속',4);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','00','비승용',1);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','01','일반실',2);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','02','특실',3);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','11','일반침대차',4);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','12','일반식당차',5);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','13','일반스낵차',6);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','21','고급침대차',7);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','22','고급식당차',8);
INSERT INTO tbcm_com_cd VALUES ('PSRM_LVL_CD','23','고급스낵차',9);
INSERT INTO tbcm_com_cd VALUES ('PTN_DV_CD','1','일반',1);
INSERT INTO tbcm_com_cd VALUES ('PTN_DV_CD','2','급행',2);
INSERT INTO tbcm_com_cd VALUES ('ROUT_DV_CD','10','정기여객',1);
INSERT INTO tbcm_com_cd VALUES ('ROUT_DV_CD','11','임시여객',2);
INSERT INTO tbcm_com_cd VALUES ('ROUT_DV_CD','20','비여객',3);
INSERT INTO tbcm_com_cd VALUES ('RUN_DV_CD','1','정기',1);
INSERT INTO tbcm_com_cd VALUES ('RUN_DV_CD','2','부정기',2);
INSERT INTO tbcm_com_cd VALUES ('RUN_DV_CD','3','임시',3);
INSERT INTO tbcm_com_cd VALUES ('SD_LN_DV_CD','D','복선',2);
INSERT INTO tbcm_com_cd VALUES ('SD_LN_DV_CD','S','단선',1);
INSERT INTO tbcm_com_cd VALUES ('SEG_DV_CD','01','단복선',1);
INSERT INTO tbcm_com_cd VALUES ('SEG_DV_CD','02','열차시각표',2);
INSERT INTO tbcm_com_cd VALUES ('SEG_DV_CD','03','최고속도',3);
INSERT INTO tbcm_com_cd VALUES ('SEG_DV_CD','04','열차운행량',4);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD00','00Km',1);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD01','10Km',2);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD02','20Km',3);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD03','30Km',4);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD04','40Km',5);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD05','50Km',6);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD06','60Km',7);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD07','70Km',8);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD08','80Km',9);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD09','90Km',10);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD10','100Km',11);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD11','110Km',12);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD12','120Km',13);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD13','130Km',14);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD14','140Km',15);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD15','150Km',16);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD16','160Km',17);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD17','170Km',18);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD18','180Km',19);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD19','190Km',20);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD20','200Km',21);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD21','210Km',22);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD22','220Km',23);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD23','230Km',24);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD24','240Km',25);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD25','250Km',26);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD26','260Km',27);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD27','270Km',28);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD28','280Km',29);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD29','290Km',30);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD30','300Km',31);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD31','310Km',32);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD32','320Km',33);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD33','330Km',34);
INSERT INTO tbcm_com_cd VALUES ('SPD_DV_CD','SPD34','340Km',35);
INSERT INTO tbcm_com_cd VALUES ('STN_DV_CD','B','대형역',1);
INSERT INTO tbcm_com_cd VALUES ('STN_DV_CD','M','중형역',2);
INSERT INTO tbcm_com_cd VALUES ('STN_DV_CD','S','소형역',3);
INSERT INTO tbcm_com_cd VALUES ('STN_KND_CD','01','일반역',1);
INSERT INTO tbcm_com_cd VALUES ('STN_KND_CD','11','간이역',2);
INSERT INTO tbcm_com_cd VALUES ('STN_KND_CD','12','신호장',3);
INSERT INTO tbcm_com_cd VALUES ('STN_KND_CD','13','임시승강장',4);
INSERT INTO tbcm_com_cd VALUES ('STN_KND_CD','91','차량기지',5);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','01','시발',1);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','05','통과',2);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','06','임시통과',3);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','11','정차',4);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','12','임시정차',5);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','21','여객정차',6);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','31','운전취급',7);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','32','교행',8);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','33','대피',9);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','41','동력차교체',10);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','42','승무원교대',11);
INSERT INTO tbcm_com_cd VALUES ('STOP_DV_CD','99','종착',12);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','1','일반',1);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','2','단체',2);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','3','관광',3);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','A','일반관광',4);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','B','수학여행',5);
INSERT INTO tbcm_com_cd VALUES ('TRN_ATT_CD','C','기업단체',6);
INSERT INTO tbcm_com_cd VALUES ('TRN_KND_CD','CT1','CITY-일반',1);
INSERT INTO tbcm_com_cd VALUES ('TRN_KND_CD','CT2','CITY-고급',2);
INSERT INTO tbcm_com_cd VALUES ('TRN_KND_CD','XT1','CITY-고속',3);
INSERT INTO tbcm_com_cd VALUES ('TRN_KND_CD','XT2','CITY-미래',4);
INSERT INTO tbcm_com_cd VALUES ('TRN_SPD_CD','S10','고속',1);
INSERT INTO tbcm_com_cd VALUES ('TRN_SPD_CD','S20','준고속',2);
INSERT INTO tbcm_com_cd VALUES ('TRN_SPD_CD','S30','일반',3);
INSERT INTO tbcm_com_cd VALUES ('TRN_SPD_CD','S40','저속',4);
INSERT INTO tbcm_com_cd VALUES ('UND_DV_CD','D','하행',1);
INSERT INTO tbcm_com_cd VALUES ('UND_DV_CD','U','상행',2);
COMMIT;
