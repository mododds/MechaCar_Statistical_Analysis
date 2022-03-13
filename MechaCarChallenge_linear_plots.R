library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg) #perform linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg)) #generate summary statistics

#Length VS MPG
lm(mpg ~ vehicle_length,MechaCar_mpg)
summary(lm(mpg ~ vehicle_length,MechaCar_mpg))
model <- lm(mpg ~ vehicle_length,MechaCar_mpg) #create linear model
yvals <- model$coefficients['vehicle_length']*MechaCar_mpg$vehicle_length + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar_mpg,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

#weight VS MPG
lm(mpg ~ vehicle_weight,MechaCar_mpg)
summary(lm(mpg ~ vehicle_weight,MechaCar_mpg))
model <- lm(mpg ~ vehicle_weight,MechaCar_mpg) #create linear model
yvals <- model$coefficients['vehicle_weight']*MechaCar_mpg$vehicle_weight + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar_mpg,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

#Spoiler Angle VS MPG
lm(mpg ~ spoiler_angle,MechaCar_mpg)
summary(lm(mpg ~ spoiler_angle,MechaCar_mpg))
model <- lm(mpg ~ spoiler_angle,MechaCar_mpg) #create linear model
yvals <- model$coefficients['spoiler_angle']*MechaCar_mpg$spoiler_angle + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar_mpg,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

#ground clearance VS MPG
lm(mpg ~ ground_clearance,MechaCar_mpg)
summary(lm(mpg ~ ground_clearance,MechaCar_mpg))
model <- lm(mpg ~ ground_clearance,MechaCar_mpg) #create linear model
yvals <- model$coefficients['ground_clearance']*MechaCar_mpg$ground_clearance + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar_mpg,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

#AWD VS MPG
lm(mpg ~ AWD,MechaCar_mpg)
summary(lm(mpg ~ AWD,MechaCar_mpg))
model <- lm(mpg ~ AWD,MechaCar_mpg) #create linear model
yvals <- model$coefficients['AWD']*MechaCar_mpg$AWD + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar_mpg,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

