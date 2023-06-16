L1 <- lm(log(sleep$BrainWt)~log(sleep$BodyWt))
L2 <- lm(log(sleep$BrainWt)~sleep$TotalSleep)
L3 <- lm(log(sleep$BrainWt)~log(sleep$BodyWt)+sleep$TotalSleep)
L1$coefficients
L2$coefficients
L3$coefficients