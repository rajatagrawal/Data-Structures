@permutations_strings = []
def permutations(string)
  if string.size == 1
    [string[0]]
  else
    permutation_strings = []
    permutations(string[1..-1]).each do |p|
      permutation_strings<<all_combinations(string[0], p)
    end
    permutation_strings.flatten
  end
end

def all_combinations(c, string)
  strings = []
  strings<< "#{c}#{string}" << "#{string}#{c}"

  if string.size > 1
    (1..((string.size)-1)).each do |index|
      strings << "#{string[0..(index-1)]}#{c}#{string[index..-1]}"
    end
  end
  strings
end
