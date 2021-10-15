# 날짜 : 2021/09/30
# 이름 : 변진하하
# 내용 : 정형과 비정형 데이터 처리 - MySQL 데이터 처리 교재 p292

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)

#데이터베이스 접속
conn <- dbConnect(MySQL(),
                  host='13.209.14.14',
                  user = 'jinhaday' ,
                  password='1234',
                  dbname='jinhaday')

#쿼리실행
df_user <- dbGetQuery(conn, statement =  'SELECT * FROM `USER1` ')
Encoding(df_user$name) <- 'UTF-8'
df_user


#매출 데이터 불러오기 
df_sale <- dbGetQuery(conn , statement = 'SELECT * FROM `SALE`')
df_sale

#직원별 매출 현황
df_result <- df_sale %>%  group_by(uid) %>%  summarise(total = sum(sales)) %>%  arrange(desc(total))
df_result

#시각화
ggplot(data = df_result, aes(x=uid, y=))