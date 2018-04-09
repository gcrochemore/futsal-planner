class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2, :azure_oauth2, :twitter, :linkedin]
  belongs_to :company, optional: true
  belongs_to :futsal_position, optional: true
  belongs_to :nationality

  has_many :goals, :class_name => :Goal,:foreign_key => "goal_id"
  has_many :assists, :class_name => :Goal,:foreign_key => "assist_id"
  has_many :goalkeeper_goals_against, :class_name => :Goal,:foreign_key => "goalkeeper_id"
  has_many :game_registrations
  has_many :user_futsal_trophies
  has_many :futsal_tournament_player_registrations

  default_scope { order(:first_name, :last_name) }

  GOAL_NUMBER = 18.0
  RATING_MINI = 65.0
  RATING_MAXI = 97.0
  MATCH_MINI = 3
  MULTIPLIER_IF_MATCH_MINI = 0.85
  MATCHS_FOR_LAST_MATCH_AVERAGE = 3

  def self.from_omniauth_facebook(auth)
    user = where(facebook_uid: auth.uid).first
    if user.nil?
        UserMailer.link_third_part('facebook', auth.uid, auth.info.email, auth.info.name).deliver
    end
    user
  end

  def self.from_omniauth_google(access_token)
    data = access_token.info
    user = User.where(google_email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    # unless user
    #     user = User.create(name: data['name'],
    #        email: data['email'],
    #        password: Devise.friendly_token[0,20]
    #     )
    # end
    user
  end

  def self.from_omniauth_linkedin(access_token)
    data = access_token.info
    user = User.where(linkedin_email: data['email']).first
    user
  end

  def self.from_omniauth_twitter(data)
    user = User.where(twitter_uid: data['uid']).first
    user
  end

  def apply_omniauth_facebook(auth)
    update_attributes(
      facebook_uid: auth.uid
    )
  end

  def has_facebook_linked?
    self.facebook_uid.present?
  end

  def has_stats
    !(self.rating.nil? || self.rating.to_f.nan?)
  end

  def goals_by_assist
    self.goals.group("assist_id").order("count_all desc").count
  end

  def assists_by_goals
    self.assists.group("goal_id").order("count_all desc").count
  end

  def goalkeeper_goals_against_by_goals
    self.goalkeeper_goals_against.group("goal_id").order("count_all desc").count
  end

  def game_registrations_common
    GameRegistration.where("futsal_game_id IN (?) AND user_id <> ?", self.game_registrations.pluck(:futsal_game_id), self.id).group("user_id").order("count_all desc").count
  end

  def game_registrations_against
    GameRegistration.where("game_registrations.futsal_game_id IN (?) AND game_registrations.user_id <> ?", self.game_registrations.pluck(:futsal_game_id), self.id).joins("INNER JOIN (SELECT * FROM game_registrations) gr ON game_registrations.futsal_game_id = gr.futsal_game_id AND game_registrations.team_id <> gr.team_id AND gr.user_id = " + self.id.to_s).group("user_id").order("count_all desc").count
  end

  def game_registrations_with
    GameRegistration.where("game_registrations.futsal_game_id IN (?) AND game_registrations.user_id <> ?", self.game_registrations.pluck(:futsal_game_id), self.id).joins("INNER JOIN (SELECT * FROM game_registrations) gr ON game_registrations.futsal_game_id = gr.futsal_game_id AND game_registrations.team_id = gr.team_id AND gr.user_id = " + self.id.to_s).group("user_id").order("count_all desc").count
  end

  def update_stats
    self.goal = self.not_own_goals.length
    self.own_goal = self.own_goals.length

    self.goal_with_assist = 0
    self.goal_without_assist = 0

    self.assist = self.assists.length

    self.goalkeeper_goal_against = self.goalkeeper_goals_against.length

    self.update_match_time

    self.goalkeeper_goal_against_average = (self.goalkeeper_goal_against.to_f / self.goalkeeper_duration.to_f).to_f * 60 * 60

    self.match = self.game_registrations.length
    self.match_with_stats = (self.match_time / 60.0)

    self.goal_average_by_match = (self.goal.to_f / (self.player_duration.to_f / 60)) * 60
    self.own_goal_average_by_match = self.own_goal.to_f / self.match_with_stats

    self.goal_percent_by_match = 0

    self.assist_average_by_match = (self.assist.to_f / (self.player_duration.to_f / 60)) * 60

    self.assist_percent_by_match = 0
    
    self.last_result = 0
    self.goal_mark = 0
    self.assist_mark = 0
    self.victory_mark = 0
    self.rating = self.calculate_rating
    self.rating = (self.match_with_stats < User::MATCH_MINI ? self.rating * User::MULTIPLIER_IF_MATCH_MINI : self.rating)
    self.rating = (self.rating < User::RATING_MINI ? User::RATING_MINI : self.rating)
  
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
      (match_result == 1) ? self.victory = self.victory + 1 : (match_result == -1) ? self.lose = self.lose + 1 : self.draw = self.draw + 1
      self.games_results = self.games_results + ((match_result == 1) ? 'V' : (match_result == -1) ? 'D' : 'N')
    end

    self.last_matchs_rating = self.calculate_last_matchs_rating

    self.match_goal_difference = self.match_goal_for - self.match_goal_against

    self.victory_percentage = self.victory.to_f / self.match.to_f

    self.average_match_rating = self.calculate_average_match_rating

    self.average_rating = ((self.average_match_rating ? self.average_match_rating : 65.0) + (self.rating ? self.rating : 65.0)) / 2.0
  end

  def calculate_average_match_rating
    if self.game_registrations.length > 0
      self.game_registrations.sum(:rating) / self.game_registrations.length
    else
      return 65.0
    end
  end

  def calculate_last_matchs_rating
    (self.last_match_with_stats.empty? ? 12 : self.last_match_with_stats.limit(User::MATCHS_FOR_LAST_MATCH_AVERAGE).to_a.sum(&:rating) / User::MATCHS_FOR_LAST_MATCH_AVERAGE)
  end

  def last_match_with_stats
    self.game_registrations.futsal_games_with_stats.order_by_futsal_game
  end

  def calculate_rating(futsal_position: self.futsal_position, goal: self.goal_average_by_match, own_goal: self.own_goal_average_by_match, assist: self.assist_average_by_match, goalkeeper_goal_against: self.goalkeeper_goal_against_average)
    rating = (User::RATING_MINI + ((goal - own_goal) * futsal_position.average_goal_multiplier) + (assist * futsal_position.average_assist_multiplier) + ((goalkeeper_goal_against > 0 && goalkeeper_goal_against < 100) ? (User::GOAL_NUMBER - goalkeeper_goal_against.to_f).to_f * futsal_position.average_goal_against_multiplier : 0))
    (rating < User::RATING_MAXI ? rating : User::RATING_MAXI)
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
    self.games_results = self.games_results.to_s
    '<table class="table table-hover table-sm table-bordered"><tr><th>Note : </th><td>' + self.rating.andand.round(2).to_s + '</td>' +
    '<th>Niveau des matchs : </th><td>' + self.match_rating.andand.round(2).to_s + '</td></tr>' +
    '<tr><th>Forme : </th><td>' + self.last_matchs_rating.to_s + '</td><th>Note/match : </th><td>' + self.average_match_rating.andand.round(2).to_s + '</td></tr>' +
    '<tr><td colspan="2">' + self.match_goal_for.to_s + 'BP ' + self.match_goal_against.to_s + 'BC : ' + self.match_goal_difference.to_s + '</td>' +
    '<td colspan="2">' + self.games_results[0..15].to_s + (games_results.length > 15 ? '...' : '') + '</td></tr>' +
    '<tr><td colspan="2">' + self.victory.to_s + 'V ' + self.draw.to_s + 'N ' + self.lose.to_s + 'D</td>' +
    '<td colspan="2">' + (self.victory_percentage.to_f * 100).round(2).to_s + '% victoires</td></tr></table>'+
    '<strong>Temps de jeu :</strong><br>' +
    self.match.to_s + ' match(s) - ' + self.match_with_stats.andand.round(2).to_s + ' avec stats<br>' +
    self.match_time.to_s + ' minutes jouées<br>' +
    '<i class="fa fa-hand-stop-o" aria-hidden="true"></i> ' + (self.goalkeeper_duration.to_f/60).round.to_s + 'min ' +
    '<i class="fa fa-user" aria-hidden="true"></i> ' + (self.player_duration.to_f/60).round.to_s + ' min ' +
    '<i class="fa fa-refresh" aria-hidden="true"></i> ' + (self.substitute_duration.to_f/60).round.to_s + ' min <br>' +
    '<strong>Stats :</strong><br>' +
    '<table class="table table-hover table-sm table-bordered"><tr><td><i class="fa fa-futbol-o" aria-hidden="true"></i> ' + self.goal.to_s + ' (' + self.goal_average_by_match.to_f.round(2).to_s + '/match) </td>' +
    '<td>CSC ' + self.own_goal.to_s + ' (' + self.own_goal_average_by_match.to_f.round(2).to_s + '/match) </td></tr>' +
    '<tr><td><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> ' + self.assist.to_s + ' (' + self.assist_average_by_match.to_f.round(2).to_s + '/match) </td>' +
    '<td><i class="fa fa-sign-in" aria-hidden="true"></i> ' + self.goalkeeper_goal_against.to_s + ' (' + self.goalkeeper_goal_against_average.andand.round(2).to_s + '/match)</td></tr>' +
    '</table>'

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
    (game_registrations.map{|a| (a.futsal_game.rating ? a.futsal_game.rating : 65 )}.sum / (game_registrations.length.nonzero? || 1)).round
  end  

  def update_all_user_stats
    self.update_game_registrations_stats
    self.update_stats
    self.update_all_stats
    self.save
  end

  def own_goals
    self.goals.where(own_goal: true)
  end

  def not_own_goals
    self.goals.where(own_goal: false)
  end

  def update_trophies
    UserFutsalTrophy.where('user_id = ?', self.id).delete_all

    # Dispute 5 matchs avec stats  5.0 Dispute 5 matchs avec stats
    if self.match_with_stats.round(2) >= 5
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 1
      user_futsal_trophy.linked_entity = self
      user_futsal_trophy.validation_date = DateTime.now
      user_futsal_trophy.save
    end

    # Dispute un tournoi
    if self.futsal_tournament_player_registrations.length > 0 
      futsal_tournament = self.futsal_tournament_player_registrations.first.futsal_tournament
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 2
      user_futsal_trophy.linked_entity = futsal_tournament
      user_futsal_trophy.validation_date = futsal_tournament.date
      user_futsal_trophy.save
    end

    self.game_registrations.each do |game_registration|      

      # Plus de 1/6 du match dans les buts et moins de 1buts/6min
      if game_registration.futsal_game.has_stat && 
          ((game_registration.futsal_game.duration / 6.0) < (game_registration.goalkeeper_duration/60.0)) &&
          ((game_registration.goalkeeper_goal_against.to_f / (game_registration.goalkeeper_duration/60.0).to_f) < 0.125)
        user_futsal_trophy = UserFutsalTrophy.new
        user_futsal_trophy.user_id = self.id
        user_futsal_trophy.futsal_trophy_id = 3
        user_futsal_trophy.linked_entity = game_registration
        user_futsal_trophy.validation_date = game_registration.futsal_game.date + (game_registration.futsal_game.duration * 60)
        user_futsal_trophy.save
      end
    end 

    # Prend un but par un joueur avec < 1 buts/matchs 
    self.goal_against_to_user_with_lower_goal.each do |goal|
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 4
      user_futsal_trophy.linked_entity = goal
      user_futsal_trophy.validation_date = goal.futsal_game.date + goal.time
      user_futsal_trophy.save
    end 

    # Marque un but sur une passe dé d'un joueur < 1 
    self.goal_to_user_with_lower_assit.each do |goal|
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 5
      user_futsal_trophy.linked_entity = goal
      user_futsal_trophy.validation_date = goal.futsal_game.date + goal.time
      user_futsal_trophy.save
    end 

    # Fais une passe dé a un joueur avec < 2 buts/matchs 
    self.assit_to_user_with_lower_goal.each do |goal|
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 6
      user_futsal_trophy.linked_entity = goal
      user_futsal_trophy.validation_date = goal.futsal_game.date + goal.time
      user_futsal_trophy.save
    end  

    # Homme du match  10.0  Homme du match    

    # Double double (5 buts/5 passes dé)  20.0  Double double (5 buts/5 passes dé)
    self.game_registrations.where("goal > ? AND assist > ?", 4, 4).each do |game_registration|
      user_futsal_trophy = UserFutsalTrophy.new
      user_futsal_trophy.user_id = self.id
      user_futsal_trophy.futsal_trophy_id = 8
      user_futsal_trophy.linked_entity = game_registration
      user_futsal_trophy.validation_date = game_registration.futsal_game.date + (game_registration.futsal_game.duration * 60)
      user_futsal_trophy.save
    end

    # Blessure  -5.0  Blessure
  end

  def goal_against_to_user_with_lower_goal
    Goal.where('goalkeeper_id = ? AND goal_id in (?) AND own_goal = ?', self.id, User.where("goal_average_by_match < 1").pluck(:id), false)
  end

  def goal_to_user_with_lower_assit
    Goal.where('goal_id = ? AND assist_id in (?) AND own_goal = ?', self.id, User.where("assist_average_by_match < 1").pluck(:id), false)
  end

  def assit_to_user_with_lower_goal
    Goal.where('assist_id = ? AND goal_id in (?) AND own_goal = ?', self.id, User.where("goal_average_by_match < 1").pluck(:id), false)
  end
end