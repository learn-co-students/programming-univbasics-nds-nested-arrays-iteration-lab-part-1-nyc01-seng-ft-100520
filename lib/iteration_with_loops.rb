def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  row_index = 0 
  while row_index < src.length do
    elenment_index = 0 
    while elenment_index < src[row_index].length do
        if src[row_index][elenment_index].even?
        p src[row_index][elenment_index]
        end
      elenment_index += 1 
    end
    row_index += 1 
  end
end