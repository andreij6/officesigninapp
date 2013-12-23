module ApplicationHelper
 def timeToNumber(example)
    list_of_values=[]
    lib = {12 => [0,1,24,25], 1 => [2,3,26,27], 2 => [4,5,28,29], 3 => [6,7,30,31],
           4 => [8,9,32,33], 5 => [10,11,34,35], 6 => [12,13,36,37], 7 => [13,14,38,39], 
           8 => [15,16,40,41], 9 => [17,18,42,43], 10 => [19,20,44,45], 11 => [21,22,46,47]}
    example.each do |element|
        value_array = lib[element[0]]
        if element[1] < 30 
          if element[2] == "AM"
            list_of_values << value_array[0]
          elsif element[2] == "PM"
            list_of_values << value_array[2]
          end
        elsif element[1] >= 30
          if element[2] == "AM"
            list_of_values << value_array[1]
          elsif element[2] == "PM"
            list_of_values << value_array[3]
          end
        end
    end
    return list_of_values
   end
end

