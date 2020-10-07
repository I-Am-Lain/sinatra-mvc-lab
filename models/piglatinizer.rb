class PigLatinizer

    def piglatinize(phrase)
        phrase.split(' ').map{|word| latin(word)}.join(' ')
    end

    def vowel?(letter)
        ['a','e','i','o','u'].include?(letter.downcase)
    end

    def latin(word)
        first_vowel = (word.split('').find_index {|letter| vowel?(letter)} || 0)
        word[first_vowel .. -1] + word[0 ... first_vowel] + (first_vowel == 0 ? 'way' : 'ay')
    end
    
end
