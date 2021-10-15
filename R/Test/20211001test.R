#날짜 : 2021-10-01
#이름 : 변진하
#내용 : 빅데이터 모듈 개발하기 Test

# 1)  exam.csv 파일을 DataFrame 출력

exam <- read.csv('../file/exam.csv')
exam

# 2) math, english, science 변수만 갖는 DataFrame 출력
df_result1 <- exam %>% select(math, english, science)
df_result1

# 3) Class가 1인 모든 변수를 갖는 DataFrame
df_class1 <- exam %>%  select(everything()) %>%  filter(class ==1)
df_class1

# 4) english가 60점 이상 이고 80점 미만 DataFrame 출력
df_rs1 <- exam %>%  filter(english >= 60 & english < 80)
df_rs1
 
# 5)  science가 60점 이상 이고 80점 미만 DataFrame 출력
df_rs2 <- exam %>%  filter(science >= 60 & science < 80)
df_rs2

# 6) math가 60점 이상 이고 점수가 높은 순서를 갖는 class, id, math 변수를 갖는DataFrame 출력
df_rs3 <- exam %>%  filter(math >= 60 ) %>% select(class, id ,math)  %>%  arrange(desc(math))
df_rs3

# 7) Class로 그룹화 되고 수학점수 평균, 영어점수 평균, 과학점수 평균 변수를 갖는 DataFrame 출력
df_group1 <- exam %>%  group_by(class) %>% summarise(mean(math),mean(english),mean(science))
df_group1

# 8) total(math, english, science의 합) 파생변수를 갖는 DataFrame 출력
df_total <- exam %>% mutate(total = math+english+science)
df_total

# 9) mean(math, english, science의 평균) 파생변수를 갖는 DataFrame 출력
df_mean <- df_total %>% mutate(mean = total/3)
df_mean

# 10) grade(평균의 등급, A, B, C, D, F) 파생변수를 갖는 DataFrame 출력

df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 90, 'A',
                                       ifelse(mean >= 80, 'B',
                                       ifelse(mean >= 70, 'C',
                                       ifelse(mean >= 60, 'D', 'F')))))
df_grade