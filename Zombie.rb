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

def self.all
  puts @@horde
end

def self.spawn
  riterations = rand(4..5)
  horde_buffer = []
  puts "Iterating #{riterations} times."
    riterations.times do
    rspeed = rand(1..5)
    rstrength = rand(1..8)
    puts = rstrength
    puts = rspeed
    horde_buffer << Zombie.new(rspeed, rstrength)
  end
  @@horde << horde_buffer
end

def self.increase_plague
  plague_increase = rand(0..2)

end




end

a = rand(1..5)
puts a
b = rand(1..5)
puts b
