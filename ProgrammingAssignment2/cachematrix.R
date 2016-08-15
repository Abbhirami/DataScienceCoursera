## x is inversible matrix
## Set matrix
## Get matrix
## Set matrix Inverse
## Get matrix Inverse

makeCacheMatrix <- function(x = matrix()) {minv <- NULL
set <- function(y) {
        x <<- y
        minv <<- NULL
}
get <- function() x
setminv <- function(inverse) minv <<- inverse
getminv <- function() minv
list(set = set, get = get,
     setminv = setminv,
     getminv = getminv)}
        

## Use x from Makecachematrix for cachesolve
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        minv <- x$getminv()
                if(!is.null(minv)) {
                message("getting cached data")
                return(minv)
                }
        data <- x$get()
        minv <- solve(data, ...)
        x$setminv(minv)
        minv}
        