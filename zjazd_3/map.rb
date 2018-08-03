def map(array)
  new_array = []

  array.each do |e|
    new_array << yield(e)
  end

  new_array
end

print map([2,3,4]) do |e|
  e * 3
end
