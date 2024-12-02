ispangram(input) = (length(Set( replace(lowercase(input), r"[^a-z]" => "") )) == 26)
