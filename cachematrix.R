## Put comments here that give an overall description of what your
## functions do

## This first function creates an object which stores a matrix and caches the inverse of this matrix
##m <- NULL: setting the mean to NULL as a placeholder for a future value
##set <- function(y){x<<-y; m<<-NULL} defines a function to set the vector, x, to a new vector y. This function above also resets the mean, m, to NULL 
##Get <- function() x returns the vector, x 
##Setinverse <- function(inverse)) i <<- inverse, sets the inverse, i to inverse
##Getinverse <- function() i, returns the inverse, i
##List(set = set, get = get, setinverse = setinverse, getinverse = getinverse) returns the ‘special vector’ which contains all the functions that are defined as above 


makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
 }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function retrieves the cached inverse matrix if it has already been stored/cached. 
## Thus, if an i has been specified, the program will display to the reader that it is getting the cached data
## The program will then proceed to obtaining the raw matrix and setting the inverse of this matrix 
## The function x$sinverse(i) is telling the program that the inverse of the matrix, 'x', is being set  

cacheSolve <- function(x, ...) {
 i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
 }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
