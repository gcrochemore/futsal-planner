class FutsalPosition < ApplicationRecord
  has_many :users

  scope :not_substitute, -> { where("id < ? ", 100) }

  def to_s
    name
  end
end
