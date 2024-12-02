allergen2bit = Dict(
    "eggs" => 8,
    "peanuts" => 7,
    "shellfish" => 6,
    "strawberries" => 5,
    "tomatoes" => 4,
    "chocolate" => 3,
    "pollen" => 2,
    "cats" => 1
    )

bit2allergen = Dict(value => key for (key, value) in allergen2bit)

function allergic_to(score, allergen)
    score = bitstring(UInt8(score & 0xff)) # extract the last 8 digits and get the binary
    score[allergen2bit[allergen]] == '1'
end

function allergy_list(score)
    score = bitstring(UInt8(score & 0xff)) # extract the last 8 digits and get the binary
    list = []
    for (idx, a) in enumerate(score)
        if a == '1'
            push!(list, bit2allergen[idx])
        end
    end
    return Set(list)
end

