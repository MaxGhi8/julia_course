function acronym(phrase)
    phrase = replace(phrase, "-" => " ")
    phrase = split(replace(phrase, r"[^a-zA-Z0-9 ]" => ""))
    return join(phrase .|> first .|> uppercase)
end
