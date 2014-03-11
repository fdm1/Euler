goal <- 600851475143
primes <- c(2)
is_prime <- function(n, primes) {
	num_to_check <- c(primes, (primes[length(primes)]+1):(n-1))
	stop <- FALSE
	while (!(TRUE %in% stop)) {
		stop <- ifelse(n %% num_to_check == 0, TRUE, FALSE)
		# print(n)
		if(stop == TRUE) {
			break
		} else{
			if (!(n %in% primes)) primes <- sort(c(primes, n))
			break	
		}		
	}
	primes
}

# NOT WORKING YET
# num <- primes[1]:goal
num <- 2:1000
for (i in num) primes <-is_prime(i, primes)
primes

primes
