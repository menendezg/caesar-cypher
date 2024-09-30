def caesar_cyper(message, shift_number)
  alphabet = ('a'..'z').to_a
  extracted_alphabet = alphabet[0..shift_number - 1].to_a

  new_alphabet = alphabet - extracted_alphabet
  extracted_alphabet.each { |letter| new_alphabet.push(letter) }

  encrypted_message = message.downcase.chars.map do |char|
    letter_index = alphabet.index(char)
    next if letter_index.nil?

    new_alphabet[letter_index]
  end

  string_encrypted_message = encrypted_message.map { |x| x || ' ' }.join
  puts('Please find below your encrypted message')
  puts(string_encrypted_message)
end

puts "Hello wild human. I'm caesar cypher"

puts 'Please introduce a string to encrypt'
message = gets.chomp
puts 'Now please introduce a shit number to encrypt'

shift_number = gets.chomp
caesar_cyper(message, shift_number.to_i)
