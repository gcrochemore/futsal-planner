class FutsalGame < ApplicationRecord
	belongs_to :team_home, :class_name => :Team,:foreign_key => "team_home_id"
	belongs_to :team_outside, :class_name => :Team,:foreign_key => "team_outside_id"
end
