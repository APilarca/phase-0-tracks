#defiens class Puppy
class Puppy

#creates fetch feature
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
#trains puppy to bark on command asmany times as 
#desired
  def speak(times)
  	puts "Bark!" * times
  end
  
#trains puppy to roll it's body
  def roll_over
  	puts "rolls over"
  end
  
#converts known age in human years to true age in
#dog years
  def dog_years(age)
  	age = age * 7
  	puts "Age in dogs years is #{age}"
  end
  
#a very sophisticated trick that allows dog to pretend it is dead
  def play_dead
  	puts "Falls to floor with tongue hanging out"
  end

end


sprinkles = Puppy.new

sprinkles.fetch("ball")
sprinkles.speak(3)
sprinkles.roll_over
sprinkles.dog_years(3)
sprinkles.play_dead


#define new class Bird

class Bird
  def initialize
    puts "initializing your bird"
  end
  
#adds speaking function
  def tweet
    puts "tweet tweet"
  end
  
#bird learns how to fly by flapping it's wings
  def fly
    puts "The bird flaps it's wings"
  end
end

bird_chain = []

#a whole roost of 50 birds will be created
50.times do
  bird_chain.push(Bird.new)
end

#every bird in roost(array) is taught to speak
#and how to flap wings and fly
bird_chain.each do |bird|
  bird.tweet
  bird.fly
end