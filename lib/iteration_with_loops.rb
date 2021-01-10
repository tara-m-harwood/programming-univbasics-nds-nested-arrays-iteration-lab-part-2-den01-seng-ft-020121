require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  
outer_results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  min = src[row_index][element_index]
  while element_index < src[row_index].count do
    num = src[row_index][element_index]
    if num < min
      min = src[row_index][element_index]
    end
    element_index += 1
  end
 
  outer_results << min
  row_index += 1
 end
 outer_results
end

array_2 = [
  [1,2,3],
  [5,1,3],
  [4,3,0] 
]

find_min_in_nested_arrays(array_2)

