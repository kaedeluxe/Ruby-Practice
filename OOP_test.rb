
class GoodDog
  attr_accessor :name, :height, :weight
  
  def initialize(n, w, h)
    @name = n
    @weight = w
    @height = h
  end

  def change_info(n, w, h)
    self.name = n
    self.weight = w
    self.height = h
  end
  
  def speak
    "#{name} says hewo"
  end
end

sparky = GoodDog.new('Sparky', '12 sausages', '15 donuts')

puts sparky.speak
sparky.name = 'Doggo'
puts sparky.weight
sparky.change_info(@name,'13 eiffel towers',@height)
puts sparky.weight