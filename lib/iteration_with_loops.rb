def find_even_values(src)
  counter = 0
  while counter < src.count do 
    inner_count = 0
    while inner_count < src[counter].count do
      if src[counter][inner_count].even?
        p src[counter][inner_count]
      end
      inner_count += 1
    end
    counter += 1
  end
end