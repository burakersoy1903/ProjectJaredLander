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


















