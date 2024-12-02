function raindrops(number)
    sound = ""
    (number%3 == 0) && (sound *= "Pling")
    (number%5 == 0) && (sound *= "Plang")
    (number%7 == 0) && (sound *= "Plong")
    (sound == "") && (sound = "$number")
    return sound
end

