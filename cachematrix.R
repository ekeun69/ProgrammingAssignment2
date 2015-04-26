## learn to submit assignment through git bash to github repository
## Assignment2: to write a pair of functions that cache the inverse of a matrix.
## (To understand Lexical scoping)


##1. The function which creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  setmatrix <- function(y) {
    x <<- y
    inverse <<- NULL
  } 
  getmatrix <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}

## The function which computes the inverse of the special "matrix" returned 
## by  makeCacheMatrix  above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inverse <- x$getinverse()
          if(!is.null(inverse)) {
            message ("getting cached data")
            return (inverse) 
         }
         data <- x$getmatrix()
         inverse<-solve (data, ...)
         x$setinverse(inverse)
         inverse
}
