class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  belongs_to :company

  has_many :goals, :class_name => :Goal,:foreign_key => "goal_id"
  has_many :assists, :class_name => :Goal,:foreign_key => "assist_id"
  has_many :game_registrations

  default_scope { order(:first_name, :last_name) }

  before_save :update_stats

  def update_stats
    self.goal = self.goals.length
    self.assist = self.assists.length
  end

  def to_s
  	first_name.to_s + " " + last_name.to_s
  end
   
end
