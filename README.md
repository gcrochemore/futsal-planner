# ORTHO-PLANNER
[ ![Codeship Status for gcrochemore/futsal-planner](https://app.codeship.com/projects/e40dbf70-eed9-0134-a8e8-2ea516a13c91/status?branch=master)](https://app.codeship.com/projects/208738)

##### Generate entity

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

	
	rails generate scaffold Company name:string email_mask:string


	rails generate devise:install :database_authenticatable :confirmable :recoverable :registerable :rememberable :trackable :validatable :lockable	
	rails generate devise User first_name:string last_name:string company:references
	rails generate cancan:ability
	rails generate rolify Role User
	rake db:migrate
	rails generate devise:views

	rails generate scaffold Team name:string company:references

	rails generate scaffold FutsalField name:string latitude:float longitude:float

	rails generate scaffold FutsalGame date:datetime duration:integer team_home_id:integer team_outside_id:integer score_home:integer score_outside:integer

	rails generate scaffold GameRegistration user:references fustal_game:references team:references