array = Array.new(100) { rand(100) }

hash = array.group_by { |e| e % 10 }
puts hash.transform_values { |v| v.length }
# hash.transform_values! { |v| v.length }
