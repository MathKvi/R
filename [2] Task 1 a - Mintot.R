  minvalue <- sort(cities$c1)
  min1 <- minvalue[1]
  minvalue <- sort(cities$c2)
  min2 <- minvalue[1]
  minvalue <- sort(cities$c3)
  min3 <- minvalue[1]
  minvalue <- sort(cities$c4)
  min4 <- minvalue[1]
  minvalue <- sort(cities$c5)
  min5 <- minvalue[1]
  minvalue <- sort(cities$c6)
  min6 <- minvalue[1]
  minvalue <- sort(cities$c7)
  min7 <- minvalue[1]
  minvalue <- sort(cities$c8)
  min8 <- minvalue[1]
  minvalue <- sort(cities$c9)
  min9 <- minvalue[1]
  minvalue <- sort(cities$c10)
  min10 <- minvalue[1]
  #sorting every column so the value of of the lowest temperature
  #is placing itself on position 1.
  mintot <- data.frame(min1,min2,min3,min4,min5,min6,min7,min8,min9,min10)
  #Printing the vectors of every position 1 
View(mintot)

