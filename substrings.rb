dictionary = %w[the big dog]

def substrings(string, dictionary)
  output = []
  string_array = string.split(' ')
  string_array.each do |test|
    dictionary.reduce(Hash.new(0)) do |dic, count|
    # p  test.include?(dic)
      dic[count] += 1
    p  dic
    end
  end
end

p substrings("theatrics of big", dictionary)