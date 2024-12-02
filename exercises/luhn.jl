function luhn(n)
    n = reverse(collect(replace(n, " " => ""))) # list of char
    if length(n) <= 1
        return false
    end
    for (idx, c) in enumerate(n) 
        if isdigit(c)
            num = parse(Int8, c)*2
        else
            return false
        end
        
        if idx%2 != 0
            continue
        end

        if num > 9
            num -= 9
        end
        n[idx] = Char(num + '0')
        
    end
    total = sum(map(x -> parse(Int8, x), n))
    return total%10 == 0
end
