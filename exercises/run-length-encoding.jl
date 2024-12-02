function encode(s)
    if length(s) <= 1
        return s
    end
    encoded = ""
    prev = s[1]
    counter = 1
    for c in s[2:end]
        if c == prev
            counter += 1
        else
            counter == 1 ? encoded *= prev : encoded *= "$(counter)" * prev
            counter = 1
            prev = c
        end
    end
    counter == 1 ? encoded *= prev : encoded *= "$(counter)" * prev
    return encoded
end



function decode(s)
    if length(s) <= 1
        return s
    end
    decoded = ""
    digit = ""
    for c in s
        if isdigit(c)
            digit *= c
        else
            digit == "" ? decoded *= c : decoded *= c^(parse(Int, digit))
            digit=""
        end
    end
    return decoded
end
