
# Sect: 2.3, 3.2
# Grid Approximation 
# Globe Tossing Problem

# define grid
p_grid <- seq( from=0, to=1, length.out = 20 )

# define prior
prior <- rep(1, 20)

# compute liklihood at each value in grid
likelihood <- dbinom(6, size = 9, prob = p_grid)

# compute product of likelihood and prior
# when 6 out of 9 tosses reveal water
unstd.posterior <- likelihood * prior

# standardize posterior so it sums to 1
posterior <- unstd.posterior / sum(unstd.posterior)

# plot it
plot( p_grid, posterior , type = 'b', xlab = "probability of water", ylab = "posterior probability")

# ==================================================

# Sect: 3.3
# Sampling from the Grid-Approximate Posterior
# Draw 10K samples 
samples <- sample( p_grid, prob = posterior, size = 1e4, replace = T )

# plot it
plot(samples)

# plot a density estimate
library(rethinking)
dens(samples)













