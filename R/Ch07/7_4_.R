#날짜 : 2021-09-29
#이름 : 변진하
#내용 : EDA 와 Data 정제 - 파생변수 실습하기 교재 p215

df_exam <- read.csv('../file/exam.csv')
df_exam

#파생변수 total
df_exam$total <- df_exam$math + df_exam$english + df_exam$science
df_exam
df_exam$mean <- df_exam$total/3
#파생변수 grade
df_exam$grade <- ifelse(df_exam$mean  >= 90 , 'A',
                 ifelse(df_exam$mean  >= 80 , 'B', 
                 ifelse(df_exam$mean  >= 70 , 'c',      
                 ifelse(df_exam$mean  >= 60 , 'D', 'F'))))
df_exam
