# manupulations with data frame

data(mtcars)
mtcars
?mtcars
mtcars$mpg
boxplot(mtcars$mpg)
mtcars[2,1]
mtcars[5,1]
mtcars[1:5,1]
mtcars[1:5,"mpg"]
mtcars[,c(1,2,4)]#picking up specific column

mtcars[1:6,1:4]

#subsetting of data
subset(mtcars,"mpg">20)
subset(mtcars, cyl==6)
mtcars$cyl==6

subset(mtcars,cyl !=6)
subset(mtcars,cyl <=6)
subset(mtcars,mpg>20 & cyl>5)# to setisfy both the condition
subset(mtcars,mpg>20 / cyl>5)
nrow(mtcars)
ncol(mtcars)
nrow(subset(mtcars, cyl>6))

# sorting the data
sort(mtcars$mpg)
mtcars[order(mtcars$mpg),]

mtcars_ordered = mtcars[order(mtcars$mpg),]
mtcars_ordered

#ordering alphbetically
mtcars[order(rownames(mtcars)),]

mtcars[,1:2]
cor(mtcars[,1:2])

#plotting the data
pairs(mtcars[,1:2])
plot(mtcars$mpg, mtcars$cyl)
plot(mtcars$cyl,1/mtcars$mpg, xlab = "no.of cylinder",ylab = "gallonsper mile",main = "no. of cylinder and fuel economy")
