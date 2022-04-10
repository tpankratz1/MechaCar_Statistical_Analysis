library(dplyr)

# Miles Per Gallon Multiple Linear Regression
mechacar_df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df))

# Suspension Coils Tables
susp_coil_df <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset

total_summary <- susp_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table by lot with multiple columns

# T-Tests on Suspension Coils
t.test(susp_coil_df$PSI, mu = 1500) #compare sample versus population mean

t.test(subset(susp_coil_df, Manufacturing_Lot == "Lot1")$PSI, mu = 1500) #compare lot 1 sample versus population mean
t.test(subset(susp_coil_df, Manufacturing_Lot == "Lot2")$PSI, mu = 1500) #compare lot 2 sample versus population mean
t.test(subset(susp_coil_df, Manufacturing_Lot == "Lot3")$PSI, mu = 1500) #compare lot 3 sample versus population mean
