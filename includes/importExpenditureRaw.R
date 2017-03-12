
library(memisc)

library(Hmisc)

library(dplyr)      ######
exp2004 <- spss.get("../rawData/census/f466/f466exp.por",
                  use.value.labels = TRUE)
exp2005 <- spss.get("../rawData/census/f467/f467exp.por",
                  use.value.labels = TRUE)
exp2006 <- spss.get("../rawData/census/f468/f468exp.por",         #f again
                  use.value.labels = TRUE)
exp2007 <- spss.get("../rawData/census/f469/f469exp.por",
                  use.value.labels = TRUE)
exp2008 <- spss.get("../rawData/census/f474/f474exp.por",
                  use.value.labels = TRUE)
exp2009 <- spss.get("../rawData/census/f472/f472exp.por",
                    use.value.labels = TRUE)
exp2010 <- spss.get("../rawData/census/f471/f471exp.por",
                    use.value.labels = TRUE)
exp2011 <- spss.get("../rawData/census/f459/f459exp.por",
                    use.value.labels = TRUE)
exp2012 <- spss.get("../rawData/census/f458/f458exp.por",
                    use.value.labels = TRUE)
exp2013 <- spss.get("../rawData/census/f457/f457exp.por",
                    use.value.labels = TRUE)
exp2014 <- spss.get("../rawData/census/f456/f456exp.por",
                    use.value.labels = TRUE)
                    ######
exp2004df <-as.data.frame(exp2004)
exp2004s <-dplyr::select(exp2004df, Q1,Q22,Q64,Q294,Q297,WEIGHT,HHNUM)
exp2005df <-as.data.frame(exp2005)
exp2005s <-dplyr::select(exp2005df, Q1,Q24,Q69,Q308,Q311,WEIGHT,HHNUM)
exp2006df <-as.data.frame(exp2006)
exp2006s <-dplyr::select(exp2006df, Q1,Q24,Q66,Q303,Q306,WEIGHT,HHNUM)
exp2007df <-as.data.frame(exp2007)
exp2007s <-dplyr::select(exp2007df, Q1,Q24,Q69,Q321,Q326,WEIGHT,HHNUM)
exp2008df <-as.data.frame(exp2008)
exp2008s <-dplyr::select(exp2008df, Q1,Q24,Q69,Q325,Q330,WEIGHT,HHNUM)
exp2009df <-as.data.frame(exp2009)
exp2009s <-dplyr::select(exp2009df, Q1,Q26,Q77,Q358,Q363,WEIGHT,HHNUM)
exp2010df <-as.data.frame(exp2010)
exp2010s <-dplyr::select(exp2010df, Q1,Q27,Q78,Q361,Q367,WEIGHT,HHNUM)
exp2011df <-as.data.frame(exp2011)
exp2011s <-dplyr::select(exp2011df, Q1,Q28,Q81,Q366,Q372,WEIGHT,HHNUM)
exp2012df <-as.data.frame(exp2012)
exp2012s <-dplyr::select(exp2012df, Q1,Q28,Q81,Q366,Q372,WEIGHT,HHNUM)
exp2013df <-as.data.frame(exp2013)
exp2013s <-dplyr::select(exp2013df, Q1,Q28,Q83,Q382,Q387,WEIGHT,HHNUM)
exp2014df <-as.data.frame(exp2014)
exp2014s <-dplyr::select(exp2014df, Q1,Q28,Q84,Q383,Q389,WEIGHT,HHNUM)
