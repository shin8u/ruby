def chet(arr)
    def chet(arr, i)
        if i == arr.size then
            return arr
        else 
            if i % 2 == 0 then
                puts"#{arr[i]}"
            end
            i+=1
            chet(arr,i)
        end
    end
    i = 0
    chet(arr, i)
end  

def nechet(arr)
    def nechet(arr, i)
        if i == arr.size then
            return arr
        else 
            if i % 2 != 0 then
                puts"#{arr[i]}"
            end
            i+=1
            nechet(arr, i)
        end
    end
    i = 0
    nechet(arr, i)
end    


n = STDIN.gets.to_i
arr = []
0.upto(n-1) do |i|
    arr[i] = STDIN.gets.to_i
end
chet(arr)
nechet(arr)
