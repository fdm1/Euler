fib = c(1,2)
limit <- 4000000
last_two <- function(fib) fib[length(fib) - 1] + fib[length(fib)]
while(last_two(fib) < limit) fib = c(fib, last_two(fib))
fib <- fib[fib %% 2 == 0]
(sum(fib))