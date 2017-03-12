## helper functions


createLists <-  function(arg=TRUE){
keyMoneyList <<-subsetByOwnership("listKeyMoney")
ownersList<<-   subsetByOwnership("listOwners")
rentersList<<-  subsetByOwnership("listNotKey")
householdsList<<-subsetByOwnership("listHouseholds")
return("created lists of households/renters/owners/keymoney")
}

getCounts       <- function(arg=TRUE){
householdCounts<<-lapply(householdsList,nrow)
ownerCounts    <<-lapply(ownersList,nrow)
renterCounts   <<-lapply(rentersList,nrow)
keyMoneyCounts <<-lapply(keyMoneyList, nrow)
} 

createTables  <- function(arg="counts"){
  years<-2004:2014
        if(arg=="counts"){
getCounts()
manyOwners<-as.data.frame(cbind(years,ownerCounts))
rownames(manyOwners)<-years
combined <- manyOwners
combined$householdCounts <- householdCounts
combined$renterCounts    <- renterCounts
combined$keyMoneyCounts  <- keyMoneyCounts
countsTable2 <-within(combined, rm(years))
countsTable <-countsTable2[,c(2,1,3,4)] ## reorder columns
colnames(countsTable)<-c("Households",
                         "Owner-occupied",
                         "Renters", "Key money")  ## rename columns
## usage:
## countsTable <-createTables("counts")
## knitr::kable(countsTable)

return(countsTable)
  }else if(arg=="income"){

return("in progress")
  }else{
return("error ar32og5n9g")
  }

}
