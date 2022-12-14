
# WORKSHEET NUMBER 2
install.packages("rmarkdown")
install.packages("tinytex")

#1. Create a vector using : operator

# A. a. Sequence from -5 to 5. Write the R code and its output. Describe its output.

s <- -5:5
s

#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

#2.* Create a vector using seq() function
#a. seq(1, 3, by=0.2) # specify step size
#Write the R code and its output. Describe the output.
seq(1, 3, by = 0.2)


#3. A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
#18.

#a. Access 3rd element, what is the value?
workers <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
             22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
             24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
             18)

workers[3]

#b. Access 2nd and 4th element, what are the values?
workers[2]
workers[4]

#C. Access all but the 1st element is not included. Write the R code and its output.
workers[2:49]

#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector,
#names(x).

x <- c("first"=3, "second"=3, "third"=9)
names(x)

#5. Create a sequence x from -3:2.
x <- 3:2
x

#6. The following data shows the diesel fuel purchased by Mr. Cruz.
#a.	Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the codes.
month <- c("Jan", "Feb", "Mar", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

frame <- data.frame(month, price_per_liter, purchase_quantity)
frame

#b.	What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase)

weighted.mean(price_per_liter, purchase_quantity)


#7. R has actually lots of built-in datasets. For example, the rivers data ???gives the lengths
#a.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#b. What are the results?

#8.	The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

#a.	Create vectors according to the above table. Write the codes.
power_ranking <- c(1:25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg",
                    "Howard Stern", "50 Cent", "Cast  of the sopranos", "Dan Brown", "Bruce Springsteen",
                    "Donal Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John",
                    "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                    "Dr. Phil McGrow", "J Lenon", "Celine Dion",
                    "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

data_ranking <- data.frame(power_ranking, celebrity_name, pay)
data_ranking

#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 andpay to 90. Write the codes and its output.

power_ranking [19] <- 15
power_ranking
pay [19] <- 90
pay