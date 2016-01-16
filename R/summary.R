#' @title Summarize beta-drift analyses
#'
#' @description
#' \code{summary.BDA} summarizes the results of beta-drift analyses.
#'
#' @details
#' This function prints a detailed summary of the analyses produced by
#' the \code{\link{BDA}} function.
#'
#' @param object an object of class \code{BDA}.
#' @param ... additional parameters.
#' @method summary BDA
#' @export
#' @return NULL
#' @author Markus Peter Auer <mp.auer@@meanerreversion.com>
#' @examples
#' results <- BDA(data = FFfactors, spec = (MDLRX~Mkt.RF + SMB + HML + RMW + CMA),
#' horizon = 250, doplot = FALSE)
#' summary(results)
summary.BDA <- function(object, ...){
  if (!inherits(object, "BDA"))
    stop("Object must be of class 'BDA'")
  cat("\n\nCall: ")
  print(object$CALL, ...)
  cat("\n#########################")
  cat("\n## Full Summary Output ##")
  cat("\n#########################")
  cat("\n\n## Base Model ##\n")
  print(object$sumstats[[1]][c(1,3,4,5,6,7),,drop=FALSE])
  cat("\n## Time Drift Statistics ##\n")
  print(object$sumstats[[1]][c(8:12),,drop=FALSE])
  cat("\n## Horizon Drift Statistics ##\n")
  print(object$sumstats[[1]][c(13:17),,drop=FALSE])
  cat("\n## Jackknife Diagnostics ##\n")
  print(object$sumstats[[1]][c(18:19),,drop=FALSE])
  if (nrow(object$sumstats[[2]]) != 0) {
    cat("\n## Noteworthy Observations (p-value) ##\n")
    print(object$sumstats[[2,drop=FALSE]])
  }
  if (nrow(object$sumstats[[3]]) != 0) {
    cat("\n## Suspicious Observations (p-value) ##\n")
    print(object$sumstats[[3,drop=FALSE]])
  }
}