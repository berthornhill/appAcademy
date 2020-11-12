puts "Hello merge sort"
puts

def merge_sort(unsorted)
    return unsorted if unsorted.length <= 1

    mid = unsorted.length / 2
    left = unsorted[0...mid]
    right = unsorted[mid..-1]

    merge(merge_sort(left),merge_sort(right))
end 

def merge(first_arr, second_arr)
    result = []
    while !first_arr.empty? && !second_arr.empty?
        if first_arr.first <= second_arr.first
            result << first_arr.shift
        else 
            result << second_arr.shift
        end
    end
    result + first_arr + second_arr
end


p merge_sort([2, 1, 9, 1, 6, 5])
p merge_sort([2,1,4])

p merge([1,2,4],[2,3,6])