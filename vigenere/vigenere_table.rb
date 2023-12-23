# frozen_string_literal: false

# class to generate a vigenere table based on any alphabet
class VigenereTable
  def initialize(alphabet = ('a'..'z').to_a.push(' '))
    @alphabet = alphabet
    @table = []

    (0...@alphabet.length).each do |i|
      @table.push @alphabet.rotate(i)
    end
  end

  def show
    @table.each do |i|
      i.each do |j|
        print j
      end
      print "\n"
    end
  end

  attr_reader :table
end
