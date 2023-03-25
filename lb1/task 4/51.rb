def list2(arr, l1)
    i = 0
    j = 0
    l2 = []
    s = 0
    def list2(arr, l1, l2, i, j, s)
        if j == l1.size then
            return l2
        else            
            if i == arr.size then
                l2[j] = s
                j += 1
                s = 0 
                i = 0
                list2(arr, l1, l2, i, j, s)
            else 
                if arr[i] == l1[j] then
                    s += 1
                    i += 1
                    list2(arr, l1, l2, i, j, s)
                else
                    i+=1
                    list2(arr, l1, l2, i, j, s)
                end
            end
        end
    end
    list2(arr, l1, l2, i, j, s)
end


n = STDIN.gets.to_i
arr = []
0.upto(n-1) do |i|
    arr[i] = STDIN.gets.to_i
end
l1 = arr.uniq
L2 = list2(arr, l1)
puts "#{l1}"
puts "#{L2}"
