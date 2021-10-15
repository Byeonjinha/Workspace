#날짜 : 2021-09-28
#이름 : 변진하
#내용 : 제어문과 함수 - 연산자 교재 p108

#산술연산자 사용
num1 <- 100
num2 <- 20
result <- num1 +num2
result
result <- num1 - num2
result
result <- num1 * num2
result
result <- num1 / num2
result
result <- num1 %% num2
result

result <- num1 ^2
result
result <- num1 ^ num2
result


#관계연산자 사용
#(1) 동등비교
boolean <- num1 == num2 # 두 변수의 값이 같은지 비교
boolean 
boolean <- num1 != num2 # 두 변수의 값이 다른지 비교
boolean

#(2) 크기 비교
boolean <- num1 > num2 # num1 값이 큰지 비교
boolean
boolean <- num1 >=num2 # num1 값이 크거나 같은지 비교
boolean
boolean <- num1 < num2 # num2 값이 큰지 비교
boolean
boolean <- num1 <=num2 # num2 값이 크거나 같은지 비교
boolean



#논리 연산자
logical <- num1 >= 50 & num2 <= 10 # 두 관계식이 같은지 판단
logical 
logical <- !(num1 >= 50) # 괄호 안의 관계식 판단 결과에 대한 부정
logical
x <- TRUE; y <- FALSE
xor(x,y)






