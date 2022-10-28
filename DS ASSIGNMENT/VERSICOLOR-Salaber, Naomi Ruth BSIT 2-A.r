#assignment "VERSICOLOR"
#SALABER, NAOMI RUTH D.  BSIT 2-A

#1. data(iris)
data <- data.frame(iris)
data

#2. Subset the iris set into 3 files-per species
second_data <- subset(iris, Species == "versicolor")
second_data

ss_length <- iris$Sepal.Length [51:100]
ss_length

ss_width <- iris$Sepal.Width [51:100]
ss_width

sp_length <- iris$Petal.Length [51:100]
sp_length

sp_width <- iris$Petal.Width [51:100]
sp_width

v_mean <- c(ss_length, ss_width, sp_length, sp_width)
v_mean

#3. Get total mean for each species.
vt_mean <- mean(v_mean)
vt_mean
#total mean is 3.573

#4. Get the mean of each characteristics of the species.
vl1_mean <- mean(ss_length)
vl1_mean
# the mean is 5.936

vw1_mean <- mean(ss_width)
vw1_mean
# the mean is 2.77

vl2_mean <- mean(sp_length)
vl2_mean
# the mean is 4.26

vl2_mean <- mean(sp_width)
vl2_mean
# the mean is 1.326
