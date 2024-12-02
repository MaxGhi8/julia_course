function wordcount(sentence)
    sentence = lowercase(sentence)
    sentence = replace(sentence, r"\\." => " ") # match any special character
    sentence = replace(sentence, r"[^a-zA-Z0-9']" => " ")
    sentence = split(sentence, " ")
    word_dict = Dict()
    for word in sentence
        word = strip(word, ['''])
        if (word == "")
            continue
        else
            word_dict[word] = get(word_dict, word, 0) + 1
        end
    end
    return word_dict
end
