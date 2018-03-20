# data.frames
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


# Lists
list(1,2,3) # creates a three elements list
list(c(1,2,3)) # creates a single element list. Element is a vector
list3 <- list(c(1,2,3), 3:7) # creates a two element list with 2 vestors
list3
list(theDF, 1:10)
list5 <- list(theDF, 1:10, list3)
list5
names(list5)
list5
names(list5) <- c("data.frame", "vector", "list")
list5
names(list5) <- NULL # You can null the names 
list5
names(list5) <- c("data.frame", "vector", "list")
list5
list6 <- list(TheDataFrame=theDF,TheVecctor=1:10, TheList=list3) # name and create a list
names(list6)
list6
emptyList <- vector(mode="list", length=4) # ?vector
emptyList2 <- vector("list",4)
# Online way of doing things --https://stackoverflow.com/questions/5688020/how-to-create-a-list-with-names-but-no-entries-in-r-splus
emptyList3.names <- c("a", "b", "c")
emptyList3 <- vector("list", length(emptyList3.names))
names(emptyList3) <- emptyList3.names
list5[[1]]
list5[["data.frame"]]
list5[[1]]$Sport
list5[[1]][, "Second"]
list5[[1]][, "Second", drop=FALSE]
length(list5)
list5[[4]] <- 2
length(list5)
list5[["NewElement"]] <- 3:6
length(list5)
list5


# Matrices