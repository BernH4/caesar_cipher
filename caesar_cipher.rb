LETTERS = ("abcdefghijklmnopqrstuvwxyz").split("");
#ciphertext = []
puts "Plaintext:"
plaintext = gets.chomp

puts "\nShift factor?"
shift_factor = gets.chomp.to_i

def caesar_cipher(plaintext, shift_factor)
  #Transform plaintext to a string and map over every letter
  ciphertext = plaintext.split("").map do |letter|
    #check if current letter is not a digit or "!" for example
    if LETTERS.include?(letter.downcase)
      #get the cipherchar by adding the shift_factor and then module it times 26 (number of letters in the alphabet)
      cipherchar = LETTERS[(LETTERS.index(letter.downcase) + shift_factor) % 26]
      #returns the downcase cipherchar if original letter was also downcase, else transform to upcase and then return
      if letter == letter.downcase then cipherchar
      else cipherchar.upcase
      end
    #If letter is a digit or "!" for example just return it and move on with the next char
    else letter
    end
  end
  #transform array to string and write it to console
  puts "\nCiphertext:\n" + ciphertext.join
end

caesar_cipher(plaintext, shift_factor)
