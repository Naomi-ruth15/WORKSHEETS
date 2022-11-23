# SALABER, NAOMI RUTH D.     BSIT 2-A
#WORKSHEET 3B

#1

#A
respondents <- c(1:20)
sex <- c(2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2)
fathers_occupation <- c(1, 3, 3, 3, 1, 2, 3, 1, 1, 1, 3, 2, 1, 3, 3, 1, 3, 1, 2, 1)
persons_at_home <- c(5, 7, 3, 8, 5, 9, 6, 7, 8, 4, 7, 5, 4, 7, 8, 8, 3, 11,7, 6)
siblings_at_school <- c(6, 4, 4, 1, 2, 1, 5, 3, 1, 2, 3, 2, 5, 5, 2, 1, 2, 5, 3, 2)
types_of_houses <- c(1, 2, 3, 1, 1, 3, 3, 1, 2, 3, 2, 3, 2, 2, 3, 3, 3, 3, 3, 2)

rdata <- data.frame(respondents, sex, fathers_occupation,persons_at_home, siblings_at_school,types_of_houses)
rdata

#C
mean(siblings_at_school)


#D
r <- rdata[1:2, 1:6, drop =FALSE]
 r
#E
new_data <- r_data[c(3,5), c(2,4)]
new_data

#F
types_houses <- types_of_houses
types_houses

#G
male_data <- data.frame(sex, fathers_occupation)
subset(male_data, sex == 1 & fathers_occupation == 1)

#H
girl_data <- data.frame(sex, siblings_at_school) 
subset(girl_data, sex == 2 & siblings_at_school >= 5)

#2
df = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))
