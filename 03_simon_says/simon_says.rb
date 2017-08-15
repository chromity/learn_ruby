def echo parameter
  parameter
end

def shout parameter
  parameter.upcase
end

def repeat parameter, default = 2
  str = ""

  default.times {str = parameter + " " + str}

  str.strip!
end

def start_of_word str, letter_count
  str[0...letter_count]
end

def first_word str
  str.split(" ").first
end

def titleize str
  str_return = []
  words = str.split(" ")
  words_to_ignore = ["over", "the", "and"]

  words.each_with_index do |word, index|
    if !(words_to_ignore.include?(word) && index != 0)
      word = word[0].upcase + word[1...word.length]
    end

    str_return.push(word)
  end

  str_return.join(" ").strip
end
