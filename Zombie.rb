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

def get_speed
   return @speed
end

def get_strength
  return @strength
end

def self.level
  return plague_level
end

def self.spawn
  riterations = rand(1..@@plague_level)
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
  @@plague_level += plague_increase

end

def self.prune                                         #<<< Kills a random number of randomly selected zombies

  @@horde.shuffle!
  kill_number = rand(1..10)
  horde_number = @@horde.length
  kill_number.times do
    kill_index = rand(0..horde_number - 1)
    kill_target = @@horde[kill_index]
    @@horde.delete(kill_target)
  end
end

def outrun_zombie?
  playerspeed = rand(1..@@max_speed)
  horde_number = @@horde.length
  zselector = rand(0..horde_number - 1)
  enemy = @@horde[zselector].get_strength
  if playerspeed >= enemy
    return true
  else
    return false
  end
end

def survive_attack?
  playerstrength = rand(1..@@max_speed)
  horde_number = @@horde.length
  zselector = rand(0..horde_number - 1)
  enemy = @@horde[zselector].get_strength
  if playerstrength > enemy
    return true
  else
    return false
  end
end


end

a = rand(1..5)
puts a
b = rand(1..5)
puts b
