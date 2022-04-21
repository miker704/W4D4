


def towers_of_hanoi
    s1,s2,s3 = [],[],[]
    stacks = [s1,s2,s3]
    puts "Please choose how big the towers are!?!?!?!?"
    n = gets.chomp.to_i
    while n.to_i.to_s != n
        puts "You didn't input a number !! ><"
        puts "DO IT AGAIN !!"
        n = gets.chomp#.to_i
    end
    i = n.to_i
    until i == 0
        s1.push(i)
        i -= 1
    end

    game_over = false

    while !game_over
        puts "input which stack to remove from"
        input = gets.chomp#.to_i
        while input.to_i.to_s != input
            puts "You didn't input a number !! ><"
            puts "DO IT AGAIN !!"
            input = gets.chomp#.to_i
        end
        input = input.to_i

        while stacks[input-1].empty? || stacks[input-1].nil?
            puts "NO!!"
            puts "this stack is empty!, or doesn't exist"
            puts "Pick one that isnt ><"
            puts
            puts "input which stack to remove from"
            input = gets.chomp.to_i
        end
        removed_disk = stacks[input-1].pop

        puts "You've removed a #{removed_disk} disc"
        puts "please input wich stack to place the disc"

        input = gets.chomp#.to_i
        while input.to_i.to_s != input
            puts "You didn't input a number !! ><"
            puts "DO IT AGAIN !!"
            input = gets.chomp#.to_i
        end
        input = input.to_i

        while stacks[input-1].count >= n || stacks[input-1].nil?
            puts "NO!!"
            puts "this stack is full!, or doesn't exist"
            puts "Pick one that isnt ><"
            puts
            puts "please input wich stack to place the disc"
            input = gets.chomp.to_i
        end

        stacks[input-1].push(removed_disk)

        game_over = true if s3.size == n && s3 == s3.sort.reverse

    end

    puts "Holy shit! you won!"

end

towers_of_hanoi