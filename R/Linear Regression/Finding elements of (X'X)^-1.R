X <- matrix(cbind(rep(1,44),gas$Temp ,gas$Insulate2 , gas$Insulate2*gas$Temp),ncol=4)
solve(t(X)%*%X)[2,2]
solve(t(X)%*%X)[2,4] 
solve(t(X)%*%X)[4,4]