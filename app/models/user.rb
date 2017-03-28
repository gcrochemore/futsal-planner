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

  def to_s
  	first_name + last_name
  end
end
