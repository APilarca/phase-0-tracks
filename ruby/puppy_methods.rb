class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(times)
  	puts "Bark!" * times
  end
  
  def roll_over
  	puts "rolls over"
  end
  
  def dog_years(age)
  	age = age * 7
  	puts "Age in dogs years is #{age}"
  end
  
  def play_dead
  	puts "Falls to floor with tongue hanging out"
  end

end
ball = "ball"
times = 3

sprinkles = Puppy.new

sprinkles.fetch(ball)
sprinkles.speak(3)
sprinkles.roll_over
sprinkles.dog_years(3)
sprinkles.play_dead
