module Wild
  class Dog
    def to_s
      "super dog"
    end
  end
end

module Home
  module Room
    class Dog
      def to_s
        "extra dog"
      end
    end

    class Cat
      def to_s
        "cat"
      end
    end
  end
end

puts Wild::Dog.new
puts Home::Room::Dog.new
puts Home::Room::Cat.new
