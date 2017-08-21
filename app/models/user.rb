class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  belongs_to :company, optional: true
  belongs_to :futsal_position, optional: true

  has_many :goals, :class_name => :Goal,:foreign_key => "goal_id"
  has_many :assists, :class_name => :Goal,:foreign_key => "assist_id"
  has_many :goalkeeper_goals_against, :class_name => :Goal,:foreign_key => "goalkeeper_id"
  has_many :game_registrations

  default_scope { order(:first_name, :last_name) }

  def update_stats
    self.goal = self.goals.length

    self.goal_with_assist = 0
    self.goal_without_assist = 0

    self.assist = self.assists.length

    self.goalkeeper_goal_against = self.goalkeeper_goals_against.length

    self.update_match_time

    self.goalkeeper_goal_against_average = (self.goalkeeper_duration.to_f / self.goalkeeper_goal_against.to_f).to_f / 60

    self.match = self.game_registrations.length
    self.match_with_stats = (self.match_time / 60.0)

    self.goal_average_by_match = self.goal.to_f / self.match_with_stats.to_f

    self.goal_percent_by_match = 0

    self.assist_average_by_match = self.assist.to_f / self.match_with_stats.to_f

    self.assist_percent_by_match = 0
    
    self.last_result = 0
    self.goal_mark = 0
    self.assist_mark = 0
    self.victory_mark = 0
    self.rating = 65 + (self.goal_average_by_match * self.futsal_position.average_goal_multiplier) + (self.assist_average_by_match * self.futsal_position.average_assist_multiplier);
    self.rating = (self.match_with_stats < 5 ? self.rating * 0.85 : self.rating)
    self.rating = (self.rating < 65 ? 65 : self.rating)
  
    self.match_goal_for = 0
    self.match_goal_against = 0
    self.games_results = ''

    self.victory = 0
    self.lose = 0
    self.draw = 0

    self.game_registrations.order_by_futsal_game.each do |game_registration|
      score_pour = (game_registration.futsal_game.team_home == game_registration.team) ? game_registration.futsal_game.score_home :  game_registration.futsal_game.score_outside
      score_contre = (game_registration.futsal_game.team_outside == game_registration.team) ? game_registration.futsal_game.score_home :  game_registration.futsal_game.score_outside
      self.match_goal_for = self.match_goal_for + (score_pour ? score_pour : 0)
      self.match_goal_against = self.match_goal_against + (score_contre ? score_contre : 0)
      match_result = game_registration.futsal_game.match_result(game_registration.team)
      (match_result == 'V') ? self.victory = self.victory + 1 : (match_result == 'D') ? self.lose = self.lose + 1 : self.draw = self.draw + 1
      self.games_results = self.games_results + match_result
    end

    self.match_goal_difference = self.match_goal_for - self.match_goal_against

    self.victory_percentage = self.victory.to_f / self.match.to_f
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
    'Note : ' + self.rating.to_s + '<br><strong>Moyenne par match</strong><br>' + 
      self.match_goal_for.to_s + 'BP ' + self.match_goal_against.to_s + 'BC : ' + self.match_goal_difference.to_s + '<br>' + 
      self.match.to_s + ' match(s) - ' + self.match_with_stats.to_s + ' avec stats<br>' + 
      self.match_time.to_s + ' minutes jouées<br>' +
      self.games_results[0..10].to_s + (games_results.length > 10 ? '...' : '') + '<br>' + 
      self.victory.to_s + 'V ' + self.draw.to_s + 'N ' + self.lose.to_s + 'D<br>' + 
      (self.victory_percentage.to_f * 100).round(2).to_s + '% victoires <br>'+
      'Gardien : ' + (self.goalkeeper_duration.to_f/60).round.to_s + 'min / ' + self.goalkeeper_goal_against.to_s + 'BC ' + 
      '(1 but / ' + self.goalkeeper_goal_against_average.andand.round(2).to_s + ' min) <br>' +
      'Joueur : ' + (self.player_duration.to_f/60).round.to_s + ' min <br>' +
      'Remp. : ' + (self.substitute_duration.to_f/60).round.to_s + ' min <br>' +
      '<i class="fa fa-futbol-o" aria-hidden="true"></i> ' + self.goal.to_s + ' (' + self.goal_average_by_match.to_f.round(2).to_s + '/match) <br>
      <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> ' + self.assist.to_s + ' (' + self.assist_average_by_match.to_f.round(2).to_s + '/match)'
  end

  def update_match_time
    self.match_time = 0
    self.goalkeeper_duration = 0
    self.player_duration = 0
    self.substitute_duration = 0
    self.game_registrations.each do |game_registration|
      if game_registration.futsal_game.has_stat 
        self.match_time = self.match_time + game_registration.futsal_game.duration.to_i
        self.goalkeeper_duration = self.goalkeeper_duration + game_registration.goalkeeper_duration.to_i
        self.player_duration = self.player_duration + game_registration.player_duration.to_i
        self.substitute_duration = self.substitute_duration + game_registration.substitute_duration.to_i
      end
    end
  end

  def to_s
  	first_name.to_s + " " + last_name.to_s
  end

  def update_game_registrations_stats
    game_registrations.map{|a| a.update_stats}
  end 

  def match_rating
    (game_registrations.map{|a| (a.futsal_game.rating ? a.futsal_game.rating : 65 )}.sum / game_registrations.length).round
  end  

  def update_all_user_stats
    self.update_game_registrations_stats
    self.update_stats
    self.update_all_stats
    self.save
  end  
end