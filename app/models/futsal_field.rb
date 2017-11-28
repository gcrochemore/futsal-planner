class FutsalField < ApplicationRecord
  resourcify

  def to_s
    self.name
  end
end
