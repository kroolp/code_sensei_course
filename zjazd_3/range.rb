def range(from, to)
  yield 2
end

range(3, 10) do |n|
  puts n * 2
end

File.open("test.txt", "w") do |file|

end
