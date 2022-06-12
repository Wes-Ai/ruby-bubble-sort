def bubble_sort(int_array)
    sorted = false
    swapped = false
    until sorted
        int_array.each_with_index do |int, index|

            first_int = int

            if((index+2) > int_array.length)
                second_int = 111
            else
                second_int = int_array[index + 1]
                if(first_int > second_int)
                    int_array[index] = second_int
                    int_array[index + 1] = first_int
                    #Uncomment to see bubbling in action!
                    #p "swapped + #{int_array}"
                    swapped = true
                end
            end
        end
        if(swapped)
            swapped = false
        else
            sorted = true
        end
    end
    int_array
end

p bubble_sort([4,3,78,2,0,2])
#Generates a random array. (x) is number of entries, {x..y} is range of ints
p bubble_sort(Array.new(25) { rand(1...99) })