plain = "abcdefghijklmnopqrstuvwxyz"
cipher = "zyxwvutsrqponmlkjihgfedcba"
plain2cipher = Dict(plain[i] => cipher[i] for i in 1:length(plain))
cipher2plain = Dict(cipher[i] => plain[i] for i in 1:length(plain))

function encode(input)
    input = replace(lowercase(input), r"[^a-zA-Z0-9]" => "")
    encoded = ""
    for (idx, c) in enumerate(input)
        isdigit(c) ? encoded *= c : encoded *= cipher2plain[c]
        if idx%5 == 0
            encoded *= " "
        end
    end    
    return rstrip(encoded, [' '])
end

function decode(input)
    # assume that input is cipher encripted
    input = replace(input, " " => "")
    decoded = join(map(c -> isdigit(c) ? c : cipher2plain[c], input))
    return decoded
end
