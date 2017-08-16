class Book
  attr_accessor :title

  def title=(title)
    arr = []

    conjunctions = ["and", "in", "the", "of", "a", "an"]

    title.split.each_with_index do |word, index|
      if !conjunctions.include?(word) || index == 0
        word =~ /^(^[\w])(.*)$/x
        arr.push($1.upcase + $2)
      else
        arr.push(word)
      end
    end

    @title = arr.join(" ")
  end
end
