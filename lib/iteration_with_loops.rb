def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  outer_index = 0
  while outer_index < src.count do
    inner_index = 0
    while inner_index < src[outer_index].count do
      if src[outer_index][inner_index] % 2 == 0
      p src[outer_index][inner_index]
    end
      inner_index += 1
    end
    outer_index += 1
  end
end
