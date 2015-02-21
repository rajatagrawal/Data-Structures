@combinations_strings = []
def combinations(string)
  if string.size == 1
    [string[0]]
  else
    combination_strings = []
    puts "#{string} #{combinations(string[1..-1])}"
    combinations(string[1..-1]).each do |combo|
      combination_strings<<"#{string[0]}#{combo}"
      combination_strings<<combo
    end
    combination_strings<<string[0]
    combination_strings
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
