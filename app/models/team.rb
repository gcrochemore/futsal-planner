class Team < ApplicationRecord
  resourcify

  validates :name, presence: true, allow_blank: false
  
  belongs_to :company, optional: true

  def to_s
  	name
  end	
end
