library(memisc)
yr2000 <- spss.portable.file("../rawData/census/f461/f461fam.por")
yr2001 <- spss.portable.file('../rawData/census/f462/f462fam.por')
yr2002 <- spss.portable.file("../rawData/census/f463/f463fam.por")
yr2003 <- spss.portable.file("../rawData/census/f464/f464fam.por")
yr2004 <- spss.portable.file("../rawData/census/f466/f466fam.por")
yr2005 <- spss.portable.file("../rawData/census/f467/f467fam.por")
yr2006 <- spss.portable.file("../rawData/census/f468/n468fam.por")#n-not-f
yr2007 <- spss.portable.file("../rawData/census/f469/f469fam.por")
yr2008 <- spss.portable.file("../rawData/census/f474/f474fam.por")
yr2009 <- spss.portable.file("../rawData/census/f472/f472fam.por")
yr2010 <- spss.portable.file("../rawData/census/f471/f471fam.por")
yr2011 <- spss.portable.file("../rawData/census/f459/f459fam.por")
yr2012 <- spss.portable.file("../rawData/census/f458/f458fam.por")
yr2013 <- spss.portable.file("../rawData/census/f457/f457fam.por")
yr2014 <- spss.portable.file("../rawData/census/f456/f456fam.por")
##ind2004 <- spss.get("../rawData/census/f466/f466ind.por",
##                 use.value.labels = TRUE)
library(Hmisc)
library(dplyr)
qs = read.csv("./whichQuestion2.csv", header=TRUE)
##q1  total income
##q3  hhnum - household number (id variable)
##q23       - income from rental of owned apt.
##q64       - total household consumption
##q294      - monthly rental expense
##q297      - imputed rent for owned dwelling
## Q294 is about rent, if 294 > 0, household paid rent
exp2004renters <-subset(exp2004s, Q294>0)
exp2004owners <-subset(exp2004s, Q294==0)
exp2005renters <-subset(exp2005s, Q308>0)
exp2005owners <-subset(exp2005s, Q308==0)
exp2006renters <-subset(exp2006s, Q303>0)
exp2006owners <-subset(exp2006s, Q303==0)
exp2007renters <-subset(exp2007s, Q321>0)
exp2007owners <-subset(exp2007s, Q321==0)
exp2008renters <-subset(exp2008s, Q325>0)
exp2008owners <-subset(exp2008s, Q325==0)
exp2009renters <-subset(exp2009s, Q358>0)
exp2009owners <-subset(exp2009s, Q358==0)
exp2010renters <-subset(exp2010s, Q361>0)
exp2010owners <-subset(exp2010s, Q361==0)
exp2011renters <-subset(exp2011s, Q366>0)
exp2011owners <-subset(exp2011s, Q366==0)
exp2012renters <-subset(exp2012s, Q366>0)
exp2012owners <-subset(exp2012s, Q366==0)
exp2013renters <-subset(exp2013s, Q382>0)
exp2013owners <-subset(exp2013s, Q382==0)
exp2014renters <-subset(exp2014s, Q383>0)
exp2014owners <-subset(exp2014s, Q383==0) 
## write-out the data
## dump("exp2004s")
## dump("exp2005s")
## dump("exp2006s")
## dump("exp2007s")
## dump("exp2008s")
## dump("exp2009s")
## dump("exp2010s")
## dump("exp2011s")
## dump("exp2012s")
## dump("exp2013s")
## dump("exp2014s")
#
# fam2000<- subset(yr2000,
#                  select=c(
#                      valueOfApt = v42,
#                      netIncome = v43,
#                      aptSize = v40
#                  ))
# yr2001 <- spss.portable.file('../rawData/census/f462/f462fam.por')
# yr.2001 <-subset(yr2001,
#                  select=c(
#                      valueOfApt = v42,
#                      netIncome = v43,
#                      aptSize = v40,
#                      ownApt = v48
#                  ))
#description(yr.2001)
#yr2002 <- spss.portable.file("../rawData/census/f463/f463fam.por")
#yr.2002 <-subset(yr2002,
 #                select=c(
  #                   valueOfApt = v42,
   #                  netIncome = v43
           #          aptSize = v40,
           #          ownApt = v48
    ##             ))
# yr.2002 <-within(yr.2002,{
#     ownApt <- recode(ownApt,
#                      1 -> "Yes", 
#                      2 -> "No",
#                      9 -> "Missing"
#                          )
# })
fam2003 <-subset(yr2003,
                 select=c(
                   rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = caseid,
                     rooms = rooms,
                   codeloc = codeloc,
                  incgross = incgross,
                    exptot = exptot,
                    aptval = aptval,
                  typerent = typerent,
                  weight   = weight
                   ))
fam2004 <-subset(yr2004,
                 select=c(
                      rent = rent,
                     owner = owner, 
                  keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                    exptot = exptot,
                    aptval = aptval,
                  typerent = typerent,
                    weight = weight))
fam2005 <-subset(yr2005,
                 select=c(
                      rent = rent,
                     owner = owner, 
                  keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                    exptot = exptot,
                    aptval = aptval,
                  typerent = typerent,
                    weight = weight))
fam2006 <-subset(yr2006,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                    weight = weight))
fam2007 <-subset(yr2007,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent
                    weight = weight))
fam2008 <-subset(yr2008,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2009 <-subset(yr2009,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2010 <-subset(yr2010,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2011 <-subset(yr2011,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2012 <-subset(yr2012,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2013 <-subset(yr2013,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
fam2014 <-subset(yr2014,
                 select=c(
                      rent = rent,
                     owner = owner, 
                   keymoney = keymoney,
                   cluster = cluster,
                     hhnum = hhnum,
                     rooms = rooms, 
                   codeloc = codeloc,
                  incgross = incgross,
                   exptot = exptot,
                   aptval = aptval,
                   typerent = typerent,
                   weight = weight))
