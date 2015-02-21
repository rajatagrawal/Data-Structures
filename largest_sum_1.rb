def largest_subarray(values)
  start_x = 0
  end_x = 0

  temp_sum = values.shift
  max_sum = temp_sum

  values.each.with_index do |value, index|
    temp_sum = [value, value + temp_sum].max

    if temp_sum > max_sum
      max_sum = temp_sum

      if temp_sum == value
        start_x = index + 1
      end

      end_x = index + 1
    end
  end
  return max_sum, start_x, end_x
end

largest_subarray([7, -1, 8, -4, 5])

def submatrix_largest_sum(matrix)
  cols = matrix.first.size
  rows = matrix.size
  max_sum = matrix.first.first
  f_left = 0
  f_right = 0
  f_top = 0
  f_bottom = 0

  (0..(cols-1)).each do |left|
    (left..(cols-1)).each do |right|
      temp_row_sum = []
      (0..(rows-1)).each do |row|
        temp_row_sum<< row_sum(matrix, left, right, row)
      end
      sum, top, bottom = largest_subarray(temp_row_sum)
      if sum > max_sum
        f_left = left
        f_right = right
        f_top = top
        f_bottom = bottom
        max_sum = sum
      end
    end
  end

  return max_sum, f_left, f_right, f_top, f_bottom
end


def row_sum(matrix, left, right, y)
  sum = 0
  (left..right).each do |x|
    sum += matrix[y][x]
  end
  sum
end
