#functional R examples
# http://adv-r.had.co.nz/Functional-programming.html

# instructions to make a package
# https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/
library("devtools")
devtools::install_github("klutometis/roxygen")
library(roxygen2)
install("thesisProposal")
?cat_function
document()
z <- c(3,4,3512,3,-999)
y <- c(2,4,3426,44,-99)
x <- rbind(z,y)
x

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

summary <- function(x) {
  c(mean(x, na.rm= TRUE),
  median(x,na.rm=TRUE),
  sd(x,na.rm= TRUE))
}

  ## factor out repeated code
## store functions in lists

summary <- function(x) {
  funs <- c(mean,median,sd,mad,IQR)
  lapply(funs,function(f) f(x,na.rm=TRUE))
}


## functions have:


#formals
formals(function(x=4) g(x) + h(x))
#body
body(function(x=4 g(x) + h(x))

#environment
  environment(function(x=4 g(x) + h(x))

    ## anonymous functions get extra parens
  (function(x) x+3)(10)
  ## like
  f <- function(x) x+3
  f(10)


  set <- 0:10

  set

  sqPaynito <- function(x) {
    x^2
    }
  sqPaynito(set)

  egHad <- function(x){
sqPaynito(x) -x

  }
egHad(set)

integrate((function(set) sqPaynito(set) -set), lower=0, upper = 300)


##closures

power <- function(exponent) {
  function(x) {
    x ^ exponent}}

square <- power(2)

square(4)

cube(3)
cube <- power(3)
cube(100)

as.list(environment(square))

as.list(environment(cube))
install.packages("pryr")
library(pryr)
unenclose(square)
unenclose(cube)
## mutable state
new_counter <- function() {
  i <- 0
  function(){
    i << i+1
    i}}

#list of functions with lapply()

x <- 1:10
funs <- list(
  sum=sum,
  mean = mean,
  median = median)
lapply(funs,function(f) f(x))



