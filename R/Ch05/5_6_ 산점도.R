#날짜 : 2021-09-28
#이름 : 변진하
#내용 : 데이터 시각화 - 산점도 교재 p148

mtcars 

wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt,mpg)
plot(wt,mpg , col = 'red' , pch= 5)

iris

iris[,3:4]
df_iris <- iris[,3:4]
df_iris

group <- as.numeric(iris$Species)
group

color <- c('red', 'green','blue')
plot(df_iris, pch=16, col=color[group])