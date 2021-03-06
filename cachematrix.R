## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This will take a matrix and put its inverse into the memory cache

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInv <- function(solve) m <<- solve
        getInv <- function() m
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Return the cached matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        
        m <- x$getInv()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInv(m)
        m
}

