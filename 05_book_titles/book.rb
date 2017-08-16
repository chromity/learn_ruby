class Book
  attr_accessor :title

  def title=(title)
    conjunctions = ["and", "in", "the", "of", "a", "an"]
    title = title.split(" ")

    title = [title[0].capitalize] +
    title[1..-1].map do |word|
      if !conjunctions.include?(word)
        word.capitalize
      else
        word
      end
    end
    @title = title.join(" ")
  end
end
