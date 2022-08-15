
airquality <- datasets::airquality
  

####Top 10 rows and last 10 rows
head(airquality,10)
tail (airquality,10)
  
### column 
airquality [50:60,c(1,2)]

df<- airquality [,-6]

### Descriptive statistics
#1

summary (airquality[,c(4,5)])
summary (airquality[2:5,c(2,3)])
 

airquality$Solar.R


##1
summary (airquality$Wind)
summary (airquality$Day)
airquality$Temp

## summary of the data
summary (airquality)
 
## visualisation

#scatter plot 
plot (airquality$Wind)

plot (airquality$Temp,airquality$Ozone,type='p')
 
plot (airquality)

#points and lines 

plot(airquality$Wind, type= "l")

# p: point 1: lines,b: both

plot (airquality$Wind, type= "b")
plot (airquality$Wind, xlab = 'ozone concentration', ylab = 'no of instances', main = 'ozone levels in NY city', 
      col = 'blue',type = 'l')

## horizontal bar plot
barplot (airquality$Ozone, main = 'ozone concentration in air', ylab = 'ozone levels',
         col = 'blue', horiz = F, axes = T)

## histogram
hist (airquality$Temp)
hist (airquality$Temp, main = 'solar radiation values in air',
      xlab = 'solar rad', col = 'blue')

# single box plot
boxplot (airquality$Wind, main = "boxplot")

boxplot.stats (airquality$Wind)$out
boxplot.stats (airquality$Ozone)$out

# multiple box plot
boxplot (airquality[,1:4], main = 'multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
 
summary (airquality)

