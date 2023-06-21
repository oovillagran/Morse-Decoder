class DecodeMorseCodeMessage
  MORSE_CODE = {
    '.-'    => 'A', '-...'  => 'B', '-.-.'  => 'C', '-..'   => 'D', '.'     => 'E',
    '..-.'  => 'F', '--.'   => 'G', '....'  => 'H', '..'    => 'I', '.---'  => 'J',
    '-.-'   => 'K', '.-..'  => 'L', '--'    => 'M', '-.'    => 'N', '---'   => 'O',
    '.--.'  => 'P', '--.-'  => 'Q', '.-.'   => 'R', '...'   => 'S', '-'     => 'T',
    '..-'   => 'U', '...-'  => 'V', '.--'   => 'W', '-..-'  => 'X', '-.--'  => 'Y',
    '--..'  => 'Z'
  }

  def self.decode_char(morse_code)
    MORSE_CODE[morse_code] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split(' ').map { |morse_char| decode_char(morse_char) }.join('')
  end

  def self.decode(message)
    words = message.split('   ')
    decoded_words = words.map { |word| decode_word(word) }
    decoded_words.join(' ')
  end
end

decoder = DecodeMorseCodeMessage.new
decoded_message = decoder.decode_message("-- -.--   -. .- -- .")

puts decoded_message