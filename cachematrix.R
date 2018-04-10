## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function contains a list of functions.  Using this list of functions it accepts and caches a matrix 
## in x, and establishes a cached variable m that can be called to cache the inverse of x.   It also allows for the  
## matrices stored in m or x to be easily written over or to be retrieved for use by other functions.  

## 
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(mtrx){ 
    x <<- mtrx
    m <<- NULL
  }
  get <- function() { x }
  setMatrix <- function(I_Mtrx) { m <<- I_Mtrx}
  getMatrix <- function(){ m }
  list (set = set, get= get, setMatrix = setMatrix, getMatrix = getMatrix )

}


## cacheSolve function seeks an inverted matrix cached in makeCacheMatrix.  If it finds no inverted matrix cached 
## there, the function retrieves and inverts the non-inverted matrix that is cached in makeCacheMatrix.  That 
## inverse matrix is then cached in makeCacheMatrix using its setMatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()a
  if(!is.null(m)){
    message("retrieving cached inverted matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setMatrix(m)
  m
}
