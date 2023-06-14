boxplot(Mass~Roost,  starlings)
starlingsAnova <- aov(Mass ~ Roost, data = starlings)
summary(starlingsAnova)
