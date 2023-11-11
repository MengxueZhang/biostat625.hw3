# Overview

This is Hw3 Biostat 625 for Mengxue Zhang, fall 2023.

This package includes one function:

  simple_linear_regression_coeffs()
  
This function calculates the estimated coefficients (intercept and slope) in a single linear regression using Least Square Estimators.

# Syntax

```ruby
simple_linear_regression_coeffs(data, x, y)

```
Parameter:

  data: determines the name of the dataframe that contains the data
  
  x: specify coefficient
  
  y: specify response variable

# Example

```ruby
# sample dataframe1
df1 <- data.frame(x = c(1, 2, 3, 4, 5),
                 y = c(1, 5, 8, 15, 26))

simple_linear_regression_coeffs(df1)


# output
#           Estimates
# intercept        -7
# x                 6


# example dataframe 2
# Source of data: https://www.datacamp.com/tutorial/linear-regression-R
library(readxl)

ageandheight <- read_excel("ageandheight.xls", sheet = "Hoja2")

simple_linear_regression_coeffs(ageandheight, x = ageandheight$age,
                                y = ageandheight$height)

# output
#            Estimates
# intercept 64.8445105
# x          0.3835315

```
