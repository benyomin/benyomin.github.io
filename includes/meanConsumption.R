## variable list (mat means matrix, but the variables with "mat" in the var name are often data frames)
#########        Variables used in other code
##  allY            - mean income by All/Owners/Renters
##  allConsumption  - mean income by All/Owners/Renters
#########        Intermediate Variables
##  matConsRenters  - Consumption by Renters
##  matConsOwners   - Consumption by Owners
##  meanYRenters    - Gross Income,  Renters
##  meanYOwners     - Gross Income,  Owners



library(dplyr)
library(tidyr)
meanGrossIncome<-c(mean(exp2004s$Q1),
            mean(exp2005s$Q1),
            mean(exp2006s$Q1),
            mean(exp2007s$Q1),
            mean(exp2008s$Q1),
            mean(exp2009s$Q1),
            mean(exp2010s$Q1),
            mean(exp2011s$Q1),
            mean(exp2012s$Q1),
            mean(exp2013s$Q1),
            mean(exp2014s$Q1))
meanCons<-c(mean(exp2004s$Q64),
            mean(exp2005s$Q69),
            mean(exp2006s$Q66),
            mean(exp2007s$Q69),
            mean(exp2008s$Q69),
            mean(exp2009s$Q77),
            mean(exp2010s$Q78),
            mean(exp2011s$Q81),
            mean(exp2012s$Q81),
            mean(exp2013s$Q83),
            mean(exp2014s$Q84))
meanConsRenters <- c(mean(exp2004renters[,3]),
                     mean(exp2005renters[,3]),
                     mean(exp2006renters[,3]),
                     mean(exp2007renters[,3]),
                     mean(exp2008renters[,3]),
                     mean(exp2009renters[,3]),
                    mean(exp2010renters[,3]),
                    mean(exp2011renters[,3]),    
                    mean(exp2012renters[,3]),
                    mean(exp2013renters[,3]),
                    mean(exp2014renters[,3]))
meanYRenters    <- c(mean(exp2004renters[,1]),
                     mean(exp2005renters[,1]),
                     mean(exp2006renters[,1]),
                     mean(exp2007renters[,1]),
                     mean(exp2008renters[,1]),
                     mean(exp2009renters[,1]),
                    mean(exp2010renters[,1]),
                    mean(exp2011renters[,1]),    
                    mean(exp2012renters[,1]),
                    mean(exp2013renters[,1]),
                    mean(exp2014renters[,1]))
meanYOwners     <- c(mean(exp2004owners[,1]),
                     mean(exp2005owners[,1]),
                     mean(exp2006owners[,1]),
                     mean(exp2007owners[,1]),
                     mean(exp2008owners[,1]),
                     mean(exp2009owners[,1]),
                    mean(exp2010owners[,1]),
                    mean(exp2011owners[,1]),    
                    mean(exp2012owners[,1]),
                    mean(exp2013owners[,1]),
                    mean(exp2014owners[,1]))
meanConsOwners <- c(mean(exp2004owners[,3]),
                     mean(exp2005owners[,3]),
                     mean(exp2006owners[,3]),
                     mean(exp2007owners[,3]),
                     mean(exp2008owners[,3]),
                     mean(exp2009owners[,3]),
                    mean(exp2010owners[,3]),
                    mean(exp2011owners[,3]),    
                    mean(exp2012owners[,3]),
                    mean(exp2013owners[,3]),
                    mean(exp2014owners[,3]))
## make someyears var available
someyears   <- c(2004:2014)
matCons     <-as.data.frame(cbind(someyears, meanCons       ))
matIncome   <-as.data.frame(cbind(someyears, meanGrossIncome))
matYRenters <-as.data.frame(cbind(someyears, meanYRenters   ))
matYOwners  <-as.data.frame(cbind(someyears, meanYOwners    ))
names(matCons)[2]<-"All Households"
matConsOwners  <- as.data.frame(cbind(someyears, meanConsOwners))
matConsRenters <- as.data.frame(cbind(someyears,meanConsRenters))
names(matConsOwners)[2]<-"Owner-occupied"
## create Non-Housing Consumption variable   $NHC
calcNHC()
meanNHCowners <-  c(mean(exp2004owners$NHC),
                    mean(exp2005owners$NHC),
                    mean(exp2006owners$NHC),
                    mean(exp2007owners$NHC),
                    mean(exp2008owners$NHC),
                    mean(exp2009owners$NHC),
                    mean(exp2010owners$NHC),
                    mean(exp2011owners$NHC),    
                    mean(exp2012owners$NHC),
                    mean(exp2013owners$NHC),
                    mean(exp2014owners$NHC))
matNHCowners <-as.data.frame(cbind(someyears,meanNHCowners))
meanNHCrenters <-  c(mean(exp2004renters$NHC),
                    mean(exp2005renters$NHC),
                    mean(exp2006renters$NHC),
                    mean(exp2007renters$NHC),
                    mean(exp2008renters$NHC),
                    mean(exp2009renters$NHC),
                    mean(exp2010renters$NHC),
                    mean(exp2011renters$NHC),    
                    mean(exp2012renters$NHC),
                    mean(exp2013renters$NHC),
                    mean(exp2014renters$NHC))
matNHCrenters <-as.data.frame(cbind(someyears,meanNHCrenters))
##create proper weightings for Income/Consumption/Non-housing Consumption
exp2004s$allWeightedIncome <-exp2004s$Q1 * exp2004s$WEIGHT
exp2004s$allWeightedConsumption <-exp2004s[,3]*exp2004s$WEIGHT
exp2004owners$ownerWeightedIncome<-exp2004owners$Q1 * exp2004owners$WEIGHT
exp2004owners$ownerWeightedConsumption<-exp2004owners[,3] * exp2004owners$WEIGHT
exp2004owners$ownerWeightedNHC<-exp2004owners$NHC * exp2004owners$WEIGHT
exp2004renters$renterWeightedIncome<-exp2004renters$Q1 * exp2004renters$WEIGHT
exp2004renters$renterWeightedConsumption<-exp2004renters[,3] * exp2004renters$WEIGHT
exp2004renters$renterWeightedNHC<-exp2004renters$NHC * exp2004renters$WEIGHT

exp2005s$allWeightedIncome <-exp2005s$Q1 * exp2005s$WEIGHT
exp2005s$allWeightedConsumption <-exp2005s[,3]*exp2005s$WEIGHT
exp2005owners$ownerWeightedIncome<-exp2005owners$Q1 * exp2005owners$WEIGHT
exp2005owners$ownerWeightedConsumption<-exp2005owners[,3] * exp2005owners$WEIGHT
exp2005owners$ownerWeightedNHC<-exp2005owners$NHC * exp2005owners$WEIGHT
exp2005renters$renterWeightedIncome<-exp2005renters$Q1 * exp2005renters$WEIGHT
exp2005renters$renterWeightedConsumption<-exp2005renters[,3] * exp2005renters$WEIGHT
exp2005renters$renterWeightedNHC<-exp2005renters$NHC * exp2005renters$WEIGHT

exp2006s$allWeightedIncome <-exp2006s$Q1 * exp2006s$WEIGHT
exp2006s$allWeightedConsumption <-exp2006s[,3]*exp2006s$WEIGHT
exp2006owners$ownerWeightedIncome<-exp2006owners$Q1 * exp2006owners$WEIGHT
exp2006owners$ownerWeightedConsumption<-exp2006owners[,3] * exp2006owners$WEIGHT
exp2006owners$ownerWeightedNHC<-exp2006owners$NHC * exp2006owners$WEIGHT
exp2006renters$renterWeightedIncome<-exp2006renters$Q1 * exp2006renters$WEIGHT
exp2006renters$renterWeightedConsumption<-exp2006renters[,3] * exp2006renters$WEIGHT
exp2006renters$renterWeightedNHC<-exp2006renters$NHC * exp2006renters$WEIGHT

exp2007s$allWeightedIncome <-exp2007s$Q1 * exp2007s$WEIGHT
exp2007s$allWeightedConsumption <-exp2007s[,3]*exp2007s$WEIGHT
exp2007owners$ownerWeightedIncome<-exp2007owners$Q1 * exp2007owners$WEIGHT
exp2007owners$ownerWeightedConsumption<-exp2007owners[,3] * exp2007owners$WEIGHT
exp2007owners$ownerWeightedNHC<-exp2007owners$NHC * exp2007owners$WEIGHT
exp2007renters$renterWeightedIncome<-exp2007renters$Q1 * exp2007renters$WEIGHT
exp2007renters$renterWeightedConsumption<-exp2007renters[,3] * exp2007renters$WEIGHT
exp2007renters$renterWeightedNHC<-exp2007renters$NHC * exp2007renters$WEIGHT


exp2008s$allWeightedIncome <-exp2008s$Q1 * exp2008s$WEIGHT
exp2008s$allWeightedConsumption <-exp2008s[,3]*exp2008s$WEIGHT
exp2008owners$ownerWeightedIncome<-exp2008owners$Q1 * exp2008owners$WEIGHT
exp2008owners$ownerWeightedConsumption<-exp2008owners[,3] * exp2008owners$WEIGHT
exp2008owners$ownerWeightedNHC<-exp2008owners$NHC * exp2008owners$WEIGHT
exp2008renters$renterWeightedIncome<-exp2008renters$Q1 * exp2008renters$WEIGHT
exp2008renters$renterWeightedConsumption<-exp2008renters[,3] * exp2008renters$WEIGHT
exp2008renters$renterWeightedNHC<-exp2008renters$NHC * exp2008renters$WEIGHT


exp2009s$allWeightedIncome <-exp2009s$Q1 * exp2009s$WEIGHT
exp2009s$allWeightedConsumption <-exp2009s[,3]*exp2009s$WEIGHT
exp2009owners$ownerWeightedIncome<-exp2009owners$Q1 * exp2009owners$WEIGHT
exp2009owners$ownerWeightedConsumption<-exp2009owners[,3] * exp2009owners$WEIGHT
exp2009owners$ownerWeightedNHC<-exp2009owners$NHC * exp2009owners$WEIGHT
exp2009renters$renterWeightedIncome<-exp2009renters$Q1 * exp2009renters$WEIGHT
exp2009renters$renterWeightedConsumption<-exp2009renters[,3] * exp2009renters$WEIGHT
exp2009renters$renterWeightedNHC<-exp2009renters$NHC * exp2009renters$WEIGHT


exp2010s$allWeightedIncome <-exp2010s$Q1 * exp2010s$WEIGHT
exp2010s$allWeightedConsumption <-exp2010s[,3]*exp2010s$WEIGHT
exp2010owners$ownerWeightedIncome<-exp2010owners$Q1 * exp2010owners$WEIGHT
exp2010owners$ownerWeightedConsumption<-exp2010owners[,3] * exp2010owners$WEIGHT
exp2010owners$ownerWeightedNHC<-exp2010owners$NHC * exp2010owners$WEIGHT
exp2010renters$renterWeightedIncome<-exp2010renters$Q1 * exp2010renters$WEIGHT
exp2010renters$renterWeightedConsumption<-exp2010renters[,3] * exp2010renters$WEIGHT
exp2010renters$renterWeightedNHC<-exp2010renters$NHC * exp2010renters$WEIGHT


exp2011s$allWeightedIncome <-exp2011s$Q1 * exp2011s$WEIGHT  # why is this giving an error??
exp2011s$allWeightedConsumption <-exp2011s[,3]*exp2011s$WEIGHT
exp2011owners$ownerWeightedIncome<-exp2011owners$Q1 * exp2011owners$WEIGHT
exp2011owners$ownerWeightedConsumption<-exp2011owners[,3] * exp2011owners$WEIGHT
exp2011owners$ownerWeightedNHC<-exp2011owners$NHC * exp2011owners$WEIGHT
exp2011renters$renterWeightedIncome<-exp2011renters$Q1 * exp2011renters$WEIGHT
exp2011renters$renterWeightedConsumption<-exp2011renters[,3] * exp2011renters$WEIGHT
exp2011renters$renterWeightedNHC<-exp2011renters$NHC * exp2011renters$WEIGHT


exp2012s$allWeightedIncome <-exp2012s$Q1 * exp2012s$WEIGHT
exp2012s$allWeightedConsumption <-exp2012s[,3]*exp2012s$WEIGHT
exp2012owners$ownerWeightedIncome<-exp2012owners$Q1 * exp2012owners$WEIGHT
exp2012owners$ownerWeightedConsumption<-exp2012owners[,3] * exp2012owners$WEIGHT
exp2012owners$ownerWeightedNHC<-exp2012owners$NHC * exp2012owners$WEIGHT
exp2012renters$renterWeightedIncome<-exp2012renters$Q1 * exp2012renters$WEIGHT
exp2012renters$renterWeightedConsumption<-exp2012renters[,3] * exp2012renters$WEIGHT
exp2012renters$renterWeightedNHC<-exp2012renters$NHC * exp2012renters$WEIGHT


exp2013s$allWeightedIncome <-exp2013s$Q1 * exp2013s$WEIGHT
exp2013s$allWeightedConsumption <-exp2013s[,3]*exp2013s$WEIGHT
exp2013owners$ownerWeightedIncome<-exp2013owners$Q1 * exp2013owners$WEIGHT
exp2013owners$ownerWeightedConsumption<-exp2013owners[,3] * exp2013owners$WEIGHT
exp2013owners$ownerWeightedNHC<-exp2013owners$NHC * exp2013owners$WEIGHT
exp2013renters$renterWeightedIncome<-exp2013renters$Q1 * exp2013renters$WEIGHT
exp2013renters$renterWeightedConsumption<-exp2013renters[,3] * exp2013renters$WEIGHT
exp2013renters$renterWeightedNHC<-exp2013renters$NHC * exp2013renters$WEIGHT


exp2014s$allWeightedIncome <-exp2014s$Q1 * exp2014s$WEIGHT
exp2014s$allWeightedConsumption <-exp2014s[,3]*exp2014s$WEIGHT
exp2014owners$ownerWeightedIncome <-exp2014owners$Q1 * exp2014owners$WEIGHT
exp2014owners$ownerWeightedConsumption<-exp2014owners[,3] * exp2014owners$WEIGHT
exp2014owners$ownerWeightedNHC<-exp2014owners$NHC * exp2014owners$WEIGHT
exp2014renters$renterWeightedIncome<-exp2014renters$Q1 * exp2014renters$WEIGHT
exp2014renters$renterWeightedConsumption<-exp2014renters[,3] * exp2014renters$WEIGHT
exp2014renters$renterWeightedNHC<-exp2014renters$NHC * exp2014renters$WEIGHT

## some re-naming to make key nicer on graph
names(matNHCrenters)[2]<-"Renter"
names(matConsRenters)[2]<-"Renter"
names(matNHCowners)[2]<-"Owner-occupied"
names(matIncome)[2]<-"All-households"
names(matYOwners)[2]<-"Owner-occupied"
names(matYRenters)[2]<-"Renter"
## make tidy data frames for ggplot2
allNHC <- Hmisc::Merge(matNHCowners,matNHCrenters,id=~someyears )
allNHC<-gather(allNHC,someyears) ## long, tidy format for graphing
names(allNHC)[1] <- "year"
names(allNHC)[2] <- "key"
allConsumption <- Hmisc::Merge(matCons,matConsOwners,matConsRenters, id=~someyears)
allConsumption<-gather(allConsumption,someyears)## long, tidy format
names(allConsumption)[1] <- "year"
names(allConsumption)[2] <- "key"
allY<- Hmisc::Merge(matIncome,matYOwners,matYRenters, id=~someyears)
allY<-gather(allY,someyears)## long, tidy format
names(allY)[1] <- "year"
names(allY)[2] <- "key"
## 
