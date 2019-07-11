# Problem 10: "Summation of Primes"
prime_nb = function(x){
  if( all(x %% 2:ceiling(x^.5) != 0) || x == 2){
    return(x)
  } else {
    return(0)
  }
}

sumPrime = prime_nb(2)
for (n in (1+2*1:1000000)){
  sumPrime = sumPrime + prime_nb(n)
}

sumPrime