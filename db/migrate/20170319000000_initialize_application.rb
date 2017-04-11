class InitializeApplication < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email_mask

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
      t.integer :goal
      t.integer :assist

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

    create_table :futsal_games do |t|
      t.datetime :date
      t.integer :duration
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
      t.integer :goal
      t.integer :assist

      t.timestamps
    end

    create_table :goals do |t|
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :goal_id
      t.integer :assist_id
      t.integer :time
      t.string :video_link

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

      t.timestamps
    end

    create_table :goal_marks do |t|
      t.references :goal, foreign_key: true
      t.integer :mark
      t.references :user, foreign_key: true
      t.string :mac_address

      t.timestamps
    end


  end
end