"Throw argument error when the length of the two inputs is different"
function distance(a, b)    
    if length(a) != length(b)
        throw(ArgumentError("DNA strings have different dimensions"))
    end

    count = 0
    for (c_a, c_b) in zip(a, b)
        if c_a != c_b
            count += 1
        end
    end
    return count

end

