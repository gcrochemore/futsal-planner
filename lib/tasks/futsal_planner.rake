namespace :futsal_planner do
  desc "TODO"
  task backup_db: :environment do
    models = [FutsalField, FutsalTournament, FutsalGame]
    file_path = "db/migrate/29999999999991_initialize_matchs_data_1.rb"
    class_name = "InitializeMatchsData1"
    Rake::Task["futsal_planner:backup_model_in_file"].invoke(models, file_path, class_name)
    Rake::Task["futsal_planner:backup_model_in_file"].reenable


    models = [Goal, GoalMark]
    file_path = "db/migrate/29999999999992_initialize_matchs_data_2.rb"
    class_name = "InitializeMatchsData2"
    Rake::Task["futsal_planner:backup_model_in_file"].invoke(models, file_path, class_name)
    Rake::Task["futsal_planner:backup_model_in_file"].reenable


    models = [GameRegistration, FutsalGamePlayerPositionChange,
              FutsalGamePlayerPosition, HighlightType, Highlight, FutsalTournamentPlayerRegistration,
              FutsalTournamentTeamRegistration, FutsalGameInvitation, FutsalTrophy, UserFutsalTrophy]
    file_path = "db/migrate/29999999999993_initialize_matchs_data_3.rb"
    class_name = "InitializeMatchsData3"
    Rake::Task["futsal_planner:backup_model_in_file"].invoke(models, file_path, class_name)
  end

  desc "TODO"
  task :backup_model_in_file, [:models, :file_path, :class_name] => [:environment] do |task, args|
    export = "class " + args[:class_name] + " < ActiveRecord::Migration[5.0]
  def change
"

    args[:models].each do |model| 
      export += SeedDump.dump(model, exclude: [])
    end

    export += "
  end
end"

    path = args[:file_path]
    File.open(path, "w+") do |f|
      f.write(export)
    end
  end

  desc "TODO"
  task :change_player, [:futsal_game_id, :player_out_id, :player_in_id] => [:environment] do |task, args|
    if args[:futsal_game_id]
      futsal_game = FutsalGame.find(args[:futsal_game_id])
      if args[:player_out_id]
        if futsal_game.has_player_registration(args[:player_out_id])
          if args[:player_in_id] && User.find(args[:player_in_id])
            futsal_game.change_player(args[:player_out_id], args[:player_in_id])
          else
            puts "Error ! player_in_id is missing" 
          end
        else
          puts "Error ! player_out not in match" 
        end  
      else
        puts "Error ! player_out_id is missing" 
      end
    else
      puts "Error ! futsal_game_id is missing" 
    end
  end  

  desc "TODO"
  task calculate_data: :environment do
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

end
