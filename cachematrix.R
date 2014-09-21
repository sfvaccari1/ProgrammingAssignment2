## these functions will set a matrix that can be cached
## and calculate the inverse of a matrix and return it

## this function will create a matrix
makeCacheMatrix <- function(x = matrix()) {
  
  z<- NULL #sets Z to Null
  
  set <- function(y){ #the function will set the value to the matrix being passed in
    x<<- y     #sets variable being passed to x
    z<<- NULL  #sets Z to NULL
  }
  
  get <- function(){#function retrieves the matrix passed in as is
    x #the matrix
  }
  setInv <- function (inv){#function takes in inverse matrix and sets the inverse 
    z <<- inv #the inverse
  }
  getInv <- function(){#function retrieves the inverse of the matrix
    z #returns inv
  } 
  list(set=set, get=get, setInv=setInv, getInv=getInv) #list of functions
}


## Write a short comment describing this function
## this function will take in a the matrix and return the inverse
cacheSolve <- function(x, ...) {
  
  z<-x$getInv()#calls function in list. retrieves value and assigns to z
  
  if(!is.null(z)){#if statement. not null print and return inverse
    print("Retrieving Data")
    return(z) #return inverse
  }
  
  mat<- x$get()#calls function in list. retrieves matrix and assigns to mat
  z <- solve(mat)#calls solve function and assigns Z result
  x$setInv(z)#calls function in list. passes in inverse and sets the value
  
  z## Return a matrix that is the inverse of 'x'
}