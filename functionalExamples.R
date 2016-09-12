#functional R examples
# http://adv-r.had.co.nz/Functional-programming.html

x <- c(2,4,3426,44,-99)

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
 
