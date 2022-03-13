library(dplyr)
# Deliverable 1
# Load MPG data 
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg) 
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg)) 

# Deliverable 2
# Load PSI data
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#create summary table for all data
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
#create summary table grouped by lots
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# Deliverable 3
# 1. 
#generate 50 randomly sampled data points
sample_table <- Suspension_Coil %>% sample_n(50) 
# Run a t-test against a random sample
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_Coil$PSI)))

#2. 
# Create subsets for each lot
filter_lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1") #filter for lot 1
filter_lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2") #filter for lot 2
filter_lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3") #filter for lot 3
# Run a t-test against a each lot
t.test(log10(filter_lot1$PSI),mu=mean(log10(Suspension_Coil$PSI)))
t.test(log10(filter_lot2$PSI),mu=mean(log10(Suspension_Coil$PSI)))
t.test(log10(filter_lot3$PSI),mu=mean(log10(Suspension_Coil$PSI)))

