# MechaCar_Statistical_Analysis
## Overview

The purpose of this analysis was to use R and RStudio in order to do statistical analysis on different aspects of a new project called MechaCar. These analysis range from determining the significance of certain features with the MPG output, suspension coil efficiency and market research comparing the MechaCar to the competition.

----
## Linear Regression to Predict MPG

The linear regression model was ran on RStudio, this provided the y-intercept as well as the slopes for all independent variables.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/multiple_regression.png)

Following this model, the summary statistics were called, thus providing us with the data required to analyze the aspects needed for this part of the study, in this case we need to look at **Multiple R-squared*, **p-Value** and **Pr(>|t|)**.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/summary_statistics.png)

-Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

As we can see from the summary statistics data, the two variables that seem to have most relation to the mpg are "ground_clearance" and "vehicle_length". The reasoning behind this is due to the substantially low numbers on Pr(>|t|), meaning that the probability that the variable is random in relation to the mpg is substantially low.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/random_probability.png)

-Is the slope of the linear model considered to be zero? Why or why not?

Given that the linear model explains correlations between variables, the slope cannot considered to be zero.

-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Based on the R-squared value of 0.7, we can determine that the correlation of the model is strong, therefore making it an effective way to predict the mpg values of the MechaCar.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/R-squared.png)

This is reinforced by the low p-value being lower than the level of significance, meaning that the probability that there is enough evidence to reject the null hypothesis that the variables do not affect the mpg values.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/p-value.png)

## Summary Statistics on Suspension Coils

For this part of the analysis, two tables were created from the suspension_coil_table.

The first one being the total_summary, which shows the summary statistics of PSI for all production

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/total_summary.png)

The second table is the lot_summary, that groups the data by manufacturing lot

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/lot_summary.png)


-The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The answer to this is that when we look at the manufacturing data as a whole, the variance for the PSI coils seems to be within spec, however, when we group the manufacture by lot, we can see that Lot 3 is falling outside of specs and needs to be looked at in more detail. Therefore Lot 1 and 2 are ok to keep up production.

## T-Tests on Suspension Coils

T-tests were done for two scenarios, the first one a one-sample t-test in order to check if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/t-test_total.png)

This test allow us to conclude that the PSI is not statistically different from the population mean, which is also backed by the p-value "0.6072" that is not low enought to reject the null hypothesis

When looking at each individual lot, we can conclude that given the p-values for both Lot 1 and 2 (1 and 0.6072) are not low enough to reject the null hypothesis, therefore the PSI numbers are not statistically different.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/t-test_lot1.png)
![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/t-test_lot2.png)

In the case of Lot 3, the p-value stands at 0.04168, being slightly lower than the 0.05 significance level, we can conclude that this Lot is statistically different.

![Screenshot](https://github.com/chgallegos/MechaCar_Statistical_Analysis/blob/main/resources/t-test_lot3.png)

## Study Design: MechaCar vs Competition

A proposal for a statystical study that can quantify how the MechaChar would perform against the competition would be beneficial when considering marketing, design and engineering decisions. Given the current state of the gasoline prices, a huge factor in sales/marketing could be aimed towards MPG and gas savings.

#### What metric or metrics are to be tested?
For the statistical analyis, the MPG numbers will be used, thus creating the following hypothesis:

#### null hypothesis and alternative hypothesis
Null: The MPG for the MechaChar is similar to the competitor's MPG.
Alternative: The MPG for the MechaChar is better (Above) or worse (Below) than competitors.

#### Statistical test
The test that would be used for this statystical study is a two-sample t-Test since the two-sample t-Test determines whether the means of two samples are statistically different.

#### Data needed
The data required for this study will be readily available by manufacturers as part of Quality Control testing does involve MPG tests and data collection. To be also more specific, the determination of MPG is a function of "miles driven/1 gallon of gas"
