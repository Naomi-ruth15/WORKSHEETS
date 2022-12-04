#SALABER, NAOMI RUTH D.       BSIT 2-A
#WORKSHEET 6

library(ggplot2)
library(dplyr)
library(tinytex)
data("mpg")

#1. How many columns are in mpg dataset? How about the number of rows?
# show the codes and its result.
ncol(mpg)
nrow(mpg)
# There are 11 columns and 234 rows in mpg.

#2. Which manufacturer has the most models in this data set? Which model has the most
#variations?
# The manufacturer with the most model is Dodge. While the model with the most variation is 
# caravan 2wd

#A.
manufacturer <- mpg %>% group_by (manufacturer) %>% count()
model <- mpg %>% group_by (model) %>% count()


#B. Graph the result by using plot() and ggplot(). Write the codes and its result.
d <- mpg %>% group_by (manufacturer, model) %>% count()

plot(d)
ggplot(d, aes(x = manufacturer, y = model)) + geom_point(color = 'purple')

#3. Same dataset will be used. You are going to show the relationship of the modeland
#the manufacturer.
ggplot(d, aes(x = manufacturer, y = model)) + geom_point(color = 'purple')

#A. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(model, manufacturer)) + geom_point()

# The plot shows the relationship of the model and manufacturer.

#B. For you, is it useful? If not, how could you modify the data to make it more
#informative?
#Yes, it is useful as it makes the data easier to understand.

#4. Using the pipe (%>%), group the model and get the number of cars per model. Show
#codes and its result.
grouped_model <- mpg %>% group_by (model) %>% count()
grouped_model

#A. Plot using the geom_bar() + coord_flip() just like what is shown below. Show
#codes and its result.
qplot(model, data = mpg,main = "Number of Cars per Model", xlab = "Model",
      ylab = "Number of Cars", geom = "bar", fill = manufacturer) +
  coord_flip()

#B. Use only the top 20 observations. Show code and results.
top <- model[1:20,] %>% top_n(2)
top

#5. Plot the relationship between cyl - number of cylinders and displ - engine 
#displacement using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement”.

ggplot(data = mpg, mapping = aes(x = displ, y = cyl)) +
  geom_point(mapping=aes(color=displ))

#b. How would you describe its relationship?

#6. Get the total number of observations for drv - type of drive train 
#(f = front-wheel drive, r = rear wheel drive, 4 = 4wd) and class - type of class 
#(Example: suv, 2seater, etc.).
#Plot using the geom_tile() where the number of observations for class be used as a
#fill for aesthetics.
front_wheel <- subset(mpg, drv == 'f')
nrow(front_wheel)
front_wheel

rear_wheel <- subset(mpg, drv == 'r')
nrow(rear_wheel)
rear_wheel

n4 <- subset(mpg, drv == '4')
nrow(n4)
n4

suv <- subset(mpg, class == 'suv')
nrow(suv)
suv

com <- subset(mpg, class == 'compact')
nrow(com)
com

m_size <- subset(mpg, class == 'midsize')
nrow(m_size)
m_size

two_seater <- subset(mpg, class == '2seater')
nrow(two_seater)
two_seater

mini_van <- subset(mpg, class == 'minivan')
nrow(mini_van)
mini_van

p_up <- subset(mpg, class == 'pickup')
nrow(p_up)
p_up

sub_com <- subset(mpg, class == 'subcompact')
nrow(sub_com)
sub_com

#Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
#a. Show the codes and its result for the narrative in #6.
ggplot(mpg, aes(drv, class)) +
  geom_tile (aes(fill = class)) 
#b. Interpret the result. 
# the plot shows the relationship between class and drv.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
#• Code #1
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

#Code #2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

# the colour in the first code is inside the parentheses which indicates the legend.
#While the second one is outside the parentheses that contains the x and y which
#indicates the color of the geom_point.

#8. Try to run the command ?mpg. What is the result of this command?
mpg
# it shows the data in mpg.

#a. Which variables from mpg data set are categorical?
#Categorical variables in mpg include: manufacturer, model, trans (type of transmission),
#drv (front-wheel drive, rear-wheel, 4wd), fi (fuel type), and class (type of car).

#b. Which are continuous variables?
#Continuous variables in mpg include: displ (engine displacement in litres), 
#cyl (number of cylinders), cty (city miles/gallon), and hwy (highway gallons/mile)

#c. Plot the relationship between displ (engine displacement) and 
#hwy(highway miles per gallon). Mapped it with a continuous variable you have identified in #5-b. What is its
#result? Why it produced such output?

ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ , y = hwy, col = displ)) 

#9. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) using geom_point(). Add a trend line over the existing plot using
#  geom_smooth() with se = FALSE. Default method is “loess”.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE)

#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
# se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE,method = lm)
  

