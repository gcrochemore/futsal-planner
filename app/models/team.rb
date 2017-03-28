class Team < ApplicationRecord
  belongs_to :company

  def to_s
  	name
  end	
end
