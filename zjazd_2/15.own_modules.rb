module Collar
  def pull
    puts "Pulling..."
  end
end

module TrackingChip
  def get_tracking_chip
    @tracking_chip ||= rand(100)
  end
end

class Dog
  include Collar
  include TrackingChip
end

dog = Dog.new
puts dog.get_tracking_chip
puts dog.get_tracking_chip
puts dog.get_tracking_chip
