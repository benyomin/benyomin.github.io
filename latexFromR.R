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
install.packages("rJava")
library(rJava)
install.packages("rmarkdown")
install.packages("xlsx")
library(xlsx)
library(knitr)
source("./updatePackage.R",echo=FALSE)
render('workingPaperNov2016.Rmd')
