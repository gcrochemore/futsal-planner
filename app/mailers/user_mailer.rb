class UserMailer < ActionMailer::Base
  add_template_helper(ApplicationHelper)
  
  default from: "no-reply@myapp.com"

  def match_update(game_registration)
    @futsal_game = game_registration.futsal_game
    @game_registration = game_registration
    mail(:to => game_registration.user.email, :subject => "Futsal Planner : " + @futsal_game.to_s_team_and_score + " | Ton dernier match est en ligne !")
  end
end