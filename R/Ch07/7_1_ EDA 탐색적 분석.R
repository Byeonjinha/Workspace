#날짜 : 2021-09-29
#이름 : 변진하
#내용 : EDA 와 Data 정제 - 탐색적 분석 실습하기 교재 p194

df_exam <- read.csv('../file/exam.csv')

#View()
view(df_exam)
#dim()
dim(df_exam)

#str()
str(df_exam)
#summary()
summary(df_exam)
#sum()
sum(df_exam$math)
#mean()
mean(df_exam$english)
