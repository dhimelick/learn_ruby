class Book
# write your code here
    def initialize
        @title = ""
    end

    def title
        @title
    end

    def title=(words)
        @title = titleize(words)
    end

    def titleize(words)
        stop_words = ["a", "an", "the", "and", "of", "in"]
        words.capitalize!
        words.split(" ").map! do |word|
            if stop_words.include?(word)
                word
            else
                word.capitalize
            end
        end.join(" ")
    end
end
