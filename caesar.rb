# Uses string to ord and back again to iterate upon an array

def str_to_ords(string)
  string.bytes
end

def ords_ciph(ords_array, count)
  ords_array.map do |ord|
    if ord.between?(65, 90 - count) || ord.between?(97, 122 - count)
      ord += count
    elsif ord.between?(90 - count, 90) || ord.between?(122 - count, 122)
      ord += count - 26
    else
      ord
    end
  end
end

def ords_to_str(ords)
  ords.pack('c*')
end

def caesar_ord_array(string, count)
  ords_to_str(ords_ciph(str_to_ords(string), count))
end

# Uses an empty string 'result' to place new characters into

def caesar_each_char(string, count = 0)
  result = ''
  string.each_char do |char|
    if char.ord.between?(65, 90 - count) || char.ord.between?(97, 122 - count)
      new_char = char.ord + count
      result += new_char.chr
    elsif char.ord.between?(90 - count, 90) || char.ord.between?(122 - count, 122)
      new_char = char.ord - 26 + count
      result += new_char.chr
    else
      result += char
    end
  end
  result
end

puts caesar_each_char('This is a test!', 20)

puts caesar_ord_array('This is a test!', 20)


