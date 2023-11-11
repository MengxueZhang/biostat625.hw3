# sample data frame
df1 <- data.frame(x = c(1, 2, 3, 4, 5),
                 y = c(1, 5, 8, 15, 26))

# implemented function
out1 = simple_linear_regression_coeffs(df1, x = df1$x, y = df1$y)

# original R function lm()
model1 = lm(y ~ x, data = df1)
summary(model1)

# sample 2
# Source of data: https://www.datacamp.com/tutorial/linear-regression-R
# install.packages("readxl")
library(readxl)

ageandheight <- read_excel("ageandheight.xls", sheet = "Hoja2")

# implemented function
simple_linear_regression_coeffs(ageandheight, x = ageandheight$age,
                                y = ageandheight$height)

# original R function lm()
lmHeight = lm(height ~ age, data = ageandheight)
summary(lmHeight)

