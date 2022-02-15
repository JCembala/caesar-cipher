LOWERCASE_RANGE = ("a".."z")
UPPERCASE_RANGE = ("A".."Z")

def caesar_cipher(string, shift_factor)
  
  shifted = string.chars.map do |character| 
    if UPPERCASE_RANGE.include?(character)
      ((character.ord + shift_factor - 65) % 26) + 65
    elsif LOWERCASE_RANGE.include?(character)
      ((character.ord + shift_factor - 97) % 26) + 97
    else
      character
    end
  end
  shifted.map { |char| char.chr }.join
end

puts caesar_cipher("This is secret! Shhhh...", 5)
