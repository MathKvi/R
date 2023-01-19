library(ggplot2)
theme_set(theme_gray())

ggplot(kidney, aes(x=rbc, y=hemo)) +
  geom_bar(stat="unique", width=0.5, fill="olivedrab4") + 
  labs(title="The sum of Hemoglobin",
  subtitle = "A comparison of how Hemoglobin is distributed among Red blood cells",
  caption="Kidney data frame", 
  x="Red blood cells",y="Hemoglobin")