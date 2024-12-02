function largest_product(str, span)
    len = length(str)
    if (str == "") || (span > len) || !all(isdigit, str) || span < 0
        throw(ArgumentError("Invalid input"))
    end

    maximum = 0
    for i = 1 : len - span + 1
        sub_str = str[i:i+span-1]
        counter = 1
        for digit in sub_str
            counter *= parse(Int, digit)
        end
        if counter > maximum
            maximum = counter
        end
    end

    return maximum
end
