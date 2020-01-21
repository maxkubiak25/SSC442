#load tidyverse
install.packages("tidyverse", dependencies=TRUE)
library(tidyverse)
library(ggplot2)
install.packages('Rtools')
#geom_hbar(), geom_vbar(), geom_step(), etc.

#load in data

library(gapminder)
gapminder
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point()

#load mpg data set
cars <- mpg

#create scatter plot with "displ" as x-axis and "hwy" as y-axis

cars %>% ggplot( aes(x=displ, y=hwy)) + geom_point()
#I expected this type of relationship in the scatterplot
#Cars with bigger engines will consume more gas(lower efficiency) than
#cars with smaller engines that have higher fuel efficiency

#Create scatter plot with "class" as x-axis and "drv" as y-axis
cars %>% ggplot( aes(x=class, y=drv)) + geom_point()
#this graph is useless because the class of the car and whether or not
#it's Rear-, front-, or 4-wheel drive have no useful relationship
#and does not show the difference of fuel efficiency

#recreate graph above, but color each different class
cars %>% ggplot( aes(x=displ, y=hwy, color = class)) + geom_point()
#Pickups and SUVs have generally lowest fuel efficiency out of all classes

#read in the bank.csv data
bank <- read.csv("C:/Users/max_k/Downloads/bank.csv")

bank %>% ggplot( aes(x= education, y= balance, color=education)) + geom_point()
#Create a graph with distinction between level of education and balance in their bank account

bank %>% ggplot( aes(x= y, y= campaign, color=marital)) + geom_point()
#Create a graph showing the rates of success with number of campaigns and if the outreach succeeded
#colored by marital status to see if there was an extra correlation (there was none)




