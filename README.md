# FUTSAL-PLANNER
[ ![Codeship Status for gcrochemore/futsal-planner](https://app.codeship.com/projects/e40dbf70-eed9-0134-a8e8-2ea516a13c91/status?branch=develop)](https://app.codeship.com/projects/208738)

##### Lancer les tests
	
	bundle exec rake

##### Generate

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

	
	rails generate scaffold Company name:string email_mask:string

	###### Devise
	rails generate devise:install :database_authenticatable :confirmable :recoverable :registerable :rememberable :trackable :validatable :lockable	
	rails generate devise User first_name:string last_name:string company:references goal:integer assist:integer
	rails generate cancan:ability
	rails generate rolify Role User
	rake db:migrate
	rails generate devise:views


	rails generate scaffold_controller Users first_name:string last_name:string company:references goal:integer assist:integer

	###### Entity
	rails generate scaffold team name:string company:references

	rails generate scaffold futsal_field name:string latitude:float longitude:float

	rails generate scaffold FutsalGame date:datetime duration:integer FutsalField:references team_home_id:integer team_outside_id:integer score_home:integer score_outside:integer video_link:string match_resume_link:string

	rails generate scaffold game_registration user:references futsal_game:references team:references goal:integer assist:integer

	rails generate scaffold Goal futsal_game:references team:references goal_id:integer assist_id:integer time:integer video_link:string

	rails generate scaffold highlight_type name:string icon:string

	rails generate scaffold highlight name:string highlight_type:references author_id:integer victim_id:integer time:integer futsal_game:references team:references

	rails generate scaffold goal_mark goal:references mark:integer user:references mac_address:string
	
	rails generate scaffold user_futsal_game_with_user user:references other_user_id:integer futsal_game:integer user_goal:integer user_assist:integer other_user_goal:integer other_user_assist:integer match_with:integer victory_with:integer draw_with:integer lose_with:integer match_against:integer victory_against:integer draw_against:integer lose_against:integer

	rails generate scaffold futsal_tournament date:datetime duration:integer futsal_field:references

	rails generate scaffold futsal_tournament_team_registration futsal_tournament:references team:references

	rails generate scaffold futsal_tournament_player_registration futsal_tournament:references team:references user:references

	rails generate scaffold futsal_position name:string abbreviation:string

	rails generate scaffold futsal_game_player_position game_registration:references futsal_position:references begin_time:interger end_time:integer duration:integer

	rails generate scaffold futsal_game_player_position_change futsal_position:references time:integer game_registration_player_in:integer game_registration_player_out:integer

	rails generate scaffold futsal_game_invitation futsal_game:references user:references send_date:datetime status:integer game_registration:references

	rails generate scaffold futsal_trophy name:string points:float description:string

	rails generate scaffold user_futsal_trophy user:references futsal_trophy:references linked_entity:references{polymorphic}

	rails generate scaffold nationality name:string abbreviation:string picture:string

    ###### Entity a créer	
	

    ###### Entity a modifier
	

##### heroku

	heroku login
	heroku apps -> liste des apps
	heroku run rake db:migrate --app futsal-planner-dev
	heroku run rake db:seed --app futsal-planner-dev
	heroku logs --tail --app futsal-planner-dev

	heroku run rake db:reset --app futsal-planner-dev

	heroku run rails console --app futsal-planner-dev

##### Database
	
	rake db:seed:dump EXCLUDE=[]

##### Docker
	
	Se placer dans le repertoire .docker
	
	docker-compose run futsal-planner bundle install
	docker-compose up -d
	docker-compose run futsal-planner rake db:create
	docker-compose run futsal-planner rake db:migrate

##### TODO

	Trophées, système de points avec niveau suivant les trophées obtenus 

	Trophée : 
	- Dispute un match : 5 pts
	- Dispute un match sans stats : 10 pts
	- Gagne un match : 10 pts
	- Match nul : 5 pts

	- Marque un but : 1 pts
	- Fais une passe dé : 2 pts
	- Homme du match : 10 pts
	- Double double (5 buts/5 passes dé): 20 pts

	- Blessure : -5pts