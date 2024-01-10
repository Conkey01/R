gaslm <- lm(gas$Gas~gas$Temp*gas$Insulate2)
coefficients(gaslm)