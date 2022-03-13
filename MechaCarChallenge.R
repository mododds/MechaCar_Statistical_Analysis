library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ mpg,MechaCar_mpg) #perform linear regression
summary(lm(vehicle_length ~ mpg,data=MechaCar_mpg)) #generate summary statistics
