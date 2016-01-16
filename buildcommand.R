require(roxygen2)
roxygenize("C:/Users/Markus/Documents/bdrift/bdrift")
system("R CMD build C:/Users/Markus/Documents/bdrift/bdrift")
system("R CMD check C:/Users/Markus/Documents/bdrift/bdrift")
