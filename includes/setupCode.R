setwd("~/proposal/secret")
#devtools::install_github("benyomin/censusFunctions")
devtools::install_local("/Volumes/Bmac/censusFunctions")
source("../includes/getProcessedData.R", echo=FALSE)
library(censusFunctions)
subsetByOwnership()
## lists
keyMoneyList   <<-subsetByOwnership("listKeyMoney")
ownersList     <<-subsetByOwnership("listOwners")
rentersList    <<-subsetByOwnership("listNotKey")
householdsList <<-subsetByOwnership("listHouseholds")
## get counts for each year
householdCounts<-lapply(householdsList,nrow)
ownerCounts    <-lapply(ownersList,nrow)
renterCounts   <-lapply(rentersList,nrow)
keyMoneyCounts <-lapply(keyMoneyList, nrow)
#str(ownerCounts)
years          <-2004:2014
manyOwners     <-as.data.frame(cbind(years,ownerCounts))
#View(manyOwners)
rownames(manyOwners)<-years
combined       <-manyOwners
