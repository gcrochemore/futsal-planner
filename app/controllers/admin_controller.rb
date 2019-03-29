class AdminController < ApplicationController
  authorize_resource :class => false

  def show
    @goals_without_goalkeeper = Goal.where(goalkeeper_id: nil)
    @goals_without_goal_with_goalkeeper = Goal.where(goal_id: nil).where("goalkeeper_id IS NOT NULL")
    @goals_without_goal = Goal.where(goal_id: nil)
  end

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
    models = [FutsalField, FutsalTournament, FutsalGame, Goal, GoalMark, GameRegistration, FutsalGamePlayerPositionChange,
              FutsalGamePlayerPosition, HighlightType, Highlight, FutsalTournamentPlayerRegistration,
              FutsalTournamentTeamRegistration, FutsalGameInvitation, FutsalTrophy, UserFutsalTrophy]

    export = "class InitializeMatchsData < ActiveRecord::Migration[5.0]
  def change
"

    models.each do |model| 
      export += SeedDump.dump(model, exclude: [])
    end

    export += "
  end
end"

    send_data export, type: 'text', filename: '29999999999998_initialize_matchs_datas.rb'
  end
end
