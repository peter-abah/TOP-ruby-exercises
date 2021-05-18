def caesar_cipher(string, shift)
  string = string.bytes.map do |byte|
    if alphabetical?(byte)
      byte <= 'Z'.ord ? shift_upcase(byte, shift) : shift_downcase(byte, shift)
    else
      byte
    end
  end

  string.reduce('') { |a, b| a + b.chr }
end

def shift_upcase(byte, shift)
  byte += shift
  byte > 'Z'.ord ? 'A'.ord + (byte - 'Z'.ord) - 1 : byte
end

def shift_downcase(byte, shift)
  byte += shift
  byte > 'z'.ord ? 'a'.ord + (byte - 'z'.ord) - 1 : byte
end

def alphabetical?(byte)
  byte.between?('a'.ord, 'z'.ord) || byte.between?('A'.ord, 'Z'.ord)
end