require "pry"

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  alphabet_hash = {}
  ESPERANTO_ALPHABET.split("").each_with_index do |letter, index|
    alphabet_hash[letter] = index
  end
  
  arr.sort_by do |i|
    alphabet_hash[i[0]]
    # binding.pry
  end
end