# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Kevin", 100)
l2 = Lifter.new("Kade", 200)
l3 = Lifter.new("The Rock", 1000)

g1 = Gym.new("Gold's")
g2 = Gym.new("Payne Whitney")

Membership.new(100, l1, g1)
Membership.new(200, l1, g2)
Membership.new(200, l2, g2)
Membership.new(120, l3, g1)

l2.new_membership(g1, 300)

binding.pry

puts "Gains!"
