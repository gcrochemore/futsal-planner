class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  belongs_to :company
  belongs_to :futsal_position

  has_many :goals, :class_name => :Goal,:foreign_key => "goal_id"
  has_many :assists, :class_name => :Goal,:foreign_key => "assist_id"
  has_many :game_registrations

  default_scope { order(:first_name, :last_name) }
  before_save :update_stats

  def update_stats
    self.goal = self.goals.length

    self.goal_with_assist = 0
    self.goal_without_assist = 0

    self.assist = self.assists.length


    self.match = self.game_registrations.length
    self.match_with_stats = self.game_registrations_with_stats

    self.goal_average_by_match = self.goal.to_f / self.match_with_stats.to_f

    self.goal_percent_by_match = 0

    self.assist_average_by_match = self.assist.to_f / self.match_with_stats.to_f

    self.assist_percent_by_match = 0
    
    self.victory = 0
    self.draw = 0
    self.lose = 0
    self.victory_percentage = 0
    self.last_result = 0
    self.goal_mark = 0
    self.assist_mark = 0
    self.victory_mark = 0
    self.rating = 65 + self.goal_average_by_match + (self.assist_average_by_match * 4);
    self.rating = (self.match_with_stats < 5 ? self.rating * 0.9 : self.rating)
    self.rating = (self.rating < 65 ? 65 : self.rating)
  end

  def update_all_stats
    self.goal = self.goals.length
    self.assist = self.assists.length    
  end

  def goal_average
    number_of_matchs = self.match_with_stats
    moyenne_goals = self.goal.to_f / number_of_matchs.to_f
    moyenne_goals.round(2).to_s
  end 

  def assist_average
    number_of_matchs = self.match_with_stats
    moyenne_assists =  self.assist.to_f / number_of_matchs.to_f
    moyenne_assists.round(2).to_s
  end 

  def display_stats
    number_of_matchs = self.match_with_stats.to_i
    moyenne_goals = self.goal_average_by_match.to_f
    moyenne_assists =  self.assist_average_by_match.to_f
    resultats = ""
    victoire = 0
    nul = 0
    defaite = 0
    but_pour = 0
    but_contre = 0
    number_total_of_matchs = self.match.to_i
    # TODO : store in db for improve show rapidity
    #self.game_registrations.order_by_futsal_game.each do |game_registration|
    #  score_pour = (game_registration.futsal_game.team_home == game_registration.team) ? game_registration.futsal_game.score_home :  game_registration.futsal_game.score_outside
    #  score_contre = (game_registration.futsal_game.team_outside == game_registration.team) ? game_registration.futsal_game.score_home :  game_registration.futsal_game.score_outside
    #  but_pour = but_pour + (score_pour ? score_pour : 0)
    #  but_contre = but_contre + (score_contre ? score_contre : 0)
    #  match_result = game_registration.futsal_game.match_result(game_registration.team)
    #  (match_result == 'V') ? victoire = victoire + 1 : (match_result == 'D') ? defaite = defaite + 1 : nul = nul + 1
    #  resultats = resultats + match_result
    #end

    victoire_percent = victoire.to_f / number_total_of_matchs.to_f

    '<strong>Moyenne par match</strong><br>' + 
      but_pour.to_s + 'BP ' + but_contre.to_s + 'BC : ' + (but_pour - but_contre).to_s + '<br>' + 
      self.match.to_s + ' match(s) - ' + self.match_with_stats.to_s + ' avec stats<br>' + 
      resultats + '<br>' + victoire.to_s + 'V ' + nul.to_s + 'N ' + defaite.to_s + 'D<br>' + 
      (victoire_percent.round(2) * 100).to_s + '% victoires <br>
      <i class="fa fa-futbol-o" aria-hidden="true"></i> ' + self.goal.to_s + ' (' + self.goal_average_by_match.to_f.round(2).to_s + '/match) <br>
      <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> ' + self.assist.to_s + ' (' + self.assist_average_by_match.to_f.round(2).to_s + '/match)'
  end

  def game_registrations_with_stats
    compteur = 0
    self.game_registrations.each do |game_registration|
      game_registration.futsal_game.has_stat ? compteur = compteur + game_registration.futsal_game.duration : ""
    end
    (compteur / 60.0).round 
  end

  def to_s
  	first_name.to_s + " " + last_name.to_s
  end
   
end
