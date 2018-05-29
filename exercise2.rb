class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
end



def eats_at
    if @meal_time == 12
      @meal_time2 = "#{@meal_time}PM"
    elsif @meal_time > 12
      @meal_time2 = "#{@meal_time - 12} PM"
    else
      @meal_time2 = "#{@meal_time}AM"
    end
  end

  def meow
     return "My name is #{@name} and I eat at #{@meal_time2} AM."
  end

end

  felix = Cat.new('felix', 'fish', 16)
  garfield = Cat.new('Garfield', 'milk', 6)

  puts felix.eats_at
  puts garfield.eats_at
  puts felix.meow
  puts garfield.meow
