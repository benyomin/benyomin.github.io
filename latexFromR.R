## tools::texi2pdf('./marco.tex', clean = FALSE, quiet = TRUE,
##                           texi2dvi = getOption("texi2dvi"),
##                           texinputs = NULL, index = TRUE)

##   Not making .tex with R
## minimal example
install.packages("knitr")
library(knitr)
knit('001-minimal.Rmd')
