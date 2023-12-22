# frozen_string_literal: false

require 'minitest/autorun'
require_relative 'vigenere'

# vigenere class testing
class TestVigenere < Minitest::Test
  def setup
    @vigenere = Vigenere.new
  end

  def test_ruby_message
    assert_equal 'tjea', @vigenere.cipher('ruby', 'cod')
  end

  def test_hola_message
    assert_equal 'zsnr', @vigenere.cipher('hola', 'secreto')
  end
end
