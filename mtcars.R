# Import packages
library(sqldf)
library(psych)

# Calculate sum of tow numbers
2+3


#x=5
#y=10
#z=x+y
#z

# Load Data set
data()

# Load Dara
mtcars

# Calculate no of rows
nrow(mtcars)

# Calculate no of cols
ncol(mtcars)

# Calculate dimension of table
dim(mtcars)

# Find column names
colnames(mtcars)

# Find row names
rownames(mtcars)

# Assign mpg value to variable y
y=mtcars$mpg
y

# Calculate mean, median and standard deviation
mean(y)
median(y)
sd(y)

# Assign cyl value to variable a
a=mtcars$cyl
a

# Calculate correlation between a & y
cor(a,y)

# plot graph of correlation
plot(a,y)

# Assign wt value to variable b
b=mtcars$wt
b
cor(b,y)
plot(b,y)

# Assign hp value to variable c
c=mtcars$hp
cor(c,y)
plot(c,y)

# Assign carb value to variable d
d=mtcars$carb
cor(d,y)
plot(d,y)

# Assign gear value to variable e
e=mtcars$gear
cor(e,y)
plot(e,y)

# Linear Regression
linreg=lm(y~a+b+c+d+e)
linreg

#To Calculate R square value
summary(linreg)$r.squared

