#날짜 : 2021-09-27
#이름 : 변진하
#내용 : 데이터 유형과 구조 - DataFrame 실습하기 교재 p76

x1 <- seq(1:5)
x2 <- matrix(1:6 , nrow = 2)
x3 <- data.frame(col1 = c(1,2), col2 = c('김유신' , ' 김춘추'))

x1
x2
x3
values <- list(k1=x1,k2=x2,k3=x3)
values

values$k1[3]
values$k2[1,2]
values$k3col2[1]
