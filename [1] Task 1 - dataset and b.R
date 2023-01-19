cities <- data.frame(ran <-runif (30,min=25,max=40))

i <- 1

while(i<10){
  ran <-runif (30,min=25,max=40)

  cities = cbind(cities, ran)
  
  i <- i+1
}
names(cities) <- c("c1","c2","c3","c4","c5","c6","c7","c8","c9","c10")

#average of every column, manual calculation
sum <- function (){
  sum <- colSums(cities)/30
  return(sum)
}
sum()
#inbuild function to get average of every column
for (i in colnames(cities)){
  print(mean(cities[[i]]))
}
#inbuild function to get minimum number on every column
minimum <- min(cities)
return(minimum)

#inbuild function to get maximum number on every column
maximum <- max(cities)
return(maximum)





