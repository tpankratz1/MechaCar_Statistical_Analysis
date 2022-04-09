# MechaCar Statistical Analysis

## Summary

AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. AutosRUs' upper management has requested a review of the production data for insights that may help the manufacturing team.

This review involves the following:
- Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Running t-tests to determine if the manufacturing lots are statistically different from the mean population
- Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of the findings.

## Multiple Linear Regression Analysis to Predict Miles Per Gallon

After performing a multiple linear regression on the Miles Per Gallon variables (Vehicle Length, Vehicle Length, Spoiler Angle, Ground Clearance, AWD), it is clear that the Vehicle Length and Ground Clearance variables do have an affect on Miles Per Gallon and provide a non-random amount of variance, since their P-values were lower than 0.05. See below.

![Multiple Linear Regression - MPG](Resources/mult_linear_regression_mpg.png)

The slope of the linear model is not considered to be zero, since the P-value was lower than 0.05 and thus significant.

This multiple linear model does effectively predict Miles Per Gallon of MechaCar prototypes, because the R-squared value is strong, at 0.7149, and the P-value was significantly lower than 0.05 on two of the variables (Vehicle Length and Ground Clearance).

## Suspension Coils Analysis

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

### All Coils
Across all lots, the suspension coils appear to meet design specifications for Variance, because at a little above 62 PSI, they are below the 100 PSI variance threshold. See below.

![Multiple Linear Regression - MPG](Resources/total_summary.png)

### Coils by Lot
As the data is broken down by lot, it's clear that not all lots meet design specifications on Variance. Lots 1 and 2 fall well within the specs, but lot 3 is significantly above the 100 PSI variance threshold, at a little above 170 PSI. See below.

![Multiple Linear Regression - MPG](Resources/lot_summary.png)

## T-Tests on Suspension Coils



