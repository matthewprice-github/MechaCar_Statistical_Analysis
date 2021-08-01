library(dplyr)
MechTable <- read.csv('MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechTable)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechTable))

ScoilTable <- read.csv('Suspension_Coil.csv')

total_summary <- ScoilTable %>% summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lots_summary <- ScoilTable %>% group_by(Manufacturing_Lot) %>%  summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
                                        