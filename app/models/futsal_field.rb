class FutsalField < ApplicationRecord
  resourcify

  to_s
    self.name
  end
end
