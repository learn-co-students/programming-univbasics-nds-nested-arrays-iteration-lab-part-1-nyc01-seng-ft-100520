def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  
row_count = 0
even_array = []
while row_count < src.length do
  column_count = 0
  while column_count < src[row_count].length do
    if src[row_count][column_count] % 2 == 0 
      even_array.push(src[row_count][column_count])
    end
    column_count += 1
  end
  row_count += 1
end
puts even_array
end