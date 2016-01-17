#' @title Print Beta Drift Anaylses
#'
#' @description
#' \code{print.BDA} prints beta drift anaylses.
#'
#' @details
#' This function prints simplified summary statistics of analyses
#' created by the \code{\link{BDA}} function.
#' 
#' @param x an object of class \code{BDA}.
#' @param ... additional parameters.
#' @method print BDA
#' @export
#' @return NULL
#' @author Markus Peter Auer <mp.auer@@meanerreversion.com>
#' @examples
#' results <- BDA(data = FFfactors, spec = (VOO~SP500),
#' horizon = 250, doplot = FALSE)
#' print(results)
print.BDA <- function(x, ...){
  if (!inherits(x, "BDA"))
    stop("Object must be of class 'BDA'")
  cat("\n\nCall: ")
  print(x$CALL, ...)
  cat("\n Base Model Parameters \n")
  print(x$sumstats[[1]][c(1:3),,drop=FALSE], digits = 3)
  cat("---\nSignif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1 \n\n")
  cat("\n Selected Summary Statistics \n\n")
  print(x$sumstats[[1]][c(7,8,10, 17, 18, 19),,drop=FALSE], digits = 3)
}
