# content = File.read('/etc/hosts')
# puts content

file = File.open("/etc/hosts")
file.each do |line|
  next if line[0] == "#"
  puts line
end
file.close
