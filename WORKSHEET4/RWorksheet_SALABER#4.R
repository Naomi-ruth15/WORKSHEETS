#WORKSHEET 4


#1


shoe_size1 <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5,
               9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5)
height1 <- c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0,
            72.0, 64.0, 74.5, 67.0, 71.0, 71.0)
gender1 <- c('f', 'f', 'f', 'f', 'm', 'f', 'f', 'f', 'm',
            'f', 'm', 'f', 'm', 'm')
shoe_size2 <- c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5,
                8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
height2 <- c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 
             67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0)
gender2 <- c('m', 'm', 'f', 'f', 'm', 'f', 'f', 'm', 'm', 
             'f', 'm', 'm', 'm', 'm')

s_data <- data.frame(shoe_size1, height1, gender1, shoe_size2, 
                   height2, gender2)
s_data

#B

size <- cbind(shoe_size1,shoe_size2)
size
mean(size)

height <- cbind(height1,height2)
height
mean(height)

#2
month <- c("March","April","January","November","January",
           "September","October","September","November","August",
           "January","November","November","February","May","August",
           "July","December","August","August","September","November","February","April")
factor_month <- factor(month)
factor_month

factor_months_vector <- factor_month
factor_months_vector

summary(factor_month)
summary(factor_months_vector)

#4
Direction <- c("East", "West", "North")
Direction
Frequency <- c(1, 4, 3)
Frequency

vec <- data.frame(Direction, Frequency)
vec
factor_vec <- factor(Direction)

new_order_data <- factor(factor_vec,levels = c("East","West","North"))
print(new_order_data)

#5 A
setwd("C:/Users/Naomi/Desktop")
getwd()

e_data <- read.table("import_march.csv", sep=",", header=TRUE, stringsAsFactor=FALSE);
e_data

#B
View(e_data)

