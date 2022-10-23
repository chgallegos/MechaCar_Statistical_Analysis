library("dplyr")

#DELIVERABLE 1

MechaCarMPG_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=MechaCarMPG_table) #Multiple linear regression model
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=MechaCarMPG_table)) #generate summary statistics

#DELIVERABLE 2

suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Total summary of PSI data
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep') #create summary table

#PSI data grouped by lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep') #create summary table


#DELIVERABLE 3

#t-test for total data
t.test(suspension_coil_table$PSI, mu=1500)

#t-test for data grouped by lot

#Lot 1
t.test(subset(suspension_coil_table,Manufacturing_Lot == "Lot1")$PSI, mu=1500)

#Lot 2
t.test(subset(suspension_coil_table,Manufacturing_Lot == "Lot2")$PSI, mu=1500)

#Lot 3
t.test(subset(suspension_coil_table,Manufacturing_Lot == "Lot3")$PSI, mu=1500)
