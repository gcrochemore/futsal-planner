class Team < ApplicationRecord
  resourcify

  validates :name, presence: true, allow_blank: false
  
  belongs_to :company

  def to_s
  	name
  end	
end
