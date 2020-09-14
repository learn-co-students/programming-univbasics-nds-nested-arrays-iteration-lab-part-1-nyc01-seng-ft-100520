def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  flattened = src.flatten()
  
  flattened.each do |ele|
    puts ele if ele.even? 
  end
end