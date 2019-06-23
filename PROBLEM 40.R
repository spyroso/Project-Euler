# PROBLEM 40 
numberOfnumbers = function(digit){
  # this function returns the n-th digit of the irrational number 0.123456789101112...
  # it first counts the number of integers before the n-th digit by removing digits of the appropriate size 
  theInt = 1; size = 1

  while(digit > 0){
    # Number of digits of current integer 
    if (theInt >= 10^size ){size = size + 1}
    
    #remove digits 
    digit = digit - size
    theInt = theInt + 1 
  }
  
  # Fixing theInt, fixing digits 
  theInt = theInt -1 
  digit = digit + size
  
  # Extracting digits from the number, selecting the appropriate one
  return(as.numeric(strsplit(as.character(theInt),"")[[1]])[digit])
}

# calculating product of d_1 * d_10 * ... * d_1000000
prod = 1
for(i in 0:6){
  prod = prod * numberOfnumbers(10^i)
}
prod
