puts "What do you want to do?"
user_input = gets.chomp

if user_input == 'sing'
  puts "I can't sing"
elsif user_input == 'exit'
  exit(0)
else
  puts "I don't know what you mean"
end
