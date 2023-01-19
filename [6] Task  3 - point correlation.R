library(ggplot2)
ggplot(kidney, aes(y=age)) + 
  geom_point(aes(x = al), color = "green")+ 
  geom_point(aes(x = su), color="blue")+ 
  geom_point(aes(x = pot), color="black")+
  geom_point(aes(x = rc),size=1, color="pink")+
  #adding 4 layers of vector to visualised with different color.
  coord_cartesian(ylim=c(10, 80), xlim=c(2.5, 6))+ #zooming in.
  labs(title="Overview = Albumin, Sugar, Potassium and Sodium",
       subtitle="To see any correlation to age",
       caption = "Kidney data frame",
       y= "Age",
       x= "Al(green) - Su(blue) - Pot(black) - Sod(pink)")
#last part is labeling the title, subtitle, caption, y and x.