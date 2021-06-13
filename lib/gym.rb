class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select {|mem| mem.gym == self}
  end

  def all_lifters
   self.all_memberships.map {|mem| mem.lifter} 
  end

  def all_lifters_names
    self.all_lifters.map {|lifter| lifter.name}
  end

  def combined_lift_total
    self.all_lifters.reduce(0) { |sum, lifter| sum + lifter.lift_total}
  end


end
