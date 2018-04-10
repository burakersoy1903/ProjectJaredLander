# --- 5.1 data.frames ----------
x <- 10:1
y <- -4:5
q <- c("Hockey","Football","Baseball","Curling","Rugby",
       "Lacrosse","Basketball","Tennis","Cricket","Soccer")
theDF <- data.frame(x,y,q) # Create the variable
theDF <- data.frame(First=x, Second=y, Sport=q) # Assign column names; otherwise, vector names are column names
nrow(theDF)
ncol(theDF)
dim(theDF)
names(theDF)
names(theDF)[3]
rownames(theDF)
rownames(theDF) <- c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
rownames(theDF)
rownames(theDF) <- NULL
rownames(theDF)
head(theDF)
head(theDF, n=7)
tail(theDF)
class(theDF)
theDF$Sport
theDF[2,3] # nameOfTheBoject[row#,column#]
theDF[3, 2:3] # row 3, columns 2 through 3
theDF[c(3,5),2] # rows 3 and 5, column 2
theDF[c(3,5),2:3] # rows 3 and 5, columns 2 through 3
theDF[,3] # all of column 3
theDF[,2:3] # all of columns 2 through 3
theDF[2,] # all of row 2
theDF[2:4,] # all of rows 2 through 4
theDF[,c("First","Sport")] # call by column names
theDF[,"Sport"]
class(theDF[,"Sport"])
theDF["Sport"]
class(theDF["Sport"])
class(theDF[["Sport"]])
theDF[,"Sport",drop=FALSE]
class(theDF[,"Sport",drop=FALSE])
theDF[,3,drop=FALSE]
class(theDF[,3,drop=FALSE])
newFactor <- factor(c("Pennsylvania","New York","New Jersey",
                      "New York","Tennessee", "Massacchusetts",
                      "Pennsylvania", "New York"))
model.matrix(~ newFactor - 1)


# --- 5.2 Lists ----------
list(1,2,3) # creates a three elements list
list(c(1,2,3)) # creates a single element list. Element is a vector
theList3 <- list(c(1,2,3), 3:7) # creates a two element list with 2 vestors
theList3
list(theDF, 1:10)
theList5 <- list(theDF, 1:10, List3)
theList5
names(theList5)
theList5
names(theList5) <- c("data.frame", "vector", "list")
thelist5
names(theList5) <- NULL # You can null the names 
theList5
names(theList5) <- c("data.frame", "vector", "list")
theList5
theList6 <- list(TheDataFrame=theDF,TheVector=1:10, TheList=theList3) # name and create a list
names(theList6)
theList6
emptyList <- vector(mode="list", length=4) # ?vector
emptyList2 <- vector("list",4)
# Online way of doing things --https://stackoverflow.com/questions/5688020/how-to-create-a-list-with-names-but-no-entries-in-r-splus
emptyList3.names <- c("a", "b", "c")
emptyList3 <- vector("list", length(emptyList3.names))
names(emptyList3) <- emptyList3.names
theList5[[1]]
theList5[["data.frame"]]
theList5[[1]]$Sport
theList5[[1]][, "Second"]
theList5[[1]][, "Second", drop=FALSE]
length(theList5)
theList5[[4]] <- 2
length(theList5)
theList5[["NewElement"]] <- 3:6
length(theList5)
theList5


# --- 5.3 Matrices ----------
theMatrixA <- matrix(1:10, nrow = 5) # 5 rows 2 columns 5x2 matrix # Matrix filled by rows
theMatrixA
theMatrixB <- matrix(21:30, 5) # it works without nrow, but nrow is better syntactically
theMatrixB
theMatrixC <- matrix(21:40, nrow = 2) # MatrixTest <- matrix(1:100, ncol = 5) # Matrix filled by columns
theMatrixC
?rm # delete MatrxC
# rm(MatrxC) # Deleted the typo created variable
nrow(theMatrixA)
ncol(theMatrixA)
dim(theMatrixA)
theMatrixA + theMatrixB
theMatrixA * theMatrixB
theMatrixA == theMatrixB # Compare element-by-element, result is a matrix too
t(theMatrixB)
theMatrixA %*% t(theMatrixB)
colnames(theMatrixA)
rownames(theMatrixA)
colnames(theMatrixA) <- c("Left", "Right")
rownames(theMatrixA) <- c("1st", "2nd", "3rd", "4th", "5th")
colnames(theMatrixC) <- LETTERS[1:10] # Special vector LETTERS for uppercase letters for lowercase
rownames(theMatrixC) <- c("Top", "Bottom")
theMatrixA
theMatrixC
t(theMatrixC) # Transposing vs. Matrix Multiplication for colnames and rownames # Lesson to learn
theMatrixA %*% theMatrixC


# --- 5.4 Arrays ----------
theArray <- array(1:12, dim=c(2,3,2)) # dim=c(2,3,2) --> 2 rows, 3 columns, 2 arrays # 3 arrays --> vector repeats itself
theArray
?array
theArray[1, , ] # show me only first rows --Column 1 is Row 1 of first array, Column 2 is Row 1 of second array
theArray[1, ,1] # show me first array's first row
theArray[ , ,1] # show me first array









