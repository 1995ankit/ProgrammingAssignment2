## makecachematrix is a function which returns a list of function.
## set() sets the value of the matrix.get() get the value of the matrix.setinverse() set the inverse of matrix.getinverse() return the inverse.



makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function() {
                x <<- y
                m<-NULL
        }
        get <- function() x
        setinverse <- function(sol) m <<-sol 
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


##This function compute and return the inverse of the matrix.
cacheSolve <- function(x, ...) {
          p <- x$getinverse()
        if(!is.null(p)) {
                message("getting cached data")
                return(p)
        }
        data <- x$get()
        p <- solve(data)
        x$setinverse(p)
        x$getinverse()
}
