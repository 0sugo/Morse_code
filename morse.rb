def decode_char(morse_code)
  morse_code_table = {
    '--' => 'M',
    '.-' => 'A',
    '-.--' => 'Y',
    '.' => 'E',
    '-.' => 'N',
  }
  morse_code_table[morse_code]
end

def decode_word(morse_word)
  decode_word = ''
  morse_chars = morse_word.split(' ')
  morse_chars.each do |morse_char|
    decode_word += decode_char(morse_char)
  end
  decode_word
end

def decode_message(morse_message)
  decode_message = ''
  morse_words = morse_message.split('  ');
  morse_words.each do |morse_word|
    decode_message += decode_word(morse_word) + ' '
  end
  decode_message.strip
end

puts(decode_message('-- -.--   -. .- -- .'))
