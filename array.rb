def delete_duplicates(array)
  previous_value = array.shift
  final_array = [previous_value]

  array.each do |value|
    if value != previous_value
      final_array << value
      previous_value = value
    end
  end
  final_array
end

def common_elements(array1, array2)
  hash = {}
  array1.each do |value|
    hash[value] = 'array1'
  end

  array2.each do |value|
    if value > array1.last
      return
    end
    if hash.key? value
      hash[value] = 'common'
    end
  end

  hash.select { |_,v| v == 'common' }.keys
end
