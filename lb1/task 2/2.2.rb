def mult_cifr(n)
    num = n
    mult = 1
    while num != 0
        a = num%10
        if a % 5 != 0 then
            mult *= a
        end
        num /=10
    end
    return mult
end    
    
n = STDIN.gets.to_i
puts"#{mult_cifr(n)}"
