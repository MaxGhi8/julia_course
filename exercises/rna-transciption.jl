function to_rna(dna)
    rna = ""
    dict = Dict{Char, Char}('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    for c in dna
        try
            new_c = dict[c]
            rna *= new_c
        catch err
            throw(error())
        end
    end
    return rna
end
