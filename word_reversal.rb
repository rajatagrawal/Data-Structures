def word_reversal(string)
  words = string.split
  words.each do |word|
    word.reverse!
  end

  words.join(" ")
end

def shortest_string(string1, string2)
  if string1.size <= string2.size
    string1
  else
    string2
  end
end

def append_char(string, char, count)
  string<<char<<count.to_s
end

def compression(string)
  current_char = string[0]
  count = 0
  compressed_string = ""
  string.each_char.with_index do |c,index|
    if c == current_char
      count +=1
    else
      append_char(compressed_string, string[index-1], count)
      count = 1
      current_char = c
    end
  end

  append_char(compressed_string, string[-1], count)

  puts shortest_string(compressed_string, string)
end

