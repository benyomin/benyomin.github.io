#functional R examples
# http://adv-r.had.co.nz/Functional-programming.html

library("devtools")

z <- c(3,4,3512,3,-999)
y <- c(2,4,3426,44,-99)
z <- rbind(z,y)
fix_missing <- function(x) {
  x[x==-99] <- NA
  x}
df$a<- fix_missing(df$a)
df$b <- fix_missing(df$b)

#...

out <- vector("list",length(x))
for (i in seq_along(x) {
  out[[i]] <- f(x[[i]], ...)
}

fix_missing <-function(x) {
  x[x==-99] <- NA
  x
}
df[] <- lapply(df,fix_missing)

## only a subset
df[1:5] <- lapply(df[1:5], fix_missing)

                                        #
                                        #closures
missing_fixer <- function(na_value){
  function(x){
    x[x==na_value] <- NA
    x
  }
}


fix_missing_99 <- missing_fixer(-99)
fix_missing_99 <- missing_fixer(-999)

fix_missing_99(-99,-999,300,30,-99)

summary <- function(x) {
  c(mean(x),median(x),sd(x),mad(x),IQR(x))}
lapply(df,summary)
