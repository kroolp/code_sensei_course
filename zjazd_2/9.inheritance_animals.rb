class Animal
	def move
		puts 'Moving forward'
	end

	def eat
		puts 'Eating'
	end

	def drink
		puts 'Drinking water'
	end

	def give_sound
	end
end


class Cat < Animal

	def scratch
		puts "I'm a cat, I stratch"
	end

	def give_sound
		puts "Miau!"
	end
end

class Dog < Animal

	def bring
		puts 'Bringing a stick'
	end

	def give_sound
		puts 'Woof!'
	end

end

animals = [Dog.new, Dog.new, Cat.new, Dog.new]

animals.each { |animal| animal.give_sound }
