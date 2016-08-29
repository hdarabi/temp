test = matrix(1:20, nrow = 4, ncol = 5)

iterator = function(Varible, func, ...){
  for(i in 1:4){
    for(j in 1:5){
      
      Varible[i,j] = func(i, j, ...)
    }
  }
  assign(as.character(match.call())[2], Varible, envir = parent.frame(n = 1))
}

myPrint = function(i, j, Value){
  print(paste("i =", i, "j =", j, "Value =", Value[i, j]))
  Value[i, j]
}

iterator(test, myPrint, Value = matrix(21:40, nrow = 4, ncol = 5))
