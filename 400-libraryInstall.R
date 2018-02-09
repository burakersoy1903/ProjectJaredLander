# Direct calculation
1+1
4/3

# Variables
x <- 4*6+5
4*(6+5) -> y
x
y
# Suceesively assignment
a <- b <- 7
a
b
# or
assign ("j", 4)
j

# Remove variables -- Does not remove from operation system --Use gc command -- garbage collection
j
rm(j)
j

# Check data type
class(x)
is.numeric(x)

#Integer
i <- 5L
i
is.integer(i)
is.numeric(i)
# as.numeric(i) # I still don't know what this function does

# R nicely promotes integers to numeric when needed
class(4L * 3.8)
class(5L / 2L)


# Character vs. Factor data -- factors are vectors
x <- "data"
x
y <- factor("data")
y

# Lenght of caharacter
nchar(x)
nchar("hello")
nchar(y) # does not work with factors

# Dates -- Format YYYY-MM-DD HH:MM
date1 <- as.Date("2018-02-09")
date1
class(date1)
as.numeric(date1) # ????
date2 <- as.POSIXct("2018-02-09 14:43")
date2
class(date2)
as.numeric(date2)

# Logicals
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

# Vectors
vector1 <- c(1,2,3,4,5,1,3)
vector1
vector2 <- c("R","Excel","SAS","Qlik")
vector2
