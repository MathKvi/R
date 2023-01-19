library(ggplot2)
theme_set(theme_gray())


g <- ggplot(kidney, aes(age,classification))
g + geom_boxplot(varwidth=T, fill="darksalmon",colour="red") + 
  #warwidth=T for the boxes to be adjusted to the amount observations 
  #in the boxes.
  labs(title="Comparison of age ", 
       subtitle="Having cronic kidney disease or not ",
       caption="Kidney data frame",
       x="Age",
       y="White blood cell count")

