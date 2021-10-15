# 날짜 : 2021/09/30
# 이름 : 변진하
# 내용 : 정형과 비정형 데이터 처리 - 텍스트 시각화 실습 교재 p301
install.packages('stringr')
install.packages('wordcloud')
install.packages('https://cran.seoul.go.kr/bin/windows/contrib/3.4/KoNLP_0.80.1.zip' , repos = NULL )
install.packages("multilinguer")
install.packages('Sejong')
install.packages('hash')
install.packages('rJava')
install.packages('tau')
install.packages('RSQLite')

install.packages('httr')
library(httr) set_config(config(ssl_verifypeer = 0L))
install.packages('magrittr')
install.packages('devtools')
install.packages('dplyr')
install.packages('assertthat')
install.packages('memoise')
library(rJava)
library(KoNLP)
library(dplyr)
library(wordcloud)
library(stringr)
library(Sejong)
#텍스트 데이터 불러오기
txt_data <- readLines('../file/wordcloud_data.txt', encoding = 'UTF-8')
txt_data

#명사 추출 
txt_noun <- extractNoun(txt_data)
extractAIC()

