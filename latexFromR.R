## tools::texi2pdf('./marco.tex', clean = FALSE, quiet = TRUE,
##                           texi2dvi = getOption("texi2dvi"),
##                           texinputs = NULL, index = TRUE)
## version 0.3b1
##   Not making .tex with R
## minimal example
install.packages("devtools")
library(devtools)
install_github("benyomin/censusFunctions")
library(censusFunctions)
##loadWealthEffectPackages()
install_if_needed("knitr")
install_if_needed("RCurl")
library(RCurl)
install_if_needed("rJava")
library(rJava)
install_if_needed("rmarkdown")
install_if_needed("xlsx")
library(xlsx)
library(rmarkdown)
install_if_needed("bookdown")
library(bookdown)
library(knitr)
source("./updatePackage.R",echo=FALSE)
rmarkdown::render('workingPaperNov2016.Rmd')
