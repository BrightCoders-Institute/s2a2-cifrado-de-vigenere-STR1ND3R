# frozen_string_literal: false

require_relative 'vigenere_table'

# cipher and decipher a string with the vigenere method
class Vigenere
  def initialize
    @alphabet = ('a'..'z').to_a
    alphabet.insert(14, 'ñ')
    @table = VigenereTable.new(@alphabet)
  end
  attr_reader :alphabet, :table

  def cipher(message = 'ruby', key = 'cod')
    message, key = format(message, key)
    message.each do |h|
      h.split('').each_with_index do |letter, i|
        @table.table.each do |j|
          h[i] = j[@table.table[0].find_index(letter)] if j[0] == key[i]
        end
      end
    end
    message.join(' ')
  end

  def decipher(message = 'tjea tjea', key = 'cod')
    message, key = format(message, key)
    message.each do |h|
      h.split('').each_with_index do |letter, i|
        @table.table.each do |j|
          h[i] = @table.table[0][j.find_index(letter)] if j[0] == key[i]
        end
      end
    end
    message.join(' ')
  end

  def format(message, key)
    key.gsub!(' ', '')
    key += key while key.length < message.length
    message.strip!
    message = message.split(' ')
    [message, key]
  end
end
