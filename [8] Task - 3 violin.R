library(ggplot2)
theme_set(theme_gray()) # adding grey backround for clarity.

ggplot (kidney,aes(x=rbc,y=hemo))+
geom_violin(fill="deeppink4",width=1)+ 
#width 1 for clearer visualisation.
  labs(title="The count of Hemoglobin in each category",
       caption="Kidney data frame", 
       x="Red blood cells",y="Hemoglobin")