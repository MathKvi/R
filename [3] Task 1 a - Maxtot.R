maxvalue <- sort(cities$c1,decreasing = TRUE)
max1 <- maxvalue[1]
maxvalue <- sort(cities$c2,decreasing = TRUE)
max2 <- maxvalue[1]
maxvalue <- sort(cities$c3,decreasing = TRUE)
max3 <- maxvalue[1]
maxvalue <- sort(cities$c4,decreasing = TRUE)
max4 <- maxvalue[1]
maxvalue <- sort(cities$c5,decreasing = TRUE)
max5 <- maxvalue[1]
maxvalue <- sort(cities$c6,decreasing = TRUE)
max6 <- maxvalue[1]
maxvalue <- sort(cities$c7,decreasing = TRUE)
max7 <- maxvalue[1]
maxvalue <- sort(cities$c8,decreasing = TRUE)
max8 <- maxvalue[1]
maxvalue <- sort(cities$c9,decreasing = TRUE)
max9 <- maxvalue[1]
maxvalue <- sort(cities$c10,decreasing = TRUE)
max10 <- maxvalue[1]
#sorting every column backwards so the value of of the highest temperature
#is placing itself on position 1.
maxtot <- data.frame(max1,max2,max3,max4,max5,max6,max7,max8,max9,max10)
#Printing the vectors of every position 1 
View(maxtot)