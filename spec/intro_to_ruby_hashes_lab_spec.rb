require 'spec_helper'

array_1 = [[1,2,3], [4,5,6], [7,8,9]]
array_2 = [[-1, -900], [10, 31], [5, 0], [14, -41], [1, 19]]
array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]


describe "Write a method called \"find_even_values\"." do
  describe "that when given an Array of Arrays of numbers," do
    it "outputs only the even numbers in each nested array" do
      expect{find_even_values(array_1)}.to output(/2/).to_stdout
      expect{find_even_values(array_1)}.to output(/4/).to_stdout
      expect{find_even_values(array_1)}.to output(/6/).to_stdout
      expect{find_even_values(array_1)}.to output(/8/).to_stdout

      expect{find_even_values(array_2)}.to output(/-900/).to_stdout
      expect{find_even_values(array_2)}.to output(/10/).to_stdout
      expect{find_even_values(array_2)}.to output(/0/).to_stdout
      expect{find_even_values(array_2)}.to output(/14/).to_stdout
      
      expect{find_even_values(array_3)}.to output(/86262/).to_stdout
      expect{find_even_values(array_3)}.to output(/22558/).to_stdout
      expect{find_even_values(array_3)}.to output(/66236/).to_stdout
      expect{find_even_values(array_3)}.to output(/28056/).to_stdout
      expect{find_even_values(array_3)}.to output(/25992/).to_stdout
      expect{find_even_values(array_3)}.to output(/11248/).to_stdout
      expect{find_even_values(array_3)}.to output(/70796/).to_stdout
      expect{find_even_values(array_3)}.to output(/63432/).to_stdout
      expect{find_even_values(array_3)}.to output(/53234/).to_stdout
      expect{find_even_values(array_3)}.to output(/63058/).to_stdout
      expect{find_even_values(array_3)}.to output(/72316/).to_stdout
    end
  end
end