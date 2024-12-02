function collatz_steps(n)
    if n <= 0
        throw(DomainError(n , "n must be positive"))
    end
    steps = 0
    while steps < 100000
        if n == 1
            return steps
        else
            n%2 == 0 ? n = n÷2 : n = 3n + 1
            steps += 1
        end
    end
end
