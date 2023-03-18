def min(arr)
    min = arr[0]
    for i in arr
        if i < min then
            min = i
        end
    end
    return min
end    

def first_pol(arr)
    i = 0
    while arr[i] <= 0 do
        i += 1
    end
    return i
end

n = STDIN.gets.to_i
arr = []
0.upto(n-1) do |i|
    arr[i] = STDIN.gets.to_i
end
puts"#{min(arr)}"
puts"#{first_pol(arr)}"
