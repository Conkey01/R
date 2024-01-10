# 1. Simulate Data: (from Poisson likelihood)
lambda=3
y=rpois(1000,lambda)
head(y)

table(y)
barplot(table(y))

# High variance prior:
p=.1
q=.001

# Simulation from a Gamma posterior
P=p+sum(y)
Q=q+length(y)
hist(rgamma(1000,P,Q),freq=FALSE)

# Credible interval
qgamma(c(.025,.975),P,Q)

# Percentile of paramter data simulated from
pgamma(lambda,P,Q)


# Exact posterior
theta = seq(2.5,3.3,length=1000)
par(mfrow=c(1,2))
plot(theta,dgamma(theta,P,Q),type="l",main="Posterior density")
plot(theta,pgamma(theta,P,Q),type="l",main="cumulative posterior density")

# ------------------------------------------------
# 2. Simulate from a bernoulli
prop=.35
y=rbinom(1000,1,prop)
head(y)

T=table(y)
T
barplot(T)
p=1
q=1

# Simulation from a Beta posterior:
S=T[2]
F=T[1]
P=p+S
Q=q+F
hist(rbeta(1000,P,Q),freq=FALSE)

# Credible interval
qbeta(c(.025,.975),P,Q)

# Percentile of parameter data simulated from
pbeta(prop,P,Q)

# Exact posterior
theta = seq(.25,.45,length=1000)
par(mfrow=c(1,2))
plot(theta,dbeta(theta,P,Q),type="l",main="Posterior density")
plot(theta,pbeta(theta,P,Q),type="l",main="cumulative posterior density")