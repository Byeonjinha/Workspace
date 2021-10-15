#날짜 : 2021-09-29
#이름 : 변진하
#내용 : EDA 와 Data 정제 - 결측치 실습하기 교재 p200

df_exam <- read.csv('../file/exam_na.csv')
df_exam

#결측치 존재여부 확인
is.na(df_exam)

#결측치를 찾는 행 제거
df_exam_new <- df_exam %>%  filter(!is.na(math) & !is.na(engilsh) & !is.na(science))
df_exam_new

