## These two functions are designed to set a matrix and its
## inverse into the cache to later be called out for use.

## This function caches a matrix using the set command and calls
## it back out using the get command.

makeCacheMatrix <- function(x = matrix()) {
    set<-function(y){
        x<<-y
    }
    get<-function()x
    list (set = set, get = get)
}

## This function caches the inverse of a matrix using the setinv
## function. The cahce can be called using the getinv function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i<-NULL
    setinv<-function(solve)i<<-solve
    getinv<-function()i
    list(setinv = setinv, getinv = getinv)
}
