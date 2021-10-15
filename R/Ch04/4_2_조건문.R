#날짜 : 2021-09-28
#이름 : 변진하
#내용 : 제어문과 함수 - 조건문 교재 p110

# if() 함수 사용하기
x<- 50;  y <- 4 ; z<- x*y
if (x * y >= 40) {
  cat("x*y 의 결과는 40이상 입니다. \n")
  cat("x*y=" , z)
}else{
  cat("x*y 의 결과는 40 미만입닌다. x*y  = ", z, "\n")
}

# if()함수 사용으로 입력된 점수의 학점 구하기
score <- scan() #점수 입력 받기
85

score                #입력된 점수 확인

result <- "노력"     #결과 초기값 지정
if (score >= 80){    # 입력 정수가 80 이상이면
  result <-"우수"   #결과 변경
  }
cat("당신의 학점은" , result, score) # 결과확인]


#if ~else if 형식으로 학점 구하기
score <- scan()
90


if(score>= 90) {
  result = "A 학점"
} else if(score >= 80){
  result = "B 학점"
} else if(score >= 70){
  result = "C 학점"
} else if(score >= 60){
  result = "D 학점"
} else {
  result = "F 학점"
}

cat("당신의 학점은" , result) #문자열과 변수의 값을 함께 출력
print(result)


#ifelse() 함수 사용하기
score <- scan()
90

ifelse(score>=80, "우수", "노력") # "우수" 선택
ifelse(score <= 80, "우수", "노력") # "노력" 선택
