def local_min(arr, i)
   if arr[i] < arr[i+1] and arr[i] < arr[i-1] then 
        return true
   else 
        return false
   end
end    

n = STDIN.gets.to_i
arr = []
0.upto(n-1) do |i|
    arr[i] = STDIN.gets.to_i
end
puts'введите индекс'
index = STDIN.gets.to_i
puts"#{local_min(arr, index)}"
