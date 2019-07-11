# Problem 9: Brute force approach
for (c in 1:998){
  for (b in 1:(c-1)){
    for (a in 1:(b-1)){
      if (a+b+c == 1000 && a^2 + b^2 == c^2){
        print(a*b*c)
        break;
      }
    }
  }
}