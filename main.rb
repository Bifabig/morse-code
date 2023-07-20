@morse_code = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @current_char = @morse_code[char]
  @current_char
end

def decode_word(word)
  @chars = word.split
  @current_word = ''
  @chars.each do |char|
    decode_char(char)
    @current_word += decode_char(char)
  end
  print "#{@current_word} "
end

def decode(msg)
  @words = msg.split('   ')
  @words.each do |word|
    decode_word(word)
  end
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
