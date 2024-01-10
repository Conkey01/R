Screentimelm <- lm(Screentime$Notifications~Screentime$Times.opened)
summary(Screentimelm)
plot.default(Screentime[,4], Screentime[,3],pch = 16, cex = 1.0, col = "blue", xlab = "Times Opened (per day)", ylab = "Notifications (per day)", main = "Notifications against times opened" )
abline(Screentimelm)

Screentimelm2 <- lm(Screentime$Usage~Screentime$Notifications)
summary(Screentimelm2)
plot.default(Screentime[,3], Screentime[,2],pch = 16, cex = 1.0, col = "blue", xlab = "Notifications (per day)", ylab ="Usage (in minutes per day)", main = "Usage against Notifications")
abline(Screentimelm2)