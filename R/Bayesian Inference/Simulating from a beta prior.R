# Simulating from a beta(3,3) prior
p=3;q=3;n=40
thetaB=rbeta(1,p,q)
thetaB

# Simulating from a binomial(40, thetaB)
y=rbinom(1,n,thetaB) 
P=p+y;Q=q+n-y # Update the posterior parameters 
P/(P+Q) # Calculate the posterior mean


qbeta(c(.025,.975),P,Q) # 95% Quantile interval for theta

theta=seq(0,1,length=1000) 
Post=dbeta(theta,p+y,q+n-y) # Posterior 
Prior=dbeta(theta,p,q) # Prior
Like=dbeta(theta,y+1,n-y+1) # Likelihood 

# Plot the posterior, prior and likelihood
matplot(theta,cbind(Prior,Post,Like),type="l",ylab="probability", lwd=c(2,2,2),col=1:3,lty=rep(1,3))
legend("topright",c("Prior","Posterior","Likelihood"),col=1:3,lty=c(1,1,1),lwd=c(2,2,2))