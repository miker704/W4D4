

def first_anagram?(str1,str2)

    str1=str1.split("")
    array=perm_str(str1,0,str1.length-1)

    array=array.flatten
   return  array.any?{|word| word==str2}


end

def perm_str(str,l,r)
   
    if(l==r)
        return str.join("")
    end
    array=[]
    i=l
    while i <=r
        str[l], str[i] = str[i], str[l]
       array<< perm_str(str,l+1,r)
        str[l],str[i] = str[i],str[l]
        i+=1
    end
    return array
end
p first_anagram?("sally", "allys")



# if (l == r)
#     cout<<a<<endl;
# else
# {
#     // Permutations made
#     for (int i = l; i <= r; i++)
#     {

#         // Swapping done
#         swap(a[l], a[i]);

#         // Recursion called
#         permute(a, l+1, r);

#         //backtrack
#         swap(a[l], a[i]);
#     }
# }
# }



class Stack
def initialize
    @stack=[]
end

end


class Super_stack<Stack

    def initialize(n)
        super()
        @stack.new(n)
    end

end


s=Super_stack.new(5)