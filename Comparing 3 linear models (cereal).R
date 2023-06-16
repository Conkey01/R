lm1 <- lm(cereal$Maize~cereal$Barley)
lm2 <- lm(cereal$Maize~cereal$Wheat)
lm3 <- lm(cereal$Maize~cereal$Barley+cereal$Wheat)
lm1$coefficients
lm2$coefficients
lm3$coefficients