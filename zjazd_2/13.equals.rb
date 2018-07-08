class A
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def ==(other)
    @n == other.n
  end

  def to_s
    @n.to_s
  end
end

array = [A.new(2), A.new(3), A.new(5), A.new(2), A.new(3)]
puts array
puts "****************"
array.delete(A.new(3))
puts array
