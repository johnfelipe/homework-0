##Basic conditionals
a <- 0
if(a!=0){
	print(1/a)
}	else{
	print("No reciprocal for 0.")
}

a <- 2
if(a!=0){
	print(1/a)
}	else{
	print("No reciprocal for 0.")
}



library(dslabs)
data(murders)
murder_rate <- murder$total/murders$population*100000

##Which state has murder rate less than 0.5?
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
	print(murders$state[ind])
}	else{
	print("No state has murders rate that low")
}
#Vermont

ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.25){
	print(murders$state[ind])
}	else{
	print("No state has murders rate that low")
}
#No state has murders rate that low


a <- 0
ifelse(a > 0, 1/a, NA)

a <- 4
ifelse(a > 0, 1/a, NA)

a <- c(0, 1, 2, -4, 5)
result <- ifelse(a > 0, 1/a, NA)
#NA 1.0 0.5  NA 0.2


##Replacing NAs with 0s
data(na_example)
sum(is.na(na_example))
#145
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))
#0

##any
##Any function takes a vector of logicals and returns true if any of the entries is TRUE
z <- c(TRUE, TRUE, FALSE)
any(z)
#TRUE

z <- c(FALSE, FALSE, FALSE)
any(z)
#FALSE


##all
##Any function takes a vector of logicals and returns true if all of the entries are TRUE
z <- c(TRUE, TRUE, FALSE)
all(z)
#FALSE

z <- c(TRUE, TRUE, TRUE)
all(z)
#TRUE

##Basic functions
x <- 1:100
mean(x)
#50.5

##Writing a new function (example)
##Need to use function when writing a new function
avg <- function(x){
	s <- sum(x)
	n <- length(x)
	s/n
}

##For Loops
##Compute the sum of n
compute_s_n <- function(n){
	x <- 1:n
	sum(x)
}
compute_s_n(3)
#6

compute_s_n(100)
#5050

for(i in 1:5){
	print(i)
}
#1
#2
#3
#4
#5

i
#5

m <- 25
#create an empty vector
s_n <- vector(length = m)
for(n in 1:m){
	s_n[n] <- compute_s_n(n)
}
 n <- 1:m
> plot(n, s_n)
> print(s_n)
 [1]   1   3   6  10  15  21  28  36  45  55  66  78  91 105 120 136 153 171 190 210 231 253 276 300 325
> print(n)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
> print(sum(n))
[1] 325
> print(n*(n+1)/2)
 [1]   1   3   6  10  15  21  28  36  45  55  66  78  91 105 120 136 153 171 190 210 231 253 276 300 325
> lines(n, n*(n+1)/2)

#Other functions
#apply
#sapply
#tapply
#mapply
#split
#cut
#quantile
#reduce
#identical
#unique


x <- c(1,2,-3,4)
if(all(x>0)){
	print("All Positives")
}	else{
	print("Not All Positives")
}
















































