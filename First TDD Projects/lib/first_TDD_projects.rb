

class Array

    #remove_dups
    def my_uniq
        # arr = []
        # self.each{|e|arr << e if !arr.include?(e)}
        # arr

        h = {}
        self.each{|e|h[e] = true }
        h.keys
    end

    def two_sum
        arr = []
        self.each_with_index do |e,i|
            self.drop(i+1).each_with_index{|e2,i2| arr<<[i,i+i2+1] if e.abs == e2.abs }
        end
        arr.sort
    end

end




def my_transpose(mulit_array)
    mulit_array.map.with_index do |a1,i|
        arr = []
        mulit_array.each{|sub|arr<<sub[i]}
        arr
    end
end


def stock_picker(array)
    pair = [0,0]
    array.each_with_index do |e,i|
        array.drop(i+1).each_with_index{|e2,i2| pair = [i,i+i2+1] if e2 - e > array[pair[1]] - array[pair[0]] }
    end
    pair
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


 p stock_picker([5, 8, 2, 4, 6]) # // => 4 [x,y]