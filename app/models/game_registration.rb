class GameRegistration < ApplicationRecord
  resourcify
  
  belongs_to :user, optional: true
  belongs_to :futsal_game
  belongs_to :team, optional: true
  has_many :futsal_game_player_positions
  has_many :user_futsal_trophies, as: :linked_entity

  scope :order_by_stats, -> { order('rating desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.rating desc') }

  scope :order_by_futsal_game, -> { includes(:futsal_game).order('futsal_games.date desc') }

  def update_stats
    self.goal = self.futsal_game.goal_by_user(self.user).length
    self.assist = self.futsal_game.assist_by_user(self.user).length
    #if self.futsal_game.futsal_tournament 
    #  self.futsal_game.futsal_tournament.update_stats
    #end
        # t.integer :goalkeeper_duration
        # t.integer :player_duration
        # t.integer :substitute_duration
    self.goalkeeper_goal_against = self.futsal_game.goalkeeper_goal_against_by_user(self.user).length
    self.goalkeeper_duration = futsal_game_player_positions.where(futsal_position_id: 1).sum(:duration)
    self.substitute_duration = futsal_game_player_positions.where(futsal_position_id: 100).sum(:duration)
    self.player_duration = (self.futsal_game.duration * 60) - self.goalkeeper_duration - self.substitute_duration
    self.rating = self.calculate_rating
    self.match_result = self.futsal_game.match_result(self.team)
  end

  def calculate_rating
    player_multiplier = (player_duration > 0 ? (60*60) / player_duration : 1)
    goalkeeper_multiplier = (goalkeeper_duration > 0 ? (60*60) / goalkeeper_duration : 1)

    self.user ? self.user.calculate_rating(goal: self.goal * player_multiplier, own_goal: 0, assist: self.assist * player_multiplier, goalkeeper_goal_against: self.goalkeeper_goal_against * goalkeeper_multiplier) : 0
 end  

  def own_goal
    0
  end

  def to_s
    self.user.to_s + ' ' + self.futsal_game.to_s
  end

  def trainer_opinion
    trainer_opinion = ''
    if self.rating <= 65
        trainer_opinion = "Pas terrible, terrible ce match. Qu'est ce qui t'es arrivé ? T'es arrivé en retard ? On t'as volé tes chaussures ?"
    elsif self.rating > 95
        trainer_opinion = "Waouh quel match. Un mélange de Zidane, Ronaldo, Messi et Cyril Rool dans la même personne. Awesome !"
    elsif ((self.rating / self.user.rating) >= 0.95) && ((self.rating / self.user.rating) <= 1.05)
        trainer_opinion = "Match dans la moyenne. C'est positif, tu es constant. On peut aussi dire que tu t'es pas foulé !"
    elsif ((self.rating / self.user.rating) < 0.85)
        trainer_opinion = "Match pas terrible. Tu étais un peu le Bouna Sarr de ton équipe."
    elsif ((self.rating / self.user.rating) > 1.2)
        trainer_opinion = "Très bon match ! Si des recruteurs chinois étaient présents, tu peux commencer à apprendre le mandarin."
    elsif ((self.rating / self.user.rating) < 0.95)
         trainer_opinion = "Un peu en dessous de ton niveau habituel. Mais ca arrive, souviens toi de Guivarc'h en 1998."
    elsif ((self.rating / self.user.rating) < 1.2)
        trainer_opinion = "Bon match ! Rien d'exceptionnel, t'emballe non plus pas mais c'était plutôt plaisant de te voir à ce niveau."
    else
        trainer_opinion = "Pas d'avis"
    end
    return trainer_opinion
  end
end
