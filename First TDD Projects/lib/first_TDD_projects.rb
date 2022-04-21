

class Array

    #remove_dups
    def my_uniq

    end

    def two_sum

    end


    


end




def my_transpose(mulit_array)

end


def stock_picker(array)

end



#Examples 

p [1,2,1,3,3].my_uniq # =>  [1, 2, 3]
p [1, 2, 1, 3, 3].uniq # => [1, 2, 3]

p [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]


# [0, 2] before [2, 1] (smaller first elements come first)
# [0, 1] before [0, 2] (then smaller second elements come first)


# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

# row1 = rows[0]
# row2 = rows[1]
# row3 = rows[2]

# cols = [
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8]
#   ]


p my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])
 # => [[0, 3, 6],
 #    [1, 4, 7],
 #    [2, 5, 8]]


 p stock_picker([5, 8, 2, 4, 6]) # // => 4