#write your code here
def echo(words)
    words
end

def shout(words)
    words.upcase
end

def repeat(words, n = 2)
    (["#{words}"] * n).join(" ")
end

def start_of_word(words, n)
    words[0, n]
end

def first_word(words)
    words.split(" ")[0]
end

def titleize(words)
    stop_words = ["and", "a", "an", "the", "over"]
    words.capitalize!
    words.split(" ").map! do |word|
        if stop_words.include?(word)
            word
        else
            word.capitalize
        end
    end.join(" ")
end
