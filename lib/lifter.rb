class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select { |mem| mem.lifter == self }
  end

  def all_gyms
    self.all_memberships.map { |mem| mem.gym }
  end

  def self.avg_lift_total
    lifts = self.all.map {|lifter| lifter.lift_total}

    lifts.sum(0.0) / lifts.count
  end

  def total_cost
    self.all_memberships.reduce(0) { |sum, mem| sum + mem.cost }
  end

  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end


end
