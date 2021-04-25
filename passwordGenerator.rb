class PassGen
    def get_password length, chUpper, chLower  
        result = []
        vowels = "AEIOUYaeiouy"
        consonants = "BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz"
        i = 0
        while i <= length do
            result.push(consonants[rand(0..39)] + vowels[rand(0..11)])
            i += 1
        end

        randomLetters = result.join[0, length]

        if chUpper && chLower
            return randomLetters
        end

        if
        chUpper && !chLower 
            return randomLetters.upcase
        end
        if
        !chUpper && chLower
            return randomLetters.downcase
        end
        if
        !chUpper && !chLower
            return "Select case of letters"
        end

    end

end
    






    
