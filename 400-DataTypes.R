# --- 4.1 Basic Math ----------
# Direct calculation
1+1
4/3

# --- 4.2 Variables ----------
x <- 4*6+5
4*(6+5) -> y
x
y

# --- 4.2.1 Variable Assignment ----------
# Successively assignment
a <- b <- 7
a
b
# or
assign ("j", 4)
j

# --- 4.2.2 Removing Variables ----------
# Does not remove from operation system --Use gc command -- garbage collection
j
rm(j)
j

# --- 4.3 Data Types ----------
# Check data type
class(x)
is.numeric(x)

# --- 4.3.1 Numeric Data ----------
#Integer
i <- 5L
i
is.integer(i)
is.numeric(i)
# as.numeric(i) # I still don't know what this function does

# R nicely promotes integers to numeric when needed
class(4L * 3.8)
class(5L / 2L)

# --- 4.3.2 Character Data ----------
# Character vs. Factor data -- factors are vectors
x <- "data"
x
y <- factor("data")
y

# Lenght of character
nchar(x)
nchar("hello")
nchar(y) # does not work with factors

# --- 4.3.3 Dates ----------
# Format YYYY-MM-DD HH:MM
date1 <- as.Date("2018-02-09")
date1
class(date1)
as.numeric(date1) # ????
date2 <- as.POSIXct("2018-02-09 14:43")
date2
class(date2)
as.numeric(date2)

# --- 4.3.4 Logical ----------
TRUE * 5
FALSE * 5
k <- TRUE
class(k)
is.logical(k)
2==3
2!=3
2<3
2>3
2<=3
2>=3
"data" == "stats"
"data" < "stats"

# --- 4.4 Vectors ----------
vector1 <- c(1,2,3,4,5,1,3)
vector1
vector2 <- c("R","Excel","SAS","Qlik")
vector2
vector1 * 3
vector1 ^ 2
sqrt(vector1)
vX <- c(1,2,3,4,5,6,7,8,9,10)
1:10
1:10 * 2 # be careful about the result (PEMDAS)
(1:10) ^ 2
-3:3
3:-3
length(vX)
length(1:10)
vX + c(1:2)
vX <= 5
vX <= vector1 # Warning: longer object length is not a multiple of shorter object length
any(vX <= vector1)
all(vX <= vector1)
nchar(vector1)
nchar(vector2)
vector2[1]
vector2[1:2]
vector2[c(1,4)] # Nonconsecutive access
vNamed = c(One="a",Two="b",Three="c")
vNamed["One"]

# --- 4.4.2 Factor Vectors ----------
vector2 <- c("R","Excel","Crystal","Qlik")
factorVector2 <- as.factor(vector2)
factorVector2 # rm(factorVector2)
as.numeric(factorVector2)
factorVector2 <- factor(c("R","Excel","Crystal","Qlik"),
                           levels=c("Qlik","R","Crystal","Excel"),
                           ordered=TRUE)
factorVector2
as.numeric(factorVector2)

# --- 4.5 Calling Functions ----------
vTest <- (1:10)
mean(vTest)

# --- 4.6 Function Documentation ----------
?mean
?':'
apropos("mean")

# --- 4.7 Missing Data ----------
# --- 4.7.1 NA ----------
z <- c(1,2,NA,8,3,NA,3)
z
is.na(z)
mean(z)
mean(z, na.rm = TRUE) # first removes the missing data then calculates the mean
# --- 4.7.2 NULL ----------
z <- c(1,NULL,3)
z
length(z)
d <- NULL
is.null(d)
is.null(7)

# --- 4.8 Pipes ----------
library(magrittr)
vTest <- (1:10)
mean(vTest)
vTest %>% mean
z <- c(1,2,NA,8,3,NA,3)
sum(is.na(z)) # how many NAs are present
z %>% is.na %>% sum
mean(z, na.rm = TRUE)
z %>% mean(na.rm = TRUE)


















