class TeamStats
  attr_accessor :goals
  attr_accessor :goals_by_minute
  attr_accessor :goals_by_five_minutes

  def initialize(attributes = {})
    self.attributes = attributes

    self.goals_by_minute = Array.new
    @goals.each do |goal|
        self.goals_by_minute[(goal.time / 60).abs] = (self.goals_by_minute[(goal.time / 60).abs].nil? ? 0 : self.goals_by_minute[(goal.time / 60).abs]) + 1
    end

    self.goals_by_five_minutes = Array.new
    self.goals_by_minute.each_with_index do |nombre, index|
        self.goals_by_five_minutes[(index / 5).abs] = (self.goals_by_five_minutes[(index / 5).abs].nil? ? 0 : self.goals_by_five_minutes[(index / 5).abs]) + nombre
    end

  end

  def attributes=(attributes)
    @goals = attributes[:goals]
  end
end