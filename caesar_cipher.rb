LOWERCASE_RANGE = ("a".."z")
UPPERCASE_RANGE = ("A".."Z")

def caesar_cipher(string, shift_factor)
  
  shifted = string.chars.map do |letter| 
    if UPPERCASE_RANGE.include?(letter)
      ((letter.ord + shift_factor - 65) % 26) + 65
    elsif LOWERCASE_RANGE.include?(letter)
      ((letter.ord + shift_factor - 97) % 26) + 97
    else
      letter
    end
  end
  shifted.map { |char| char.chr }.join
end

puts caesar_cipher("This is secret! Shhhh...", 5)
