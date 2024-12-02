function isisogram(s)
    s = lowercase(s)
    s = replace(s, "-" => "", " " => "")
    return length(Set(s)) == length(s)
end

