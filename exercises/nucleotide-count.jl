"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    dictionary = Dict{Char, Integer}('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for char in strand
        get(dictionary, char, -1) >= 0 ? dictionary[char] += 1 : throw(DomainError(char, "char is not a nucleotide"))
    end
    return dictionary
end
