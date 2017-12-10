class FutsalTrophy < ApplicationRecord
  has_many :user_futsal_trophies

  def to_s
    self.name.to_s
  end
end
