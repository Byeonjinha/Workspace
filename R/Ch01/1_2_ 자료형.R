# 날짜 : 2021-09-27
# 이름 : 변진하
# 내용 : R 설치와 개요 - 변수실습하기 교재 p41

#숫자형 (정수, 실수)
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2; num3

 논리형
bool1 <- TRUE
bool2 <- FALSE
bool1
bool2

#문자형(문자, 문자열)
str1 <- "Hello"
str2 <- "안녕"
str1
str2

#특수형
var1 <-NULL # 초기값을 의미
var2 <- NA  # 결측값, Not available
var3 <- NaN #수학적으로 정의가 불가능한 값, Not a Number
var1
var2
var3

####################################################
#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20 #숫자형 값 초기화
int 
string <- "홍길동"  #문자형 값 초기화 
string
boolean <- TRUE  #논리형 값 초기화
boolean
sum(10,20,20)    #3 개의 숫자형 값의 합계 연산
sum(10,20,20,NA) #NA - 결측치 자료형
sum(10,20,20,NA,na.rm=TRUE) #NA - 결측치 제거 후 합계 여산
ls()                       #현재사용중인 변수(객체) 보기


#교재 p43 실습 - 자료형 확인
is.character(string)  #string 변수의 문자형 여부 확인
x <- is.numeric(int) #int 변수의 숫자형 여부의 결과를 x에 저장
x
is.logical(boolean) #boolean 변수의 논리형 여부 확인
is.logical(x) #x변수의 논리형 여부 확인
is.na(x) #x변수의 NA 여부 확인


#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기기
x<- c(1,2,"3")
x
result <- x*3
result <- as.numeric(x)*3
result
#result2 <- as.integer(x)*3 #as.integer()함수도 같은 결과


#교재 p44 실습 - 복소수 자료 생성과 형 변환
z <- 5.3 - 3i # 복소수 자료 생성
Re(z) # 실수 (real number) : 현실의 수
Im(z) # 허수(imaginary number) : 상상의 수
is.complex(x)  #복소수 여부 확인
as.complex(5.3) #복소수로 형 변환환
#교재 p44 실습 - 스칼라 변수의 자료형과 자료구조 확인
#mode(변수) : 자료의 성격(type) 을 알려준다.
mode(int) # numeric
mode(string) #character
mode(boolean) # logical

#class(변수) : 자료 구조의 성격(type)을 알려준다.
class(int) #numeric
class(string) #character
class(boolean) #logical



#교재 p45 실습 - 문자벡터와 그래프 생성
gender <- c("man","woman", "woman", "man", "man")
plot(gender) # error 발생: 차트는 수치 데이터만 가능

#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender) #Factor 형 변환
table(Ngender) #빈도수 구하기


#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)
#자료형과 자료구조 보기
mode(Ngender)
class(Ngender)
is.factor(Ngender)


#교재 p46 실습 Factor Nominal 변수 내용보기
Ngender