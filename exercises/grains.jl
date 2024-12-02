"""Calculate the number of grains on square `square`."""
function on_square(square)
    if (square > 0) && (square < 65)
        return BigInt(2)^(square - 1)
    else
        throw(DomainError(square, "square must be greater than 0"))
    end
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    if (square > 0) && (square < 65)
        return BigInt(2)^square - 1
    else
        throw(DomainError(square, "square must be greater than 0"))
    end
end
