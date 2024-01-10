y=rpois(n,4) 
p=2
q=1
theta=seq(.001,8,length=1000)

# Plotting the prior, posterior and likelihood
plot(theta,dgamma(theta,p+sum(y),q+n),type="l",col=2,main="Poisson-Gamma conjugacy")
lines(theta,dgamma(theta,p,q),col=1)
lines(theta,dgamma(theta,sum(y)+1,n),col=3)
legend("topright",c("Prior","Posterior","Likelihood"),
       col=1:3,lty=1,lwd=2)