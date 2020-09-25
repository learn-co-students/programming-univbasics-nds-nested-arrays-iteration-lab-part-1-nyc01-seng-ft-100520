def find_even_values(src)
  oc = 0 
  while oc < src.length do
    ic = 0 
    while ic < src[oc].length do
      if src[oc][ic] % 2 == 0 
        puts src[oc][ic]
      end
      ic += 1
    end
  oc +=1
  end
end

