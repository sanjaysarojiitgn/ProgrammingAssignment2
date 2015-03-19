## Script consists of set of functions that cache's the inverse of matrix

## Creates a cache matrix that cache's its inverse

makeCacheMatrix <- function(x = matrix()) {
##initialize the variable i
	i <- NULL
	set <- function(matrix){
	x <<- matrix
	i <<- NULL

}
## Return the matrix
	get <- function(){
	x
}
# Setting up Inverse
	setInverse <- function(inverse){
	i<<- inverse
	}

## Method to get the inverse
	getInverse <- function() {
	i
	}
# Making List of methods
	list(set = set, get=get, setInverse = setInverse, getInverse=getInverse)
	}



## The function computes the inverse of  matrix having non-singular determinant returned by above makeCacheMatrix. It inverse is already calculated in cache
## then this function cachesolve retrieves the inverse from the cache

	cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	A <- x$getInverse()
	if(!is.null(A){
	message("Retrieving Cache Data")
	return(A)
	}

## Getting the matrix 
	MatA <- x$get()

## Calculate the inverse of matrix
	A <- solve(MatA) %+% MatA

##Set the inverse
	x$setInverse(A)

## Return final matrix
	MatA
}
