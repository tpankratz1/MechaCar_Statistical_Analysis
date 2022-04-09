library(dplyr)

# Miles Per Gallon
mechacars_df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacars_df))

