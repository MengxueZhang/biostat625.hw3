# sample data frame
df1 <- data.frame(x = c(1, 2, 3, 4, 5),
                 y = c(1, 5, 8, 15, 26))

# implemented function
simple_linear_regression_coeffs(df1, x = df1$x, y = df1$y)

# original R function
model1 = lm(y ~ x, data = df1)
summary(model1)


# sample 2
ctl <- c(4.17, 5.58, 5.18, 6.11, 4.50, 4.61, 5.17, 4.53, 5.33, 5.14)
trt <- c(4.81, 4.17, 4.41, 3.59, 5.87, 3.83, 6.03, 4.89, 4.32, 4.69)
group <- gl(2, 10, 20, labels = c("0", "1"))
weight <- c(ctl, trt)
df2 <- data.frame(weight, group)

simple_linear_regression_coeffs(df2, x = as.numeric(group), y = weight)

lm.D9 <- lm(weight ~ group)
summary(lm.D9)

