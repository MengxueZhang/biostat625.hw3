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


# example dataframe2
ctl <- c(4.17, 5.58, 5.18, 6.11, 4.50, 4.61, 5.17, 4.53, 5.33, 5.14)
trt <- c(4.81, 4.17, 4.41, 3.59, 5.87, 3.83, 6.03, 4.89, 4.32, 4.69)
group <- gl(2, 10, 20, labels = c("0","1"))
weight <- c(ctl, trt)
df2 <- data.frame(weight, group)

simple_linear_regression_coeffs(df2, x = as.numeric(group), y = weight)

# output
#           Estimates
# intercept     5.403
# x            -0.371

```
