require 'haar_joke'

File.open("jokes.txt", "w") do |file|
  10.times do
    joke = HaarJoke.create_joke

    file.puts joke
  end
end
