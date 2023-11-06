# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


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





