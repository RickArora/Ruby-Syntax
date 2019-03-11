# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
    sorted = false
    while !sorted
        sorted=false
        arr.each_with_index do |array, i|
            if i < arr.length-1 
                if arr[i] > arr[i+1] 
                    tmpVariable = arr[i+1]
                    arr[i+1] = arr[i]
                    arr[i] = tmpVariable
                    sorted = true
                end 
            end
        end
        if sorted == true
            sorted=false
        else 
            sorted=true
        end 
    end
    return arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]