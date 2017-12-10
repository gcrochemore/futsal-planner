class UserFutsalTrophy < ApplicationRecord
  belongs_to :user
  belongs_to :futsal_trophy
  belongs_to :linked_entity, polymorphic: true

  default_scope { order('validation_date desc') }
end
