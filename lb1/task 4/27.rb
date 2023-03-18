def move(arr)
    def move(arr, i)
        if i == arr.size - 1 then
            return arr
        else 
            arr[i] = arr[i+1]
            i += 1
            move(arr, i)
        end
    end
    a = arr[0]
    i = 0
    move(arr, i)
    arr[-1] = a
    return arr
end    

n = STDIN.gets.to_i
arr = []
0.upto(n-1) do |i|
    arr[i] = STDIN.gets.to_i
end
puts"#{move(arr)}"
