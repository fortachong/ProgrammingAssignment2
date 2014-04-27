## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Store a list in the global environment
        ## Jorge Chong 
        matrix_and_inverse <<- list(the_matrix = x, the_inverse = solve(x));  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Jorge Chong
        ## First, test if there is a version of x cached
        if(exists("matrix_and_inverse", globalenv()))
        {
                if(identical(x, matrix_and_inverse$the_matrix)) 
                        return(matrix_and_inverse$the_inverse)
        }
  
        ## cache x and return its inverse
        makeCacheMatrix(x)
        matrix_and_inverse$the_inverse
}
