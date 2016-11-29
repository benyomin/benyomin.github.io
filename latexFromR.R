## tools::texi2pdf('./marco.tex', clean = FALSE, quiet = TRUE,
##                           texi2dvi = getOption("texi2dvi"),
##                           texinputs = NULL, index = TRUE)
## version 0.3b1
##   Not making .tex with R
## minimal example
install.packages("knitr")
install.packages("devtools")
library(devtools)
install.packages("RCurl")
library(RCurl)
library(knitr)
source("./updatePackage.R",echo=FALSE)
knit('workingPaperNov2016.Rmd')
