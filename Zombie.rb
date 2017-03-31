class Zombie
@@horde = []
@@plague_level = 10
@@max_speed = 5
@@max_strength = 8
@@default_speed = 1
@@default_strength = 3

def initialize(speed, strength)
  if speed > @@max_speed
    @speed = @@default_speed
  else
    @speed = speed
  end

  if strength > @@max_strength
    @strength = @@default_strength
  else
    @strength = strength
  end
end

def self.show_horde
  puts @@horde
end

def self.spawn
  rspeed = rand(5)
  puts = rspeed
  rstrength = rand(8)
  puts = rstrength
  riterations = rand(1..3)
  puts "Iterating #{riterations} times."
  riterations.times do
    @@horde << Zombie.new(rspeed, rstrength)
    puts "A zombie with #{rspeed} and #{rstrength} risies!"
  end
end




end
