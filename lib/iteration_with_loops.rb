def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
i = 0
while i < src.count do
  element_index = 0
  while element_index < src[i].count do
    p src[i][element_index]
    element_index += 1
  end
  i += 1
end
end