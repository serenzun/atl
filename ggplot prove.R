library(tidyverse)

#National Parks in California
ca <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/ca.csv") 

#Acadia National Park
acadia <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/acadia.csv")

#Southeast US National Parks
se <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

#2016 Visitation for all Pacific West National Parks
visit_16 <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/visit_16.csv")

#All Nationally designated sites in Massachusetts
mass <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/mass.csv")

se<-read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

ggplot(data= se) +
  geom_point (aes(x=year, y=visitors, color=park_name))

ggplot(data= se) +
  geom_point (aes(x=year, y=visitors, color=state))

ggplot(data= se) +
  geom_point (aes(x=year, y=visitors, color=park_name))+
  labs(title="Ggplot")+
 theme(legend.title = element_blank(),
       axis.text.x=element_text(angle=45, hjust=1, size=14))

ggplot(data = se) +
  geom_point(aes(x = year, y = visitors, color=state)) +
  facet_wrap(~ state, scales = "free")



ggplot(data = acadia, aes(x = year, y = visitors)) + 
  geom_point() +
  geom_line() +
  geom_smooth(color = "red") +
  labs(title = "Acadia National Park Visitation",
       y = "Visitation",
       x = "Year") +
  theme_bw()

kkk

my_plot<-ggplot(data=mass)+
  geom_bar(aes(x=type, fill=park_name))+
  labs(x="",
       y="")+
  theme(axis.text.x = element_text(angle=45, hjust=1, size=7))

install.packages("plotly")
library(plotly)

ggplotly(my_plot)
