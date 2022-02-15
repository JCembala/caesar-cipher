# frozen_string_literal: true

# Class which holds Caesar cipher shift method
class CaesarCipher
  LOWERCASE_RANGE = ('a'..'z').freeze
  UPPERCASE_RANGE = ('A'..'Z').freeze

  def self.shift(string, shift_factor = 5)
    shifted = string.chars.map do |character|
      if UPPERCASE_RANGE.include?(character)
        ((character.ord + shift_factor - 65) % 26) + 65
      elsif LOWERCASE_RANGE.include?(character)
        ((character.ord + shift_factor - 97) % 26) + 97
      else
        character
      end
    end
    shifted.map(&:chr).join
  end

end
