arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_arr = arr.sort_by do |subarr|
            subarr.select do |element|
              element.odd?
            end
          end

p new_arr