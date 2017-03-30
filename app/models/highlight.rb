class Highlight < ApplicationRecord
  belongs_to :highlight_type
  belongs_to :futsal_game
  belongs_to :team
  belongs_to :author, :class_name => :User,:foreign_key => "author_id"
  belongs_to :victim, :class_name => :User,:foreign_key => "victim_id"
end
