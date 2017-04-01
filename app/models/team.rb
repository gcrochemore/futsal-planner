class Team < ApplicationRecord
  resourcify
  
  belongs_to :company

  def to_s
  	name
  end	
end
