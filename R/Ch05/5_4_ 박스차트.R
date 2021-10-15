#날짜 : 2021-09-28
#이름 : 변진하
#내용 : 데이터 시각화 - 박스상자 교재 p148

cars
View(cars)
dist <- cars[,2]
dist
class(dist)
boxplot(dist, main= '자동차 제동거리')
boxplot.stats(dist)

iris
boxplot(data=iris , 
        Sepal.Length ~ Species)

