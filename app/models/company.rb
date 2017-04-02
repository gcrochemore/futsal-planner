class Company < ApplicationRecord
  resourcify

  def to_s
  	name
  end
end
