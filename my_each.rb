def my_each(arr)
  if block_given?
    i = 0
    while i < arr.length
      yield arr[i]
      i+=1
    end
    arr
  end
end
collection = [1, 2, 3, 4]
my_each(collection) do |i|
  puts "\##{i}"
end
# This should output:
# 1
# 2
# 3
# 4
# and return:
# #=> [1, 2, 3, 4]
