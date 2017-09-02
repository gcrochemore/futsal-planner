class AdminController < ApplicationController
  authorize_resource :class => false

  def show_db_view

  end

  def export_db 
    models = ActiveRecord::Base.descendants

    models = models.select do |model|
               (model.to_s != 'ActiveRecord::SchemaMigration') && \
                model.table_exists? && \
                model.exists?
             end

    export = ""
    models.each do |model| 
      export = export + SeedDump.dump(model, exclude: [])
    end

    send_data export, type: 'text', filename: 'FUTSAL-PLANNER-export-db-' + DateTime.now.strftime("%Y%m%d%H%M%S") + '.txt'
  end

  def create_seeds
    models = [FutsalField, FutsalTournament, FutsalGame, Goal, GoalMark, GameRegistration, FutsalGamePlayerPosition, 
              HighlightType, Highlight, FutsalTournamentPlayerRegistration, FutsalTournamentTeamRegistration]

    export = "class InitializeData < ActiveRecord::Migration[5.0]
    def change

"

    models.each do |model| 
      export += SeedDump.dump(model, exclude: [])
    end

    export += "
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
  end
end"

    send_data export, type: 'text', filename: DateTime.now.strftime("%Y%m%d%H%M%S") + '_initialize_matchs_datas.rb'
  end
end
