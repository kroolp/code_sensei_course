# guessing_game.rb
number = rand(100) input = gets.chomp.to_i
if input < number puts "więcej"
elsif input > number puts "mniej"
else
puts "zgadłeś, gratulacje!" end
