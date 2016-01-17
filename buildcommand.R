require(roxygen2)
roxygenize("C:/Users/Markus/Documents/bdrift")
devtools::check()
devtools::build("bdrift", path = "C:/Users/Markus/Documents")