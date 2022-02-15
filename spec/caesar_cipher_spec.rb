# frozen_string_literal: true

require './lib/caesar_cipher'

describe CaesarCipher do
  describe '#shift' do
    it 'should return shifted uppercase letter' do
      expect(CaesarCipher.shift('A', 1)).to eql('B')
    end

    it 'should return shifted uppercase sentence' do
      expect(CaesarCipher.shift('ABCDEF', 1)).to eql('BCDEFG')
    end

    it 'should return shifted lowercase letter' do
      expect(CaesarCipher.shift('a', 1)).to eql('b')
    end

    it 'should return shifted lowercase sentence' do
      expect(CaesarCipher.shift('abcdef', 1)).to eql('bcdefg')
    end

    it 'should return input when non-letter characters are passed' do
      expect(CaesarCipher.shift('-_*/-', 1)).to eql('-_*/-')
    end

    it 'should shift letters but not non-letters when mixed' do
      expect(CaesarCipher.shift('a-b-c', 1)).to eql('b-c-d')
    end

    it 'should work with space between words' do
      expect(CaesarCipher.shift('abc de fghij', 1)).to eql('bcd ef ghijk')
    end

    it 'should return same numbers when passed' do
      expect(CaesarCipher.shift('0987654321', 1)).to eql('0987654321')
    end
  end
end
