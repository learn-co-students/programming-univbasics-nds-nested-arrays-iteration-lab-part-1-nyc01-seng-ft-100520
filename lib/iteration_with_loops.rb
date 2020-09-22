def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  
  even_nums = []
  counter = 0
  while counter < src.size do
    inner_counter = 0
    while inner_counter < src[counter].size do
      if src[counter][inner_counter].even?
        even_nums << src[counter][inner_counter]
      end
      inner_counter += 1
    end
    counter += 1
  end
  puts even_nums
end