
def caesar(message, key)
    message = message.split('')
    result = ''
    alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
    message.each do |letter|
        if(letter == " ")
            result << letter
        else
            lower_letter = letter.downcase
            ind = alphabet.index(lower_letter)
            if(ind + key > alphabet.length)
                new_index = ((ind + key) - alphabet.length) * -1
            else
                new_index = ind + key
            end
            result << (letter == letter.upcase ? alphabet[new_index].upcase : alphabet[new_index])
        end
    end
    return result.to_s
end