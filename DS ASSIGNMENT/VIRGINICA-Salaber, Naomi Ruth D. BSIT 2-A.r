#assignment "VIRGINICA"
#SALABER, NAOMI RUTH D.  BSIT 2-A

#1. data(iris)
data <- data.frame(iris)
data

#2. Subset the iris set into 3 files-per species.
third_data <- subset(iris, Species == "virginica")
third_data

ts_length <- iris$Sepal.Length [101:150]
ts_length

ts_width <- iris$Sepal.Width [101:150]
ts_width

tp_length <- iris$Petal.Length [101:150]
tp_length

tp_width <- iris$Petal.Width [101:150]
tp_width

vir_mean <- c(ts_length, ts_width, tp_length, tp_width)
vir_mean

#3. Get total mean for each species.
virt_mean <- mean(vir_mean)
virt_mean
#total mean is 4.285

#4. Get the mean of each characteristics of the species.
vlength1_mean <- mean(ts_length)
vlength1_mean
# the mean is 6.588

vwidth1_mean <- mean(ts_width)
vwidth1_mean
# the mean is 2.974

vlength2_mean <- mean(tp_length)
vlength2_mean
# the mean is 5.552

vwidth2_mean <- mean(tp_width)
vwidth2_mean
# the mean is 2.026