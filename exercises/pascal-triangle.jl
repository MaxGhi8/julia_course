function triangle(n)
    if n < 0
        throw(DomainError(n, "n have to be grater or equal to zero"))
    end
    pascal = Vector{Vector{Int}}()
    for i in 1:n
        tmp = Vector{Int}()
        for j in 0:i-1
            push!(tmp, binomial(i-1, j))
        end
        push!(pascal, tmp)
    end
    return pascal
end

