library(ggplot2)
g6 <- ggplot(kidney, aes(x=hemo, y=pot,colour=hemo)) +
  geom_point()+
  geom_smooth(method = "lm",fill="green")
#smooth emphasize the lower frequency behaviour.
#lm to make a line through the field to zoom in.
g6+coord_cartesian(ylim=c(2.4, 7.8), xlim=c(2.6,18))+ 
  labs(title="Correlation measure", 
       subtitle="The average correlation between hemoglobin and potassium",
       caption="Kidney data frame",
       x="Hemoglobin",
       y="Potassium")
