# FUTSAL-PLANNER
[ ![Codeship Status for gcrochemore/futsal-planner](https://app.codeship.com/projects/e40dbf70-eed9-0134-a8e8-2ea516a13c91/status?branch=master)](https://app.codeship.com/projects/208738)

##### Lancer les tests
	
	bundle exec rake

##### Generate

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

	
	rails generate scaffold Company name:string email_mask:string

	###### Devise
	rails generate devise:install :database_authenticatable :confirmable :recoverable :registerable :rememberable :trackable :validatable :lockable	
	rails generate devise User first_name:string last_name:string company:references
	rails generate cancan:ability
	rails generate rolify Role User
	rake db:migrate
	rails generate devise:views


	rails generate scaffold_controller Users first_name:string last_name:string company:references

	###### Entity
	rails generate scaffold Team name:string company:references

	rails generate scaffold FutsalField name:string latitude:float longitude:float

	rails generate scaffold FutsalGame date:datetime duration:integer FutsalField:references team_home_id:integer team_outside_id:integer score_home:integer score_outside:integer video_link:string match_resume_link:string

	rails generate scaffold GameRegistration user:references futsal_game:references team:references

	rails generate scaffold Goal futsal_game:references team:references goal_id:integer assist_id:integer time:integer video_link:string


	###### Entity a créer
	

	###### Entity a modifier
	

##### heroku

	heroku login
	heroku apps -> liste des apps
	heroku run rake db:migrate --app futsal-planner-dev
	heroku logs --tail --app futsal-planner-dev

	heroku run rake db:reset --app futsal-planner-dev

	heroku run rails console --app futsal-planner-dev

##### Database
	
	rake db:seed:dump EXCLUDE=[]