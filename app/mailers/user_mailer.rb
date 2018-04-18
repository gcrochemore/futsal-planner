class UserMailer < ActionMailer::Base
  add_template_helper(ApplicationHelper)
  
  default from: "no-reply@myapp.com"

  def match_update(game_registration)
    @futsal_game = game_registration.futsal_game
    @game_registration = game_registration
    mail(:to => game_registration.user.email, :subject => "Futsal Planner : " + @futsal_game.to_s_team_and_score + " | Ton dernier match est en ligne !")
  end

  def teams_is_online(game_registration)
    @futsal_game = game_registration.futsal_game
    @game_registration = game_registration
    mail(:to => game_registration.user.email, :subject => "Futsal Planner : " + @futsal_game.to_s_with_only_hour + " | Les équipes sont en ligne !")
  end

  def link_third_part(provider, uid, email, name)
    @provider = provider
    @uid = uid
    @email = email
    @name = name
    mail(:to => "guillaume.crochemore@gmail.com", :subject => "Un utilisateur veut lier son compte a FutsalPlanner")
  end
end