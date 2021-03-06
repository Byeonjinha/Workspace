#날짜 : 2021-09-29
#이름 : 변진하
#내용 : dplyr 패키지 실습하기 교재 p169

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
df_exam

#select
df_rs <- df_exam[,3]
df_rs

df_math <- df_exam  %>% select(math)
df_english <- df_exam %>% select(english)
df_result1 <- df_exam %>% select(english, science)
df_result2 <- df_exam %>% select(everything())
df_result2

#filter
df_class1 <- df_exam %>%  select(everything()) %>%  filter(class ==1)
df_class1

# - 영어점수 60점 이상 그리고 80점 미만
df_rs1 <- df_exam %>%  filter(english >= 60 & english < 80)
df_rs1
# - 과학점수 60점 이상 그리고 80점 미만
df_rs2 <- df_exam %>%  filter(science >= 60 & science < 80)
df_rs2
# - class가 1인 반의 수학점수만 출력
df_rs3 <- df_exam %>%  filter(class == 1 ) %>% select(math) 
df_rs3

#arrange
df_math_asc <- df_exam %>%  arrange(math)
df_math_desc <- df_exam %>%  arrange(desc(math))
df_math_asc
df_math_desc

#mutate - DataFrame에 파생변수 (새로운 칼럼)을 생성
df_total <- df_exam %>% mutate(total = math+english+science)
df_total
df_mean <- df_total %>% mutate(mean = total/3)
df_mean
df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 90, 'A',
                                       ifelse(mean >= 80, 'B',
                                       ifelse(mean >= 70, 'C',
                                       ifelse(mean >= 60, 'D', 'F')))))
df_grade



#summarise - DataFrame의 요약통계 확인
df_exam %>%  summarise(mean_math = mean(math))
df_exam %>%  summarise(sum_math = sum(math))

#group_by
df_group1 <- df_exam %>%  group_by(class) %>%  summarise(sum(math))
df_group2 <- df_exam %>%  group_by(class) %>%  summarise(mean(math))
df_group2
#inner_join
df_teacher <- data.frame(class = c(1,2,3,4,5) , 
                         name = c('김유신' , '김춘추' ,'장보고','강감찬','이순신'))
df_teacher

df_join <- inner_join(df_exam, df_teacher, by= 'class')
df_join



#교재 p169 실습 - iris 데이터셋을 대상으로 %>% 연산자를 이용하여 함수 적용하기

#교재 p170 실습 - dplyr패키지와 hflight 데이터셋 설치

#교재 p171 실습 - hflight 데이터셋 구조 보기
#교재 p171 실습 - tbl_df() 함수 사용하기

#교재 p172 실습 - hflights_df를 대상으로 특정일의 데이터 추출하기

#교재 p173 실습 - hflights_df를 대상으로 지정된 월의 데이터 추출하기

#교재 p174 실습 - hflights_df를 대상으로 데이터 정렬하기

#교재 p175 실습 - hflights_df를 대상으로 지정된 칼럼 데이터 검색하기
#교재 p175 실습 - hflights_df를 대상으로 칼럼의 범위로 검색하기

#교재 p176 실습 - hflights_df에서 출발 지연시간과 도착 지연시간의 차이를 계산한 컬럼 추가하기

#교재 p177 실습 - mutate()함수에 의해 추가된 칼럼 보기
#교재 p177 실습 - hflights_df에서 비행시간의 평균 구하기

#교재 p178 실습 - hflights_df의 관측치 길이 구하기
#교재 p178 실습 - 도착시간의 표준편차와 분산 계산하기
#교재 p178 실습 - 집단변수를 이용하여 그룹화하기

#교재 p180 실습 - 공통변수를 이용하여 내부 조인하기
#교재 p180 실습 - 공통변수를 이용하여 왼쪽 조인하기

#교재 p181 실습 - 공통변수를 이용하여 오른쪽 조인하기
#교재 p181 실습 - 공통변수를 이용하여 전체 조인하기

#교재 p182 실습 - 두 개의 데이터프레임을 행 단위로 합치기

#교재 p183 실습 - 두 개의 데이터프레임을 열 단위로 합치기
#교재 p183 실습 - 데이터프레임의 칼럼명 수정하기



