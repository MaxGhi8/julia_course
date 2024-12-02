function is_equilateral(sides)
    if check_valid(sides)
        a, b, c = sides
        return (a == b) && (b == c)
    else
        return false
    end
end

function is_isosceles(sides)
    if check_valid(sides)
        a, b, c = sides
        return (a == b) || (a == c) || (b == c)
    else
        return false
    end
end

function is_scalene(sides)
    if check_valid(sides)
        a, b, c = sides
        return (a != b) && (a != c) && (b != c)
    else
        return false
    end
end

function check_valid(sides)
    a, b, c = sides
    if (a <= 0) || (b <= 0) || (c <= 0)
        return false
    elseif (a + b <= c) || (b + c <= a) || (a + c <= b)
        return false
    else
        return true
    end
end
