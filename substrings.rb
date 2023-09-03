# frozen_string_literal: true

main_dictionary = %w[the big dog do]

def substrings(string, dictionary)
        dictionary.each_with_object(Hash.new(0)) do |word, acc|
                
                
                # acc[word] += 1 if word.include?(string)
        end
end

p substrings('the doggo do', main_dictionary)
