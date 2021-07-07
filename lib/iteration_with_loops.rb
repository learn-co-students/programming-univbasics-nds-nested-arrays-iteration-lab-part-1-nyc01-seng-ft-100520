def find_even_values(src)

  count = 0 
  while count < src.length do
    element = 0 
    while element < src[count].length do
      if src[count][element].even?
        p src[count][element]
      end
      element += 1 
    end
    
    count += 1 
  end
end
  
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
