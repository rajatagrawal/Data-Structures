
array = [-1,-2, 0, 5, -3, 5]
max_so_far = array.first
max_ending_here = array.first
start_x = 0
end_x = 0
array.shift
array.each.with_index do |n,index|
  max_ending_here = [n,max_ending_here + n].max
  if max_ending_here > max_so_far
    max_so_far = max_ending_here
    if max_so_far == n
      start_x = index + 1
      end_x = index + 1
    else
      end_x = index + 1
    end
  end
end

puts "no is #{max_so_far}"
puts "start x is #{start_x}"
puts "end x is #{end_x}"
