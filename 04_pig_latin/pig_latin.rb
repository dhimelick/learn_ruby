#write your code here
def translate(words)
    vowels = ["a", "e", "i", "o", "u"]
    words_list = words.split
    words_list.collect! do |word|
        vowel_index = word.index(/[aeiou]/)
        q_index = word.index("q")
        is_q = false
        if not q_index.nil? and q_index < vowel_index
            word = word.sub(/qu/, "&")
            is_q = true
        end
        if vowels.include?(word[0])
            word += "ay"
        else
            word = word[vowel_index..-1] + word[0..vowel_index-1] + "ay"
        end
        if is_q
            word = word.gsub(/&/, "qu")
        end
        word
    end
    words_list.join(" ")
end
