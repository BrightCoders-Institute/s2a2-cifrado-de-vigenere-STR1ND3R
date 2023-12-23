# frozen_string_literal: false

require_relative './vigenere/vigenere'

v = Vigenere.new
loop do
  puts 'Seleccione una opción:'
  puts '1. Cifrar'
  puts '2. Descifrar'
  puts '3. Salir'

  choice = gets.chomp.to_i

  case choice
  when 1
    print 'Escriba el mensaje que desea cifrar:'
    message = gets.chomp
    print 'Escriba la clave:'
    key = gets.chomp
    puts "El mensaje cifrado es: #{v.cipher(message, key)}"
  when 2
    print 'Escriba el mensaje que desea descifrar:'
    message = gets.chomp
    print 'Escriba la clave:'
    key = gets.chomp
    puts "El mensaje descifrado es: #{v.decipher(message, key)}"
  when 3
    puts '¡Hasta luego!'
    break
  else
    puts 'Opción no válida. Por favor, seleccione 1, 2 o 3.'
  end
end
