def find_even_values(array_of_arrays)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  count = 0
  while count < array_of_arrays.length do
    inner_count = 0
    while inner_count < array_of_arrays[count].length do
      if array_of_arrays[count][inner_count] % 2 == 0
        p array_of_arrays[count][inner_count]
      end 
      inner_count += 1
    end
    count += 1
  end 
end