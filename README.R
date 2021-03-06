## ------------------------------------------------------------------------
m <- matrix(1:6, ncol=3)
m
m[1,] # vector
m[,1] # vector
m[1,,drop=FALSE] # matrix

## ------------------------------------------------------------------------
df <- data.frame(a=1:3,b=4:6)
df
df[1,] # data.frame
df[,1] # vector
df[,1,drop=FALSE] # data.frame

## ------------------------------------------------------------------------
df <- data.frame(a=c("10","11","12"))
as.numeric(df$a) + 1
df <- data.frame(a=c("10","11","12"), stringsAsFactors=FALSE)
as.numeric(df$a) + 1

## ------------------------------------------------------------------------
c(TRUE,TRUE,FALSE) & c(FALSE,TRUE,TRUE) # element-wise
c(TRUE,TRUE,FALSE) && c(FALSE,TRUE,TRUE) # just the first
x <- "hi"
is.numeric(x) && x + 1 # evaluates left to right
is.numeric(x) & x + 1 # produces error

## ------------------------------------------------------------------------
m <- matrix(1:6, ncol=3)
m^2
apply(m, 2, `^`, 2) # column-wise, ok
apply(m, 1, `^`, 2) # gives back row-wise operation as columns

## ------------------------------------------------------------------------
df <- data.frame("test-it-#1"=1:2)
df
make.names("test-it-#1") # this function is used

## ------------------------------------------------------------------------
df <- data.frame(a=1:2,b=3:4,c=5:6,d=7:8)
df[,-(2:3)] # numeric index ok 
df[,-c("b","c")] # not character index
subset(df, select=-c(b,c)) # by name works here

## ------------------------------------------------------------------------
x <- numeric(0)
1:length(x)
seq_len(length(x))
seq_along(x)

## ------------------------------------------------------------------------
x <- c(1,2,NA)
which(x == NA)
which(is.na(x))
y <- NULL
y == NULL
is.null(y)

## ------------------------------------------------------------------------
m <- matrix(1:4,ncol=2)
write.csv(m,file="matrix.csv")
read.csv("matrix.csv")
read.csv("matrix.csv",row.names=1)

## ----,echo=FALSE,results="hide"------------------------------------------
file.remove("matrix.csv")

## ------------------------------------------------------------------------
f <- function() {
  y <- 1:10
  form <- ~ 1
  form
}
get("y", environment(f()))

