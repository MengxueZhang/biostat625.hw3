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
#' ctl <- c(4.17, 5.58, 5.18, 6.11, 4.50, 4.61, 5.17, 4.53, 5.33, 5.14)
#' trt <- c(4.81, 4.17, 4.41, 3.59, 5.87, 3.83, 6.03, 4.89, 4.32, 4.69)
#' group <- gl(2, 10, 20, labels = c("0", "1"))
#' weight <- c(ctl, trt)
#' df2 <- data.frame(weight, group)
#' simple_linear_regression_coeffs(df2, x = as.numeric(group), y = weight)
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





