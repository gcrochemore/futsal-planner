class InitializeData < ActiveRecord::Migration[5.0]
  def change
    GameRegistration.all.each do |game_registration|
      game_registration.update_stats
      game_registration.save
    end

    FutsalTournamentPlayerRegistration.all.each do |futsal_tournament_player_registration|
      futsal_tournament_player_registration.update_stats
      futsal_tournament_player_registration.save
    end

    FutsalTournamentTeamRegistration.all.each do |futsal_tournament_team_registration|
      futsal_tournament_team_registration.update_stats
      futsal_tournament_team_registration.save
    end

    FutsalTournament.all.each do |futsal_tournament|
      futsal_tournament.update_stats
      futsal_tournament.save
    end

    User.all.each do |user|
      user.update_stats
      user.save
    end

    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end
end