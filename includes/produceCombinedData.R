## produce the combined fam/exp files in dataframes/[data2004:2014]
##set up code
devtools::install_github("benyomin/censusFunctions")
#censusFunctions::installCensusFunctions("local")
#censusFunctions::installCensusFunctions("github")
library(censusFunctions)
#importData("importCombined")                  ## imports exp2004:2014s
importData("family")
importData("raw")
importData("combine")
importData("writeOutCombined")
