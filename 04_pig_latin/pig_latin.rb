def translate(param)
  word_array = param.split(" ")
  translated = []

  word_array.each do |word|
    if !(word[0] =~ /[aeiou]/i)
      if !(word[1] =~ /[aeio]/i)
        if !(word[2] =~ /[aeio]/i)
          word = word[3...word.length] + word[0..2]
        elsif word[2] == "u" && word[1] == "q"
          word = word[3...word.length] + word[0..2]
        else
          word = word[2...word.length] + word[0..1]
        end
      elsif word[1] == "u" && word[0] == "q"
          word = word[2..word.length] + word[0..1]
      else
        word = word[1...word.length] + word[0]
      end
    end

    translated.push(word + "ay")
  end

  translated.join(" ")
end
