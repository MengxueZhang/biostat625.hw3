#' simple_linear_regression_coeffs
#'
#' Calculate the estimated covariate' coefficients for simple linear regression
#'
#' @param user_dat user data
#' @param x choice of covariate
#' @param y choice of response variable
#'
#' @return The estimated intercept and slope of the simple linear regression model
#'
#' @examples
#' df1 <- data.frame(x = c(1, 2, 3, 4, 5), y = c(1, 5, 8, 15, 26))
#' simple_linear_regression_coeffs(df1, x = df1$x, y = df1$y)
#'
#' # Source of data: https://www.datacamp.com/tutorial/linear-regression-R
#' library(readxl)
#' ageandheight <- read_excel("ageandheight.xls", sheet = "Hoja2")
#' simple_linear_regression_coeffs(ageandheight, x = ageandheight$age,
#'                                 y = ageandheight$height)
#'
#' @export
#'

simple_linear_regression_coeffs <- function(user_dat, x, y) {

    # compute beta1_hat
    SSXY = sum(x * y) - mean(y) * sum(x)
    SSX = sum(x^2) - mean(x) * sum(x)
    beta1_hat = SSXY / SSX

    # compute beta0_hat
    beta0_hat = mean(y) - beta1_hat * mean(x)

    result = data.frame(Estimates = c(beta0_hat, beta1_hat))
    rownames(result) = c("intercept", "x")

    return(result)

}





