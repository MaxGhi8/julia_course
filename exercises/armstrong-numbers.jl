function isarmstrong(number)
    list_number = collect(string(number)) # convert in a list of char
    num_digits = length(list_number)
    total = sum(map(c -> parse(Int64, c)^num_digits, list_number))
    return total == number
end

