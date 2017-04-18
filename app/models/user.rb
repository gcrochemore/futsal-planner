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

  def goal_average
    number_of_matchs = self.game_registrations_with_stats
    moyenne_goals = self.goal.to_f / number_of_matchs.to_f
    moyenne_goals.round(2).to_s
  end 

  def assist_average
    number_of_matchs = self.game_registrations_with_stats
    moyenne_assists =  self.assist.to_f / number_of_matchs.to_f
    moyenne_assists.round(2).to_s
  end 

  def display_stats
    number_of_matchs = self.game_registrations_with_stats
    moyenne_goals = self.goal.to_f / number_of_matchs.to_f
    moyenne_assists =  self.assist.to_f / number_of_matchs.to_f
    'Moyenne par match : <i class="fa fa-futbol-o" aria-hidden="true"></i> ' + moyenne_goals.round(2).to_s + '  <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> ' + moyenne_assists.round(2).to_s
  end

  def game_registrations_with_stats
    compteur = 0
    self.game_registrations.each do |game_registration|
      (game_registration.futsal_game.video_link.nil? || game_registration.futsal_game.video_link == "") ? "" : compteur = compteur + 1
    end
    compteur
  end

  def to_s
  	first_name.to_s + " " + last_name.to_s
  end
   
end
