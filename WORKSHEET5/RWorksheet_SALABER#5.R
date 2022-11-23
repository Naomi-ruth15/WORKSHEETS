#WORKSHEET 5
require(ggplot2)
require(dplyr)
library(ggplot2)

install.packages("ggplot2")
#1 A
        
qplot()
library(ggplot2)
df <- data.frame("course"=c("1st", "2nd", "3rd", "4th"), "sy"= c(80, 75, 70, 60))
ggplot(df) + geom_col(aes(course, sy))

sy <- c(80, 75, 70, 60)
course <- c("1st", "2nd", "3rd", "4th")
#B
br <- barplot(sy, main= "Enrollment of BS Computer Science",
              xlab = "Curriculum Year", ylab = "number of
              students")

#2A
food <- 60
electricity <- 10
savings <- 5
misc <- 25

expenses <- data.frame(food, electricity, savings,misc)
expenses

#2B
expense <- c(60, 10, 5, 25)
pie(expense, main = "Expenses", col = rainbow(length(expense)),
    labels = c("food", "electricity", "savings", "misc"))

expense_label <- round(expense/sum(expense) * 100, 1)
expense_label <- paste(expense_label, "%", sep = "")

pie(expense, main = "Expenses", col = rainbow(length(expense)),
    labels = expense_label, cex=0.8)
legend(1, c("food", "electricity", "savings", "misc"),
       cex = 0.8, fill = rainbow(length(expense)))
#3
data("mtcars")

mt  <- mtcars$mpg

hist(mt, main = "Histogram for mpg")

#B
hist(mt, breaks=12, col="red")

#C

h<-hist(mt, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(mt),max(mt),length=40)
yfit<-dnorm(xfit,mean=mean(mt),sd=sd(mt))
yfit <- yfit*diff(h$mids[1:2])*length(mt)
lines(xfit, yfit, col="blue", lwd=2)

#D
data("iris")

data_a <- data.frame(iris)
data_a

a_data <- subset(data_a, Species == 'setosa')
a_data

data_b <- data.frame(iris)
data_b
b_data <- subset(data_b, Species == 'versicolor')
b_data

data_c <- data.frame(iris)
data_c
c_data <-subset(data_c, Species == 'virginica')
c_data

#4b
setosa <- colMeans(a_data[sapply(a_data,is.numeric)])
setosa

versicolor <- colMeans(b_data[sapply(b_data,is.numeric)])
versicolor

virginica <- colMeans(c_data[sapply(c_data,is.numeric)])
virginica

#c
sec <- rbind(setosa, versicolor, virginica)
sec

#D
barplot(sec, beside =TRUE, main = "Iris Mean",
        xlab = "Characterisics", ylab = "Mean Scores",
        col = c("red", "green", "blue"))

