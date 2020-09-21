def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
result = []
oc = 0
while oc < src.length do
  ic = 0
  while ic < src[oc].length
    if src[oc][ic] % 2
      result << src[oc][ic]
    end
    ic += 1
end
oc += 1
end
puts result
end