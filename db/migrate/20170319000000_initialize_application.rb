class InitializeApplication < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email_mask
      ##Photo
      t.string :picture

      t.timestamps
    end

    create_table :futsal_positions do |t|
      t.string :name
      t.string :abbreviation
      t.float :average_goal_multiplier 
      t.float :average_assist_multiplier
      t.float :average_goal_against_multiplier

      t.timestamps
    end

    create_table :nationalities do |t|
      t.string :name
      t.string :abbreviation
      t.string :picture

      t.timestamps
    end

    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      t.string :first_name
      t.string :last_name
      t.references :company
      t.references :futsal_position
      t.references :nationality, default: 1

      ## Oauth - Facebook
      t.string :facebook_provider
      t.string :facebook_uid

      ##Photo
      t.string :picture

      ## Statistiques
      t.integer :endurance, default: 5
      t.integer :strength, default: 5
      t.integer :speed, default: 5
      t.integer :coordination, default: 5
      t.integer :flexibility, default: 5
      t.integer :tactic, default: 5

      t.integer :goal
      t.integer :own_goal
      t.integer :goal_with_assist
      t.integer :goal_without_assist
      t.integer :assist
      t.float :match
      t.integer :match_time
      t.float :match_with_stats
      t.integer :match_with_stats_time

      t.integer :goalkeeper_duration
      t.integer :player_duration
      t.integer :substitute_duration
      t.integer :goalkeeper_goal_against
      t.float :goalkeeper_goal_against_average

      t.integer :match_goal_for
      t.integer :match_goal_against
      t.integer :match_goal_difference
      t.float :goal_average_by_match
      t.float :own_goal_average_by_match
      t.float :goal_percent_by_match
      t.float :assist_average_by_match
      t.float :assist_percent_by_match
      t.string :games_results
      t.integer :victory
      t.integer :draw
      t.integer :lose
      t.float :victory_percentage
      t.string :last_result
      t.float :goal_mark
      t.float :assist_mark
      t.float :victory_mark
      t.float :last_matchs_rating, default: 65
      t.float :rating, default: 65
      t.float :average_match_rating, default: 65
      t.float :average_rating, default: 65

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    add_index :users, :unlock_token,         unique: true
  

    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:users_roles, [ :user_id, :role_id ])

    create_table :teams do |t|
      t.string :name
      t.references :company, foreign_key: true

      t.timestamps
    end

    create_table :futsal_fields do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    create_table :futsal_tournaments do |t|
      t.string :name
      t.datetime :date
      t.integer :duration
      t.references :futsal_field, foreign_key: true

      ## Statistiques
      t.integer :winner_id
      t.integer :best_goalkeeper_id
      t.integer :best_scorer_id
      t.integer :best_passer_id
      t.integer :best_goal_id
      t.integer :more_substitute_id
      t.integer :more_player_id
      t.integer :bigger_fault_id
      t.integer :best_injury_id
      t.integer :more_fair_play_id

      t.timestamps
    end

    create_table :futsal_tournament_team_registrations do |t|
      t.references :futsal_tournament, foreign_key: true, index: {:name => "futsal_tournament_on_team_registrations"}
      t.references :team, foreign_key: true

      ## Statistiques
      t.integer :ranking

      t.integer :match_goal_for
      t.integer :match_goal_against
      t.integer :match_goal_difference
      t.integer :points
      t.integer :victory
      t.integer :draw
      t.integer :lose

      t.timestamps
    end

    create_table :futsal_tournament_player_registrations do |t|
      t.references :futsal_tournament, foreign_key: true, index: {:name => "futsal_tournament_on_player_registrations"}
      t.references :team, foreign_key: true
      t.references :user, foreign_key: true

      ## Statistiques
      t.integer :goal
      t.integer :goal_with_assist
      t.integer :goal_without_assist
      t.integer :assist
      t.integer :goalkeeper_duration
      t.integer :player_duration
      t.integer :substitute_duration
      t.integer :goalkeeper_goal_against
      t.float :goalkeeper_goal_against_average

      t.timestamps
    end

    create_table :futsal_games do |t|
      t.datetime :date
      t.integer :duration
      t.references :futsal_tournament, foreign_key: true
      t.references :futsal_field, foreign_key: true
      t.integer :team_home_id
      t.integer :team_outside_id
      t.integer :score_home
      t.integer :score_outside
      t.string :video_link
      t.string :match_resume_link

      t.timestamps
    end

     create_table :game_registrations do |t|
      t.references :user, foreign_key: true
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true

      ## Statistiques
      t.integer :goal
      t.integer :goal_with_assist
      t.integer :goal_without_assist
      t.integer :assist
      t.integer :goalkeeper_duration
      t.integer :player_duration
      t.integer :substitute_duration
      t.integer :goalkeeper_goal_against

      t.float :match_result, default: 0

      t.integer :rating

      t.timestamps
    end

    create_table :goals do |t|
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :goal_id
      t.integer :assist_id
      t.integer :goalkeeper_id
      t.integer :time
      t.string :video_link
      t.integer :views_number
      t.float :average_mark
      t.boolean :own_goal, default: false
      t.string :picture, default: nil

      t.timestamps
    end

    create_table :futsal_game_player_position_changes do |t|
      t.references :futsal_position, foreign_key: true, index: {:name => "futsal_position_on_futsal_game_player_position_changes"}
      t.integer :time
      t.integer :game_registration_player_in_id
      t.integer :game_registration_player_out_id
      t.boolean :calculated, default: false

      t.timestamps
    end

    create_table :futsal_game_player_positions do |t|
      t.references :game_registration, foreign_key: true
      t.references :futsal_position, foreign_key: true
      t.integer :begin_time
      t.integer :end_time
      t.integer :duration
      t.boolean :calculated, default: false

      t.timestamps
    end

    create_table :highlight_types do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end

    create_table :highlights do |t|
      t.string :name
      t.references :highlight_type, foreign_key: true
      t.integer :author_id
      t.integer :victim_id
      t.integer :time
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true
      t.string :picture, default: nil

      t.timestamps
    end

    create_table :goal_marks do |t|
      t.references :goal, foreign_key: true
      t.integer :mark
      t.references :user, foreign_key: true
      t.string :mac_address

      t.timestamps
    end

    create_table :user_futsal_game_with_users do |t|
      t.references :user, foreign_key: true
      t.integer :other_user_id
      t.integer :futsal_game
      t.integer :user_goal
      t.integer :user_assist
      t.integer :other_user_goal
      t.integer :other_user_assist
      t.integer :match_with
      t.integer :victory_with
      t.integer :draw_with
      t.integer :lose_with
      t.integer :match_against
      t.integer :victory_against
      t.integer :draw_against
      t.integer :lose_against

      t.timestamps
    end

    create_table :futsal_game_invitations do |t|
      t.references :futsal_game, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :send_date
      t.integer :status
      t.references :game_registration, foreign_key: true

      t.timestamps
    end

    create_table :futsal_trophies do |t|
      t.string :name
      t.float :points
      t.string :description

      t.timestamps
    end

    create_table :user_futsal_trophies do |t|
      t.references :user, foreign_key: true
      t.references :futsal_trophy, foreign_key: true
      t.references :linked_entity, polymorphic: true, index: {:name => "index_user_futsal_trophies_on_linked_entity"}
      t.datetime :validation_date

      t.timestamps
    end
  end
end